#!/bin/bash
# ZOLO-A6-9VxNUNA Website Launch Script
# Launch local development server for testing

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}╔════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║      ZOLO-A6-9VxNUNA Website Launch Script            ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════╝${NC}"
echo ""

# Get script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Check current branch safely (git may be missing or not a repo)
set +e
if command -v git >/dev/null 2>&1 && git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    CURRENT_BRANCH=$(git branch --show-current 2>/dev/null)
else
    CURRENT_BRANCH="N/A"
    echo -e "${YELLOW}⚠️  Git not available or not a Git repository. Branch information will be skipped.${NC}"
fi
set -e
echo -e "${YELLOW}📍 Current Branch:${NC} $CURRENT_BRANCH"
echo ""

# Branch information
if [ "$CURRENT_BRANCH" = "main" ]; then
    echo -e "${GREEN}✅ On MAIN branch - Production preview${NC}"
    echo -e "${BLUE}   This will show the production-ready version${NC}"
elif [[ "$CURRENT_BRANCH" == "copilot/"* ]]; then
    echo -e "${YELLOW}🔧 On feature branch - Development testing${NC}"
    echo -e "${BLUE}   Testing branch-specific changes${NC}"
else
    echo -e "${YELLOW}⚠️  On branch: $CURRENT_BRANCH${NC}"
    echo -e "${BLUE}   Testing feature branch changes${NC}"
fi
echo ""

# Port configuration
DEFAULT_PORT=8000
PORT=${1:-$DEFAULT_PORT}

# Check if port is in use
if lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null 2>&1; then
    echo -e "${YELLOW}⚠️  Port $PORT is already in use${NC}"
    echo -e "${BLUE}   Trying alternative port 8080...${NC}"
    PORT=8080

    if lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null 2>&1; then
        echo -e "${RED}❌ Port $PORT is also in use${NC}"
        echo ""
        echo "Please specify a different port:"
        echo "  ./launch-website.sh 8888"
        exit 1
    fi
fi

# Check for Python
if command -v python3 &> /dev/null; then
    PYTHON_CMD=python3
elif command -v python &> /dev/null; then
    PYTHON_CMD=python
else
    echo -e "${RED}❌ Python not found${NC}"
    echo "Please install Python to run the development server"
    exit 1
fi

echo -e "${GREEN}🚀 Starting development server...${NC}"
echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}   Server Running!${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${YELLOW}   Local URL:${NC}     http://localhost:$PORT/"
echo -e "${YELLOW}   Network:${NC}       Disabled (Security Restriction)"
echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${GREEN}📝 Testing Checklist:${NC}"
echo "   • Homepage loads correctly"
echo "   • Navigation works"
echo "   • All sections visible"
echo "   • CSS/JS working"
echo "   • No console errors"
echo ""
echo -e "${YELLOW}Press Ctrl+C to stop the server${NC}"
echo ""

# Start the server (Secure Mode)
$PYTHON_CMD scripts/secure_server.py $PORT

echo ""
echo -e "${GREEN}✅ Server stopped${NC}"
