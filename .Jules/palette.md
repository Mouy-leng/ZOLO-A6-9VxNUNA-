## 2026-01-30 - [Icon-Only Button Accessibility]
**Learning:** The application uses icon-only buttons (like copy buttons) without ARIA labels, making them inaccessible to screen readers.
**Action:** Always verify icon-only buttons have `aria-label` and add tooltips for better UX.

## 2026-01-31 - [Performance-First UI Interactions]
**Learning:** This codebase explicitly documents "Bolt Optimization" patterns (IntersectionObserver, requestAnimationFrame) to prevent layout thrashing and scroll jank.
**Action:** Any scroll-based interaction (like "Back to Top") must use `requestAnimationFrame` and `IntersectionObserver` instead of raw scroll listeners to maintain performance standards.
