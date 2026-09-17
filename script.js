document.addEventListener('DOMContentLoaded', () => {
    // Mobile menu toggle
    const menuToggle = document.querySelector('.mobile-menu-toggle');
    const mainNav = document.querySelector('.main-nav-links');
    
    if (menuToggle && mainNav) {
        menuToggle.addEventListener('click', () => {
            const isExpanded = menuToggle.getAttribute('aria-expanded') === 'true';
            menuToggle.setAttribute('aria-expanded', !isExpanded);
            mainNav.classList.toggle('is-open');
        });
    }

    // Scroll Reveal
    const observerOptions = {
        root: null,
        rootMargin: '0px',
        threshold: 0.1
    };

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('active');
                observer.unobserve(entry.target); // Stop observing once revealed
            }
        });
    }, observerOptions);

    document.querySelectorAll('.reveal').forEach(el => {
        observer.observe(el);
    });

    // FAQ Accordion
    const faqQuestions = document.querySelectorAll('.faq-q');
    faqQuestions.forEach(q => {
        q.addEventListener('click', () => {
            const isExpanded = q.getAttribute('aria-expanded') === 'true';
            
            // Close others (optional, keeps it clean)
            faqQuestions.forEach(otherQ => {
                otherQ.setAttribute('aria-expanded', 'false');
                otherQ.nextElementSibling.classList.remove('is-open');
            });

            if (!isExpanded) {
                q.setAttribute('aria-expanded', 'true');
                q.nextElementSibling.classList.add('is-open');
            }
        });
    });
});
