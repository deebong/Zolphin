const fs = require('fs');

let css = fs.readFileSync('styles.css', 'utf8');

// Update typography variables
css = css.replace(/--font-body:.*?;/, "--font-body: 'Inter', system-ui, -apple-system, sans-serif;");
css = css.replace(/--font-display:.*?;/, "--font-display: 'Barlow Condensed', 'Arial Narrow', sans-serif;");

// Update h1, h2, h3, eyebrow, p, subtitle
css = css.replace(/h1 \{.*?\}/, 'h1 { font-family: var(--font-display); font-size: clamp(3rem, 6vw, 4.75rem); margin-bottom: 1.5rem; font-weight: 700; text-transform: uppercase; line-height: 1.0; letter-spacing: -0.02em; max-width: 1050px; margin-left: auto; margin-right: auto; }');
css = css.replace(/h2 \{.*?\}/, 'h2 { font-family: var(--font-display); font-size: clamp(2.1rem, 4vw, 3.6rem); margin-bottom: 2rem; font-weight: 600; text-transform: uppercase; line-height: 1.0; letter-spacing: -0.02em; }');
// Make sure .font-display uses weight 700 as well
css = css.replace(/\.font-display \{.*?\}/, '.font-display { font-family: var(--font-display); line-height: 1.0; letter-spacing: -0.02em; text-transform: uppercase; font-weight: 700; }');

// Update body copy (p)
css = css.replace(/body \{([\s\S]*?)\}/, (match, bodyContent) => {
    return match.replace(/line-height:.*?;/, 'line-height: 1.6; font-size: 17px;');
});
css = css.replace(/p \{.*?\}/, 'p { margin-bottom: 1.5rem; font-size: 1.05rem; }');

// Update subtitle
css = css.replace(/\.subtitle \{([\s\S]*?)\}/, `.subtitle {
  font-size: clamp(1rem, 1.2vw, 1.125rem);
  color: var(--text-secondary);
  max-width: 700px;
  line-height: 1.65;
  margin-bottom: 2rem;
}`);

// Update eyebrow
css = css.replace(/\.eyebrow \{([\s\S]*?)\}/, `.eyebrow {
  font-family: var(--font-mono);
  font-size: 0.6875rem; /* 11px */
  text-transform: uppercase;
  letter-spacing: 0.14em;
  color: var(--text-secondary);
  display: block;
  margin-bottom: 1rem;
  font-weight: 600;
}`);

// Append new micro-interaction styles
css += `
/* ================== V4 MICRO-INTERACTIONS ================== */

/* Global Reveal & Stagger */
.reveal { opacity: 0; transform: translateY(20px); transition: opacity 0.6s cubic-bezier(0.16, 1, 0.3, 1), transform 0.6s cubic-bezier(0.16, 1, 0.3, 1); }
.reveal.active { opacity: 1; transform: translateY(0); }
@media (prefers-reduced-motion: reduce) {
  .reveal { opacity: 1; transform: none; transition: none; }
}

/* Base interactive class */
.interactive-card {
  transition: transform 0.3s cubic-bezier(0.16, 1, 0.3, 1), box-shadow 0.3s cubic-bezier(0.16, 1, 0.3, 1), border-color 0.3s cubic-bezier(0.16, 1, 0.3, 1);
}

/* Challenge Cards */
.challenge-card {
  position: relative;
  overflow: hidden;
  transition: transform 0.3s cubic-bezier(0.16, 1, 0.3, 1), border-color 0.3s cubic-bezier(0.16, 1, 0.3, 1), box-shadow 0.3s cubic-bezier(0.16, 1, 0.3, 1), background-color 0.3s ease;
}
.challenge-card::before {
  content: "";
  position: absolute;
  top: 0; left: 0; right: 0;
  height: 2px;
  background: var(--accent);
  transform: scaleX(0);
  transform-origin: left;
  transition: transform 0.3s cubic-bezier(0.16, 1, 0.3, 1);
}
.challenge-card:hover {
  transform: translateY(-4px);
  border-color: var(--border-light); /* subtly shift towards azure handled by pseudo element */
  box-shadow: var(--shadow-md);
}
.challenge-card:hover::before {
  transform: scaleX(1);
}
.challenge-card:hover .challenge-num {
  color: var(--accent);
}
.challenge-card:hover .challenge-header svg {
  transform: translateX(4px);
  color: var(--accent);
}
.challenge-card:hover p {
  color: var(--text-primary);
}
/* Spotlight effect for challenges */
.challenges-grid:hover .challenge-card:not(:hover) {
  /* don't dim, just normal state */
}

/* Architecture Cards */
.arch-card {
  position: relative;
  transition: transform 0.3s cubic-bezier(0.16, 1, 0.3, 1), border-color 0.3s cubic-bezier(0.16, 1, 0.3, 1), box-shadow 0.3s cubic-bezier(0.16, 1, 0.3, 1);
  overflow: hidden;
}
.arch-card::after {
  content: "";
  position: absolute;
  top: 0; left: 0;
  height: 2px;
  width: 30%;
  background: var(--accent);
  transform: scaleX(0);
  transform-origin: left;
  transition: transform 0.4s cubic-bezier(0.16, 1, 0.3, 1);
}
.arch-card:hover {
  transform: translateY(-5px);
  border-color: rgba(0, 120, 212, 0.3);
  box-shadow: var(--shadow-md);
}
.arch-card:hover::after {
  transform: scaleX(1);
}
.arch-card:hover h4 {
  color: var(--accent);
}
.arch-card:hover .arch-link svg {
  transform: translateX(5px);
}

/* Toolkit */
.deliverable-card {
  transition: border-color 0.3s ease, box-shadow 0.3s ease;
  position: relative;
}
.deliverable-card .deliv-icon-wrapper {
  transition: transform 0.3s ease, color 0.3s ease;
}
.deliverable-card:hover {
  border-color: var(--accent);
  box-shadow: var(--shadow-sm);
}
.deliverable-card:hover .deliv-icon-wrapper {
  transform: translateY(-2px);
  color: var(--accent);
}
.deliverable-card:hover h4 {
  transform: translateX(2px);
  transition: transform 0.3s ease;
}

/* Outcomes */
.outcome-item {
  position: relative;
  transition: transform 0.3s ease;
}
.outcome-item .accent-bar {
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  width: 2px;
  background: var(--accent);
  transform: scaleY(0);
  transform-origin: top;
  transition: transform 0.4s cubic-bezier(0.16, 1, 0.3, 1);
}
.outcome-item:hover .accent-bar {
  transform: scaleY(1);
}
.outcome-item:hover .outcome-icon {
  color: var(--accent);
}
.outcome-item:hover h4 {
  transform: translateX(2px);
  transition: transform 0.3s ease;
}
.outcome-item:hover p {
  color: var(--text-primary);
}

/* Workflow Rail */
.workflow-step {
  transition: all 0.3s ease;
  position: relative;
}
.workflow-step:hover .wf-icon {
  transform: scale(1.05);
  border-color: var(--accent);
}
.workflow-step:hover .wf-title {
  color: var(--accent);
}
.workflow-step:hover .wf-connector {
  background: var(--accent);
}

/* Profile / About */
.profile-list li {
  position: relative;
  transition: all 0.2s ease;
  padding-left: 1rem;
}
.profile-list li::before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  width: 2px;
  background: var(--accent);
  transform: scaleY(0);
  transform-origin: center;
  transition: transform 0.2s ease;
}
.profile-list li:hover {
  background: rgba(0, 120, 212, 0.03);
}
.profile-list li:hover::before {
  transform: scaleY(1);
}

/* Technology Stack */
.tech-category {
  transition: all 0.3s ease;
}
.tech-category:hover .tech-cat-icon {
  color: var(--accent);
}
.tech-category:hover h4 {
  color: var(--accent);
}
.tech-chip {
  transition: all 0.2s ease;
}
.tech-chip:hover {
  border-color: var(--accent);
  transform: translateY(-1px);
  color: var(--text-primary);
  background: rgba(0, 120, 212, 0.05);
}

/* Buttons */
.btn {
  transition: transform 0.2s cubic-bezier(0.16, 1, 0.3, 1), box-shadow 0.2s ease, background 0.2s ease, border-color 0.2s ease;
}
.btn:hover {
  transform: translateY(-1px);
}
.btn:active {
  transform: translateY(0);
}
.btn:focus-visible {
  outline: 2px solid var(--accent);
  outline-offset: 2px;
}
.btn svg {
  transition: transform 0.2s cubic-bezier(0.16, 1, 0.3, 1);
}
.btn:hover svg {
  transform: translateX(3px);
}

/* Timeline specific */
.timeline-step .ts-ring {
  transition: transform 0.3s ease;
}
.timeline-step:hover .ts-ring {
  transform: scale(1.1);
}
.timeline-step:hover .ts-core {
  background: var(--accent-light);
  color: var(--accent);
}
.timeline-step:hover .ts-title {
  color: var(--accent);
}

/* FAQ */
.faq-a {
  overflow: hidden;
  max-height: 0;
  transition: max-height 0.4s cubic-bezier(0.16, 1, 0.3, 1), padding 0.4s ease, opacity 0.4s ease;
  opacity: 0;
}
.faq-a.is-open {
  max-height: 300px; /* arbitrary large value */
  opacity: 1;
}
.faq-q:hover span {
  color: var(--accent);
}

/* Footer Links */
.footer-col ul li a {
  position: relative;
  display: inline-block;
}
.footer-col ul li a::after {
  content: "";
  position: absolute;
  left: 0;
  bottom: -2px;
  width: 100%;
  height: 1px;
  background: var(--accent);
  transform: scaleX(0);
  transform-origin: left;
  transition: transform 0.3s ease;
}
.footer-col ul li a:hover::after {
  transform: scaleX(1);
}

/* CTA Section */
.cta-box {
  position: relative;
}
.cta-box::before {
  content: "";
  position: absolute;
  inset: -1px;
  border-radius: inherit;
  padding: 1px;
  background: linear-gradient(90deg, transparent, var(--accent), transparent);
  -webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0);
  -webkit-mask-composite: xor;
  mask-composite: exclude;
  opacity: 0;
  transition: opacity 0.6s ease;
}
.cta-box.reveal.active::before {
  opacity: 0.5;
}

/* Adjust heading styles for display typography */
h3, h4, h5, .timeline-step .ts-title, .brand, .footer-brand, .wf-title {
  font-family: var(--font-display);
  letter-spacing: 0.02em;
}
`;

fs.writeFileSync('styles.css', css);

// ---------------------------------------------------------
// HTML processing
let html = fs.readFileSync('index.html', 'utf8');

// Replace eyebrows
html = html.replace(/<span class="eyebrow">HOW WE HELP<\/span>/, '<span class="eyebrow">01 / HOW WE HELP</span>');
html = html.replace(/<span class="eyebrow">COMMON CHALLENGES<\/span>/, '<span class="eyebrow">02 / COMMON AZURE CHALLENGES</span>');
html = html.replace(/<span class="eyebrow">PORTFOLIO<\/span>/, '<span class="eyebrow">03 / REFERENCE ARCHITECTURES</span>');
html = html.replace(/<span class="eyebrow">DELIVERABLES<\/span>/, '<span class="eyebrow">04 / CLIENT TOOLKIT</span>');
html = html.replace(/<span class="eyebrow">VALUE<\/span>/, '<span class="eyebrow">05 / ENGINEERING OUTCOMES</span>');
html = html.replace(/<span class="eyebrow">APPROACH<\/span>/, '<span class="eyebrow">06 / WORKFLOW</span>');
html = html.replace(/<span class="eyebrow">FAQ<\/span>/, '<span class="eyebrow">07 / FAQ</span>');

// Replace H1 class
html = html.replace(/<h1 class="font-display">/, '<h1 class="font-display">');

// Add inline icons for challenges (Architecture, Security, Cost, Migration, DevOps, AKS, Performance, Reliability)
const challengeIcons = {
  'ARCHITECTURE DEBT': '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="18" cy="18" r="3"/><circle cx="6" cy="6" r="3"/><path d="M13 6h3a2 2 0 0 1 2 2v7"/><path d="M6 9v12"/></svg>',
  'SECURITY GAPS': '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>',
  'COST SPRAWL': '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="2" y="6" width="20" height="12" rx="2"/><path d="M12 12h.01"/><path d="M17 12h.01"/><path d="M7 12h.01"/></svg>',
  'MIGRATION RISKS': '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"/><polyline points="13 2 13 9 20 9"/></svg>', // Update to transfer icon ideally
  'DEVOPS BOTTLENECKS': '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M16 18l6-6-6-6"/><path d="M8 6l-6 6 6 6"/></svg>',
  'AKS COMPLEXITY': '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="4" y="4" width="16" height="16" rx="2" ry="2"/><rect x="9" y="9" width="6" height="6"/></svg>',
  'POOR PERFORMANCE': '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"/></svg>',
  'RELIABILITY ISSUES': '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 2v20M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"/></svg>'
};

// We will inject the icons before the title of the challenge
Object.keys(challengeIcons).forEach(key => {
    const regex = new RegExp(`(<h3[^>]*>)(.*?${key}.*?)(<\/h3>)`);
    html = html.replace(regex, `$1${challengeIcons[key]} $2$3`);
});

// Update Outcomes section HTML to include accent bars and stagger classes
html = html.replace(/<div class="outcome-card">/g, '<div class="outcome-item"><div class="accent-bar"></div>');
// Also wait, it was .outcome-card, let's keep the class outcome-item but add it to the existing div
html = html.replace(/class="outcome-card"/g, 'class="outcome-card outcome-item"');

// Update Toolkit HTML to add .deliverable-card class
html = html.replace(/class="tk-card"/g, 'class="tk-card deliverable-card"');

// Workflow HTML
html = html.replace(/class="wf-step"/g, 'class="wf-step workflow-step"');

// Update FAQ display none style in script.js to just use max-height
// Let's modify script.js instead for FAQ

// Philosophy typography
html = html.replace(/<h2 style="font-size: clamp\(2.5rem, 5vw, 4rem\); margin-bottom: 1rem; letter-spacing: -0.02em;">([^<]+)<\/h2>/, '<h2 class="font-display reveal" style="font-size: clamp(3rem, 6vw, 4.5rem); margin-bottom: 1rem;">$1</h2>');
html = html.replace(/<h2 style="font-size: clamp\(2.5rem, 5vw, 4rem\); color: var\(--accent\); letter-spacing: -0.02em;">([^<]+)<\/h2>/, '<h2 class="font-display reveal" style="font-size: clamp(3rem, 6vw, 4.5rem); color: var(--accent); transition-delay: 100ms;">$1</h2>');

// Add SVG arrow to CTA buttons if not there
html = html.replace(/START A CONVERSATION<\/a>/, 'START A CONVERSATION <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" style="margin-left: 8px;"><path d="M5 12h14M12 5l7 7-7 7"/></svg></a>');
html = html.replace(/VIEW FIVERR PROFILE<\/a>/, 'VIEW FIVERR PROFILE <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" style="margin-left: 8px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6M15 3h6v6M10 14L21 3"/></svg></a>');
html = html.replace(/SEE OUR REFERENCE ARCHITECTURES<\/a>/, 'SEE OUR REFERENCE ARCHITECTURES <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" style="margin-left: 8px;"><path d="M5 12h14M12 5l7 7-7 7"/></svg></a>');

// For navigation brand
html = html.replace(/<div class="brand">ZOLPHIN<\/div>/, '<div class="brand font-display" style="font-weight: 700; font-size: 1.25rem; letter-spacing: 0.04em;">ZOLPHIN</div>');
html = html.replace(/<div class="footer-brand">ZOLPHIN<\/div>/, '<div class="footer-brand font-display" style="font-weight: 700; font-size: 1.5rem; letter-spacing: 0.04em;">ZOLPHIN</div>');

fs.writeFileSync('index.html', html);

// ---------------------------------------------------------
// Script.js processing
let script = fs.readFileSync('script.js', 'utf8');

// FAQ Accordion - change the toggling mechanism
script = script.replace(/btn\.nextElementSibling\.style\.display = 'block';/, '');
script = script.replace(/btn\.nextElementSibling\.style\.display = 'none';/, '');
script = script.replace(/otherBtn\.nextElementSibling\.style\.display = 'none';/, '');
// the rest is already classList.add('is-open')

fs.writeFileSync('script.js', script);

