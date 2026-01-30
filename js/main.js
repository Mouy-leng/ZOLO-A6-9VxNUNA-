/**
 * ZOLO-A6-9VxNUNA Website JavaScript
 * A6-9V Organization - 2025
 */

// DOM Ready
document.addEventListener('DOMContentLoaded', () => {
    initNavigation();
    initScrollEffects();
    initAnimations();
    initCopyButtons();
});

/**
 * Navigation functionality
 */
function initNavigation() {
    const navToggle = document.querySelector('.nav-toggle');
    const navLinks = document.querySelector('.nav-links');
    // Performance: Cache the navbar element to avoid repeated DOM queries.
    // This query is now performed only once during initialization, making
    // subsequent smooth scroll clicks more efficient.
    const navbar = document.querySelector('.navbar');
    
    if (navToggle && navLinks) {
        navToggle.addEventListener('click', () => {
            navLinks.classList.toggle('active');
            navToggle.classList.toggle('active');
        });
        
        // Close menu on link click
        navLinks.querySelectorAll('.nav-link').forEach(link => {
            link.addEventListener('click', () => {
                navLinks.classList.remove('active');
                navToggle.classList.remove('active');
            });
        });
    }
    
    // Smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;
            
            const target = document.querySelector(targetId);
            if (target && navbar) {
                e.preventDefault();
                const navHeight = navbar.offsetHeight;
                const targetPosition = target.offsetTop - navHeight - 20;
                
                window.scrollTo({
                    top: targetPosition,
                    behavior: 'smooth'
                });
            }
        });
    });
}

/**
 * Scroll effects
 */
function initScrollEffects() {
    const navbar = document.querySelector('.navbar');
    if (!navbar) return;

    // ⚡ Bolt Optimization: Use IntersectionObserver instead of scroll event listener.
    // This removes the need to poll scroll position on the main thread,
    // reducing layout thrashing and improving scrolling performance.

    // Create a sentinel element to trigger the observer
    const sentinel = document.createElement('div');
    sentinel.style.position = 'absolute';
    sentinel.style.top = '50px'; // Trigger point matching the original 50px threshold
    sentinel.style.left = '0';
    sentinel.style.width = '100%';
    sentinel.style.height = '1px';
    sentinel.style.pointerEvents = 'none';
    sentinel.style.visibility = 'hidden';
    // Ensure sentinel doesn't cause scrollbar
    sentinel.style.overflow = 'hidden';
    document.body.appendChild(sentinel);

    const observer = new IntersectionObserver((entries) => {
        const entry = entries[0];
        // If the sentinel is not intersecting and is above the viewport,
        // it means we have scrolled past the trigger point.
        if (!entry.isIntersecting && entry.boundingClientRect.top < 0) {
            navbar.classList.add('scrolled');
        } else {
            navbar.classList.remove('scrolled');
        }
    });

    observer.observe(sentinel);
}

/**
 * Intersection Observer for animations
 */
function initAnimations() {
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };
    
    // ⚡ Bolt Optimization: Use requestAnimationFrame to schedule animations.
    // This ensures that animations are processed only when the browser is ready
    // to paint a new frame, preventing jank and improving smoothness.
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                requestAnimationFrame(() => {
                    entry.target.classList.add('animate-in');
                });
                observer.unobserve(entry.target);
            }
        });
    }, observerOptions);
    
    // Observe elements
    const animateElements = document.querySelectorAll(
        '.feature-card, .system-card, .doc-card, .step, .arch-layer'
    );
    
    animateElements.forEach((el, index) => {
        // ⚡ Bolt Optimization: Use a class to set initial animation state.
        // This is more performant than setting inline styles directly, as it
        // avoids triggering unnecessary style recalculations by the browser.
        el.classList.add('animation-prepare');
        // ⚡ Bolt Optimization: Set a CSS custom property for the animation order.
        // This is more performant than setting `transitionDelay` directly, as it
        // offloads the animation timing to the CSS rendering engine.
        el.style.setProperty('--animation-order', index);
        observer.observe(el);
    });
    
}

/**
 * Copy to clipboard functionality
 */
function initCopyButtons() {
    const copyButtons = document.querySelectorAll('.copy-btn');

    const copyCode = (btn) => {
        const codeBlock = btn.closest('.code-block');
        const code = codeBlock.querySelector('code').textContent;

        navigator.clipboard.writeText(code).then(() => {
            // Show feedback
            const originalHTML = btn.innerHTML;
            btn.innerHTML = `<svg width="16" height="16"><use href="#check"></use></svg>`;
            btn.style.color = 'var(--primary)';
            btn.setAttribute('data-tooltip', 'Copied!');
            btn.setAttribute('aria-label', 'Copied to clipboard');

            setTimeout(() => {
                btn.innerHTML = originalHTML;
                btn.style.color = '';
                btn.setAttribute('data-tooltip', 'Copy to clipboard');
                btn.setAttribute('aria-label', 'Copy to clipboard');
            }, 2000);
        }).catch(err => {
            console.error('Failed to copy:', err);
        });
    };

    copyButtons.forEach(btn => {
        btn.addEventListener('click', () => copyCode(btn));
    });
}

// Console branding
console.log(`
%c⚡ ZOLO-A6-9VxNUNA %c
AI-Powered Trading & Automation Platform
https://github.com/Mouy-leng/ZOLO-A6-9VxNUNA-

© 2025 A6-9V Organization
`, 'color: #00ff88; font-size: 20px; font-weight: bold;', 'color: #8b949e;');
