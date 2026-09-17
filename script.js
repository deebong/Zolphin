document.addEventListener('DOMContentLoaded', () => {

    // 1. Mobile Menu Toggle
    const menuToggle = document.querySelector('.mobile-menu-toggle');
    const navLinks = document.querySelector('.main-nav-links');
    if (menuToggle && navLinks) {
        menuToggle.addEventListener('click', () => {
            const isOpen = navLinks.classList.contains('is-open');
            navLinks.classList.toggle('is-open');
            menuToggle.setAttribute('aria-expanded', !isOpen);
        });

        // Close menu on link click
        navLinks.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                navLinks.classList.remove('is-open');
                menuToggle.setAttribute('aria-expanded', 'false');
            });
        });
    }

    // 2. Smooth Scrolling for Anchors
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;
            const target = document.querySelector(targetId);
            if (target) {
                e.preventDefault();
                const offset = 90; // account for fixed nav
                const targetPos = target.getBoundingClientRect().top + window.scrollY - offset;
                window.scrollTo({
                    top: targetPos,
                    behavior: 'smooth'
                });
            }
        });
    });

    // 3. Scroll Reveal Animation
    const revealElements = document.querySelectorAll('.reveal');
    const prefersReducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    
    const revealObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('active');
                if (entry.target.classList.contains('workflow-grid')) {
                    const line = document.querySelector('.workflow-line');
                    if (line) line.style.width = '100%';
                }
                
                // If it's a stagger container, apply delays to children
                if (entry.target.classList.contains('reveal-stagger')) {
                    const children = Array.from(entry.target.children);
                    children.forEach((child, index) => {
                        // Base delay of 150ms + 80ms per child
                        child.style.transitionDelay = (150 + (index * 80)) + 'ms';
                        child.classList.add('active');
                    });
                }
                observer.unobserve(entry.target);
            }
        });
    }, { rootMargin: '0px 0px -10% 0px', threshold: 0.1 });

    if (!prefersReducedMotion) {
        revealElements.forEach(el => revealObserver.observe(el));
    } else {
        revealElements.forEach(el => el.classList.add('active'));
    }

    // 4. Consulting Timeline Animation
    const timeline = document.getElementById('timeline');
    const timelineProgress = document.getElementById('timeline-progress');
    const timelineSteps = document.querySelectorAll('.timeline-step');
    
    if (timeline && !prefersReducedMotion) {
        const timelineObserver = new IntersectionObserver((entries) => {
            if (entries[0].isIntersecting) {
                // Determine orientation for progress bar animation
                if (window.innerWidth <= 768) {
                    timelineProgress.style.height = '100%';
                const dot = timelineProgress.querySelector('.timeline-dot');
                if (dot) dot.style.opacity = '1';
                } else {
                    timelineProgress.style.width = '100%';
                const dot = timelineProgress.querySelector('.timeline-dot');
                if (dot) dot.style.opacity = '1';
                }
                
                timelineSteps.forEach((step, index) => {
                    setTimeout(() => {
                        step.classList.add('active');
                    }, 200 + (index * 300));
                });
                timelineObserver.disconnect();
            }
        }, { threshold: 0.5 });
        timelineObserver.observe(timeline);
    } else if (timeline && prefersReducedMotion) {
        timelineProgress.style.width = '100%';
        timelineProgress.style.height = '100%';
        timelineSteps.forEach(step => step.classList.add('active'));
    }

    // 5. FAQ Accordion
    const faqButtons = document.querySelectorAll('.faq-q');
    faqButtons.forEach(btn => {
        btn.addEventListener('click', () => {
            const expanded = btn.getAttribute('aria-expanded') === 'true';
            
            // Close others (optional)
            faqButtons.forEach(otherBtn => {
                if (otherBtn !== btn) {
                    otherBtn.setAttribute('aria-expanded', 'false');
                    otherBtn.nextElementSibling.classList.remove('is-open');
                }
            });

            btn.setAttribute('aria-expanded', !expanded);
            if (!expanded) {
                btn.nextElementSibling.classList.add('is-open');
            } else {
                btn.nextElementSibling.classList.remove('is-open');
            }
        });
    });

    // 6. Lightbox for Original Architecture
    const lightbox = document.getElementById('lightbox');
    const openLightboxBtn = document.getElementById('open-lightbox');
    const closeLightboxBtn = document.getElementById('close-lightbox');
    const overlay = document.querySelector('.lightbox-overlay');

    const openLightbox = () => {
        lightbox.classList.add('is-open');
        lightbox.setAttribute('aria-hidden', 'false');
        document.body.style.overflow = 'hidden';
    };

    const closeLightbox = () => {
        lightbox.classList.remove('is-open');
        lightbox.setAttribute('aria-hidden', 'true');
        document.body.style.overflow = '';
    };

    if (openLightboxBtn) openLightboxBtn.addEventListener('click', openLightbox);
    if (closeLightboxBtn) closeLightboxBtn.addEventListener('click', closeLightbox);
    if (overlay) overlay.addEventListener('click', closeLightbox);
    
    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape' && lightbox && lightbox.classList.contains('is-open')) {
            closeLightbox();
        }
    });

    // 7. Interactive SVG Architecture Hover Effects
    const svgNodes = document.querySelectorAll('.svg-node');
    const tooltip = document.getElementById('diagram-tooltip');
    const ttCat = document.getElementById('tt-cat');
    const ttTitle = document.getElementById('tt-title');
    const ttDesc = document.getElementById('tt-desc');
    const diagramContainer = document.getElementById('diagram-container');

    // Define related paths and zones for each node
    const nodeRelations = {
        'node-internet': ['.path-internet'],
        'node-agw': ['.path-internet', '.path-ingress'],
        'node-firewall': ['.path-ingress', '.path-workload', '.path-onprem', '#zone-hub'],
        'node-dns': ['#zone-hub'],
        'node-onprem': ['.path-onprem'],
        'node-entra': ['.path-entra'],
        'node-dev-app': ['.path-workload', '.path-db', '.path-entra', '.path-mon', '#zone-dev'],
        'node-dev-db': ['.path-db', '.path-mon', '#zone-dev'],
        'node-stage-app': ['.path-workload', '.path-db', '.path-entra', '.path-mon', '#zone-stage'],
        'node-stage-db': ['.path-db', '.path-mon', '#zone-stage'],
        'node-prod-app': ['.path-workload', '.path-db', '.path-entra', '.path-mon', '#zone-prod'],
        'node-prod-db': ['.path-db', '.path-mon', '#zone-prod'],
        'node-mon': ['.path-mon']
    };

    svgNodes.forEach(node => {
        const handleActivate = (e) => {
            if (prefersReducedMotion && e.type !== 'focus') return; 
            
            diagramContainer.classList.add('has-hover');
            node.classList.add('hovered');

            // Show Tooltip
            const cat = node.getAttribute('data-cat');
            const title = node.getAttribute('data-title');
            const desc = node.getAttribute('data-desc');

            if (title && desc) {
                if(ttCat) ttCat.textContent = cat || 'COMPONENT';
                if(ttTitle) ttTitle.textContent = title;
                if(ttDesc) ttDesc.textContent = desc;
                tooltip.classList.add('visible');
                
                // Position tooltip relative to container
                const rect = node.getBoundingClientRect();
                const containerRect = diagramContainer.getBoundingClientRect();
                const x = rect.left - containerRect.left + (rect.width / 2) + diagramContainer.scrollLeft;
                const y = rect.top - containerRect.top;
                
                tooltip.style.left = `${x}px`;
                tooltip.style.top = `${y}px`;
            }

            // Highlight Paths and Zones
            const relations = nodeRelations[node.id];
            if (relations) {
                relations.forEach(selector => {
                    document.querySelectorAll(selector).forEach(el => {
                        if (el.tagName === 'rect' || el.tagName === 'circle') {
                            el.classList.add('active-zone');
                            el.style.opacity = '1';
                        } else {
                            el.classList.add('active');
                        }
                    });
                });
            }
        };

        const handleDeactivate = () => {
            diagramContainer.classList.remove('has-hover');
            node.classList.remove('hovered');
            tooltip.classList.remove('visible');
            
            // Remove Highlights
            document.querySelectorAll('.svg-path').forEach(p => p.classList.remove('active'));
            document.querySelectorAll('.arch-zone').forEach(z => {
                z.classList.remove('active-zone');
                z.style.opacity = '';
            });
        };

        node.addEventListener('mouseenter', handleActivate);
        node.addEventListener('mouseleave', handleDeactivate);
        node.addEventListener('focus', handleActivate);
        node.addEventListener('blur', handleDeactivate);
    });

});
