import http.server
import socketserver
import sys
import os

class SecureHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        # Remove query parameters and fragments for checking
        clean_path = self.path.split('?')[0].split('#')[0]

        # Check for hidden files/directories (starting with .)
        parts = clean_path.split('/')
        for part in parts:
             # Block anything starting with . except current/parent dir markers
             if part.startswith('.') and part not in ('', '.', '..'):
                 self.send_error(403, "Access Denied: Hidden files are protected")
                 return

        # Block sensitive file types
        sensitive_extensions = ('.ps1', '.bat', '.cmd', '.sh', '.py', '.md', '.config', '.env')
        if clean_path.lower().endswith(sensitive_extensions):
             self.send_error(403, "Access Denied: File type not allowed")
             return

        # Block specific sensitive files
        sensitive_files = ('package.json', 'package-lock.json', 'pnpm-lock.yaml', 'yarn.lock')
        if os.path.basename(clean_path).lower() in sensitive_files:
             self.send_error(403, "Access Denied: Sensitive file")
             return

        super().do_GET()

if __name__ == "__main__":
    if len(sys.argv) > 1:
        try:
            port = int(sys.argv[1])
        except ValueError:
            port = 8000
    else:
        port = 8000

    # Bind strictly to localhost
    address = "127.0.0.1"

    print(f"Starting Secure Local Server on http://{address}:{port}")
    print("Security: Network access disabled. Hidden files protected.")

    try:
        # Allow reuse address to avoid "Address already in use" errors on restart
        socketserver.TCPServer.allow_reuse_address = True
        with socketserver.TCPServer((address, port), SecureHandler) as httpd:
            try:
                httpd.serve_forever()
            except KeyboardInterrupt:
                print("\nServer stopped.")
                sys.exit(0)
    except OSError as e:
        print(f"Error: Could not start server on port {port}: {e}")
        sys.exit(1)
