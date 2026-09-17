#!/bin/bash

cat << 'CSS_EOF' > styles.css
/*
  ZOLPHIN | Azure Cloud Consulting & Engineering
  Global Stylesheet
*/
:root {
  --bg-main: #F7F8F6;
  --bg-card: #FFFFFF;
  --bg-dark: #10141B;
  
  --text-primary: #172033;
  --text-secondary: #526070;
  --text-inverse: #FFFFFF;
  --text-inverse-muted: #A1A9B8;
  
  --border-light: #DDE5EE;
  --border-dark: rgba(255, 255, 255, 0.1);
  
  --accent: #4DA3FF;
  --accent-dark: #2060A8;
  
  --font-body: 'Inter', system-ui, -apple-system, sans-serif;
  --font-display: 'Oswald', 'Inter', system-ui, sans-serif;
  --font-mono: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
  
  --shadow-sm: 0 4px 12px rgba(16, 20, 27, 0.04);
  --shadow-md: 0 12px 32px rgba(16, 20, 27, 0.08);
  
  --nav-height: 72px;
}

* { box-sizing: border-box; margin: 0; padding: 0; }
body {
  font-family: var(--font-body);
  background-color: var(--bg-main);
  color: var(--text-primary);
  line-height: 1.6;
  -webkit-font-smoothing: antialiased;
  overflow-x: hidden;
}

/* Typography Scale */
h1, h2, h3, h4, h5, h6 { font-weight: 500; color: var(--text-primary); }
.font-display { font-family: var(--font-display); line-height: 1.1; letter-spacing: -0.02em; text-transform: uppercase; }
h1 { font-family: var(--font-display); font-size: clamp(2.5rem, 5vw, 4.75rem); margin-bottom: 1.5rem; line-height: 1.1; letter-spacing: -0.02em; text-transform: uppercase; }
h2 { font-family: var(--font-display); font-size: clamp(2rem, 3.8vw, 3.25rem); margin-bottom: 2rem; line-height: 1.1; letter-spacing: -0.01em; text-transform: uppercase; }
h3 { font-family: var(--font-body); font-size: clamp(1.25rem, 2vw, 1.75rem); font-weight: 600; margin-bottom: 0.75rem; letter-spacing: -0.01em; }
p { margin-bottom: 1.5rem; }
a { text-decoration: none; color: inherit; transition: color 0.2s; }
ul { list-style: none; }

.subtitle {
  font-size: clamp(1.125rem, 1.5vw, 1.25rem);
  color: var(--text-secondary);
  max-width: 700px;
  line-height: 1.6;
  margin-bottom: 2rem;
}

.eyebrow {
  font-family: var(--font-mono);
  font-size: 0.75rem;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  color: var(--text-secondary);
  display: block;
  margin-bottom: 1rem;
}

/* Layout */
.container {
  width: 100%;
  max-width: 1240px;
  margin: 0 auto;
  padding: 0 1.5rem;
}
.section {
  padding: clamp(4.5rem, 7vw, 6.5rem) 0;
}
.text-center { text-align: center; }

/* Buttons */
.btn {
  display: inline-flex; align-items: center; justify-content: center;
  font-family: var(--font-mono); font-size: 0.8125rem; font-weight: 600;
  text-transform: uppercase; letter-spacing: 0.05em;
  padding: 0.875rem 1.75rem; border-radius: 6px;
  cursor: pointer; transition: all 0.2s ease;
  white-space: nowrap;
}
.btn-primary { background: var(--bg-dark); color: var(--text-inverse); border: 1px solid var(--bg-dark); }
.btn-primary:hover { background: #000; box-shadow: var(--shadow-sm); }
.btn-secondary { background: #fff; color: var(--text-primary); border: 1px solid var(--border-light); }
.btn-secondary:hover { background: var(--bg-main); border-color: var(--text-secondary); }
.btn-accent { background: var(--accent); color: #fff; border: 1px solid var(--accent); }
.btn-accent:hover { background: var(--accent-dark); border-color: var(--accent-dark); }

/* Navigation */
.nav-wrapper {
  position: fixed; top: 1.5rem; left: 0; right: 0; z-index: 1000;
  display: flex; justify-content: center; pointer-events: none; padding: 0 1rem;
}
.main-nav {
  pointer-events: auto; background: rgba(255,255,255,0.95);
  backdrop-filter: blur(12px); -webkit-backdrop-filter: blur(12px);
  border: 1px solid var(--border-light); box-shadow: var(--shadow-md);
  border-radius: 100px; padding: 0.5rem 0.75rem 0.5rem 1.5rem;
  display: flex; align-items: center; gap: 3rem;
  width: 100%; max-width: 1200px; transition: all 0.3s ease;
}
.brand { display: flex; align-items: center; gap: 0.75rem; font-family: var(--font-display); font-size: 1.25rem; font-weight: 500; letter-spacing: 0.02em; }
.brand-icon { width: 16px; height: 16px; background: var(--accent); border-radius: 2px; }
.main-nav-links { display: flex; align-items: center; gap: 2rem; }
.main-nav-links a { font-size: 0.9375rem; font-weight: 500; color: var(--text-secondary); }
.main-nav-links a:hover { color: var(--text-primary); }
.nav-actions { display: flex; gap: 0.75rem; margin-left: auto; }
.mobile-menu-toggle { display: none; background: none; border: none; color: var(--text-primary); cursor: pointer; margin-left: auto; padding: 0.5rem; }

/* Hero */
.hero {
  padding-top: calc(var(--nav-height) + clamp(5rem, 8vw, 7rem));
  padding-bottom: clamp(4.5rem, 7vw, 6.5rem);
}
.hero-content {
  display: flex; flex-direction: column; align-items: center; text-align: center;
}
.hero-content .subtitle { margin-bottom: 2rem; }
.hero-actions { display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap; margin-bottom: 4rem; }

/* Interactive Architecture Visual */
.interactive-arch {
  width: 100%; max-width: 1100px; margin: 0 auto;
  background: var(--bg-card);
  border: 1px solid var(--border-light);
  border-radius: 16px;
  padding: 2rem;
  box-shadow: var(--shadow-md);
  position: relative;
  display: flex; flex-direction: column;
}
.interactive-arch-header {
  display: flex; justify-content: space-between; align-items: center;
  border-bottom: 1px solid var(--border-light);
  padding-bottom: 1rem; margin-bottom: 2rem;
}
.interactive-arch-title { font-family: var(--font-mono); font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.1em; font-weight: 600; }
.interactive-arch-controls { display: flex; gap: 1rem; align-items: center; }
.interactive-arch-svg-container {
  width: 100%; position: relative;
  /* preserve aspect ratio approach */
}
.interactive-arch svg {
  width: 100%; height: auto;
  display: block;
}

/* SVG Styling */
.svg-node {
  cursor: pointer; transition: all 0.3s ease;
}
.svg-node rect, .svg-node circle {
  fill: #fff; stroke: var(--border-light); stroke-width: 2; transition: all 0.3s ease;
}
.svg-node-text {
  font-family: var(--font-body); font-size: 14px; font-weight: 600; fill: var(--text-primary);
  pointer-events: none; transition: all 0.3s ease;
}
.svg-node-subtext {
  font-family: var(--font-mono); font-size: 10px; fill: var(--text-secondary);
  pointer-events: none; transition: all 0.3s ease;
}
.svg-path {
  fill: none; stroke: var(--border-light); stroke-width: 2; stroke-dasharray: 4 4;
  transition: all 0.3s ease;
}
.svg-path.active {
  stroke: var(--accent); stroke-dasharray: none;
}
.svg-signal {
  fill: var(--accent); opacity: 0; pointer-events: none;
}

/* Hover States for Interactive Diagram */
.diagram-container.has-hover .svg-node:not(.hovered) rect,
.diagram-container.has-hover .svg-node:not(.hovered) circle {
  stroke: rgba(16, 20, 27, 0.05); fill: rgba(255,255,255,0.5);
}
.diagram-container.has-hover .svg-node:not(.hovered) .svg-node-text,
.diagram-container.has-hover .svg-node:not(.hovered) .svg-node-subtext {
  fill: rgba(16, 20, 27, 0.2);
}
.diagram-container.has-hover .svg-path:not(.active) {
  stroke: rgba(16, 20, 27, 0.05);
}
.svg-node.hovered rect, .svg-node.hovered circle {
  stroke: var(--accent); stroke-width: 3; box-shadow: 0 0 10px rgba(77, 163, 255, 0.3);
}

.diagram-tooltip {
  position: absolute; background: var(--bg-dark); color: #fff; padding: 1rem; border-radius: 8px;
  font-size: 0.875rem; pointer-events: none; opacity: 0; transition: opacity 0.2s ease;
  max-width: 250px; z-index: 10; box-shadow: var(--shadow-md);
  transform: translate(-50%, -100%); margin-top: -10px;
}
.diagram-tooltip.visible { opacity: 1; }
.diagram-tooltip h4 { color: #fff; font-family: var(--font-mono); font-size: 0.75rem; letter-spacing: 0.1em; margin-bottom: 0.5rem; text-transform: uppercase; }

@keyframes signalMove {
  0% { offset-distance: 0%; opacity: 0; }
  10% { opacity: 1; }
  90% { opacity: 1; }
  100% { offset-distance: 100%; opacity: 0; }
}
@keyframes dashedMove {
  to { stroke-dashoffset: -20; }
}

/* Consulting Journey - Timeline Process */
.consulting-timeline {
  display: flex; flex-direction: row; gap: 2rem; margin-top: 3rem;
  position: relative;
}
.timeline-line {
  position: absolute; top: 24px; left: 0; right: 0; height: 2px;
  background: var(--border-light); z-index: 0;
}
.timeline-line-progress {
  position: absolute; top: 0; left: 0; height: 100%; background: var(--accent);
  width: 0%; transition: width 1s ease-out;
}
.timeline-step {
  flex: 1; position: relative; z-index: 1; display: flex; flex-direction: column;
}
.timeline-node {
  width: 48px; height: 48px; border-radius: 50%; background: var(--bg-card);
  border: 2px solid var(--border-light); display: flex; align-items: center; justify-content: center;
  font-family: var(--font-mono); font-size: 0.875rem; font-weight: 600; color: var(--text-secondary);
  margin-bottom: 1.5rem; transition: all 0.3s ease;
}
.timeline-step.active .timeline-node {
  border-color: var(--accent); background: var(--accent); color: #fff; box-shadow: 0 0 0 4px rgba(77, 163, 255, 0.2);
}
.timeline-title { font-family: var(--font-display); font-size: 1.5rem; margin-bottom: 1rem; }
.timeline-deliverables {
  display: flex; flex-direction: column; gap: 0.5rem;
}
.timeline-deliverable-item {
  font-size: 0.9375rem; color: var(--text-secondary);
  display: flex; align-items: flex-start; gap: 0.5rem;
}
.timeline-deliverable-item::before {
  content: '→'; color: var(--accent); font-family: var(--font-mono);
}

/* Challenges List (Compact) */
.challenges-compact {
  display: grid; grid-template-columns: repeat(3, 1fr); gap: 2rem 3rem; margin-top: 3rem;
}
.challenge-compact-item h4 {
  font-family: var(--font-mono); font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.1em;
  color: var(--accent); margin-bottom: 0.5rem;
}
.challenge-compact-item p { font-size: 1rem; font-weight: 500; margin: 0; }

/* Reference Architectures (3x2 Cards) */
.ref-grid {
  display: grid; grid-template-columns: repeat(3, 1fr); gap: 2rem; margin-top: 3rem;
}
.ref-card {
  display: flex; flex-direction: column; background: var(--bg-card);
  border: 1px solid var(--border-light); border-radius: 16px; padding: 2rem;
  height: 100%; transition: all 0.3s ease; box-shadow: var(--shadow-sm);
}
.ref-card:hover { box-shadow: var(--shadow-md); border-color: rgba(77, 163, 255, 0.3); }
.ref-header {
  display: flex; justify-content: space-between; align-items: center;
  font-family: var(--font-mono); font-size: 0.65rem; text-transform: uppercase;
  letter-spacing: 0.1em; color: var(--text-secondary); margin-bottom: 1.5rem;
}
.ref-visual {
  width: 100%; aspect-ratio: 4/3; background: var(--bg-main); border-radius: 8px;
  border: 1px solid var(--border-light); margin-bottom: 1.5rem; position: relative;
  overflow: hidden; display: flex; align-items: center; justify-content: center;
}
.ref-title { font-size: 1.25rem; font-weight: 600; margin-bottom: 0.75rem; }
.ref-desc { font-size: 0.9375rem; color: var(--text-secondary); flex-grow: 1; margin-bottom: 1.5rem; }
.ref-tags { display: flex; flex-wrap: wrap; gap: 0.5rem; margin-bottom: 1.5rem; }
.ref-tag {
  font-family: var(--font-mono); font-size: 0.65rem; padding: 0.25rem 0.5rem;
  border-radius: 4px; background: var(--bg-main); border: 1px solid var(--border-light);
  color: var(--text-secondary);
}
.ref-cta {
  font-family: var(--font-mono); font-size: 0.75rem; font-weight: 600; letter-spacing: 0.05em;
  color: var(--text-primary); display: flex; align-items: center; gap: 0.5rem; text-transform: uppercase;
}
.ref-cta:hover { color: var(--accent); }

/* Toolkit (Editorial Grid) */
.toolkit-compact {
  display: grid; grid-template-columns: repeat(3, 1fr); gap: 2rem; margin-top: 3rem;
}
.toolkit-item { border-top: 1px solid var(--border-light); padding-top: 1.5rem; }
.toolkit-num { font-family: var(--font-mono); font-size: 0.75rem; color: var(--text-secondary); margin-bottom: 0.5rem; display: block; }
.toolkit-title { font-size: 1.125rem; margin-bottom: 0.5rem; }
.toolkit-desc { font-size: 0.9375rem; color: var(--text-secondary); margin: 0; }

/* Engineering Outcomes (Compact Border-top) */
.outcomes-compact {
  display: grid; grid-template-columns: repeat(2, 1fr); gap: 2rem; margin-top: 3rem;
}
.outcome-item { border-top: 1px solid var(--border-light); padding-top: 1.5rem; }
.outcome-title { font-family: var(--font-display); font-size: 1.25rem; margin-bottom: 0.5rem; }
.outcome-desc { font-size: 1rem; color: var(--text-secondary); margin: 0; }

/* Architecture Philosophy Callout */
.philosophy-section {
  background-color: var(--bg-dark); text-align: center;
  padding: clamp(6rem, 10vw, 8rem) 1.5rem; border-top: 1px solid var(--border-dark); border-bottom: 1px solid var(--border-dark);
}
.philosophy-statement {
  font-family: var(--font-display); font-size: clamp(2.5rem, 5vw, 4rem); line-height: 1.1; color: var(--text-inverse);
  max-width: 900px; margin: 0 auto 2rem;
}
.philosophy-sub { font-size: clamp(1.125rem, 2vw, 1.25rem); color: var(--text-inverse-muted); max-width: 600px; margin: 0 auto; }

/* Workflow */
.workflow-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 2.5rem; margin-top: 3rem; }
.workflow-item { position: relative; }
.workflow-num { font-family: var(--font-mono); font-size: 0.875rem; color: var(--text-secondary); border-bottom: 1px solid var(--border-light); padding-bottom: 1rem; margin-bottom: 1rem; display: block; }
.workflow-desc { color: var(--text-secondary); font-size: 0.9375rem; margin: 0; }

/* Tech Stack */
.tech-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 3rem; margin-top: 3rem; }
.tech-group h4 { font-family: var(--font-mono); font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--accent); margin-bottom: 1.5rem; }
.tech-group ul { display: flex; flex-direction: column; gap: 0.75rem; }
.tech-group li { font-size: 1rem; font-weight: 500; }

/* FAQ */
.faq-list { max-width: 800px; margin: 3rem auto 0; }
.faq-item { border-bottom: 1px solid var(--border-light); }
.faq-q { width: 100%; text-align: left; background: none; border: none; font-size: 1.125rem; font-weight: 500; color: var(--text-primary); padding: 1.5rem 0; cursor: pointer; display: flex; justify-content: space-between; align-items: center; }
.faq-q svg { transition: transform 0.3s; color: var(--accent); }
.faq-q[aria-expanded="true"] svg { transform: rotate(180deg); }
.faq-a { font-size: 1rem; color: var(--text-secondary); padding-bottom: 1.5rem; display: none; }
.faq-a.is-open { display: block; }

/* Contact CTA */
.cta-box { background: var(--bg-card); border: 1px solid var(--border-light); border-radius: 24px; padding: 4rem 2rem; text-align: center; box-shadow: var(--shadow-sm); max-width: 900px; margin: 0 auto; }
.cta-actions { display: flex; gap: 1rem; justify-content: center; margin-top: 2rem; flex-wrap: wrap; }

/* Footer */
.footer { background: var(--bg-dark); color: var(--text-inverse); padding: 4rem 0 2rem; border-top: 1px solid var(--border-dark); }
.footer-grid { display: grid; grid-template-columns: 2fr 1fr 1fr; gap: 4rem; margin-bottom: 3rem; }
.footer-brand { font-family: var(--font-display); font-size: 1.5rem; margin-bottom: 0.5rem; }
.footer-desc { color: var(--text-inverse-muted); font-size: 0.9375rem; max-width: 300px; }
.footer-col h5 { font-family: var(--font-mono); font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--text-inverse-muted); margin-bottom: 1.25rem; }
.footer-col ul { display: flex; flex-direction: column; gap: 0.75rem; }
.footer-col a { color: var(--text-inverse); font-size: 0.9375rem; }
.footer-col a:hover { color: var(--accent); }
.footer-bottom { border-top: 1px solid var(--border-dark); padding-top: 1.5rem; display: flex; justify-content: space-between; align-items: center; font-family: var(--font-mono); font-size: 0.75rem; color: var(--text-inverse-muted); text-transform: uppercase; }

/* Animations */
.reveal { opacity: 0; transform: translateY(15px); transition: all 0.6s cubic-bezier(0.16, 1, 0.3, 1); }
.reveal.active { opacity: 1; transform: translateY(0); }

/* Lightbox */
.lightbox { position: fixed; inset: 0; z-index: 9999; display: flex; align-items: center; justify-content: center; opacity: 0; pointer-events: none; transition: opacity 0.3s ease; }
.lightbox.is-open { opacity: 1; pointer-events: auto; }
.lightbox-overlay { position: absolute; inset: 0; background: rgba(16, 20, 27, 0.9); backdrop-filter: blur(8px); }
.lightbox-content { position: relative; z-index: 1; width: 90vw; height: 90vh; display: flex; align-items: center; justify-content: center; }
.lightbox-image-container { max-width: 100%; max-height: 100%; display: flex; align-items: center; justify-content: center; }
.lightbox-image-container img { max-width: 100%; max-height: 90vh; object-fit: contain; box-shadow: var(--shadow-md); border-radius: 8px; }
.lightbox-close { position: absolute; top: 1rem; right: 1rem; background: rgba(0,0,0,0.5); border: none; color: #fff; width: 48px; height: 48px; border-radius: 50%; display: flex; align-items: center; justify-content: center; cursor: pointer; transition: background 0.2s; z-index: 2; }
.lightbox-close:hover { background: rgba(0,0,0,0.8); }

@media (prefers-reduced-motion: reduce) {
  .reveal { opacity: 1; transform: none; transition: none; }
  .ref-card:hover, .btn:hover { transform: none; }
  .timeline-line-progress { transition: none; width: 100%; }
  .svg-signal { display: none; }
}

@media (max-width: 1024px) {
  .challenges-compact, .toolkit-compact, .workflow-grid { grid-template-columns: repeat(2, 1fr); }
  .ref-grid { grid-template-columns: repeat(2, 1fr); }
  .tech-grid { grid-template-columns: repeat(2, 1fr); }
  .footer-grid { grid-template-columns: 1fr 1fr; gap: 3rem; }
  .desktop-only { display: none !important; }
}

@media (max-width: 768px) {
  .nav-actions { display: none; }
  .main-nav-links { display: none; position: absolute; top: 100%; left: 0; right: 0; flex-direction: column; background: var(--bg-card); padding: 1.5rem; border-radius: 16px; border: 1px solid var(--border-light); margin-top: 0.5rem; box-shadow: var(--shadow-md); }
  .main-nav-links.is-open { display: flex; }
  .mobile-menu-toggle { display: block; }
  
  .consulting-timeline { flex-direction: column; gap: 2rem; }
  .timeline-line { top: 0; bottom: 0; left: 24px; width: 2px; height: auto; }
  .timeline-line-progress { width: 100%; height: 0%; transition: height 1s ease-out; }
  .timeline-step { flex-direction: row; gap: 1.5rem; align-items: flex-start; }
  .timeline-node { margin-bottom: 0; flex-shrink: 0; }
  
  .challenges-compact, .toolkit-compact, .outcomes-compact, .workflow-grid, .ref-grid, .tech-grid { grid-template-columns: 1fr; }
  .footer-grid { grid-template-columns: 1fr; }
  .footer-bottom { flex-direction: column; gap: 1rem; text-align: center; }
  .cta-actions { flex-direction: column; }
  .cta-actions .btn { width: 100%; }
  .interactive-arch { padding: 1rem; }
}

CSS_EOF

cat << 'HTML_EOF' > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZOLPHIN | Azure Cloud Consulting & Engineering</title>
    <meta name="description" content="Secure, scalable and production-ready Azure infrastructure designed around the workload. Azure architecture, networking, security, Terraform, DevOps, and AKS.">
    
    <link rel="canonical" href="https://zolphin.com/">
    <meta property="og:title" content="ZOLPHIN | Azure Cloud Consulting & Engineering">
    <meta property="og:description" content="Secure, scalable and production-ready Azure infrastructure designed around the workload.">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://zolphin.com/">
    
    <link rel="stylesheet" href="styles.css">
    <script src="script.js" defer></script>
</head>
<body>

    <!-- NAVIGATION -->
    <div class="nav-wrapper">
        <nav class="main-nav" aria-label="Primary Navigation">
            <a href="/" class="brand">
                <div class="brand-icon"></div>
                <div>ZOLPHIN</div>
            </a>

            <button class="mobile-menu-toggle" aria-label="Toggle navigation" aria-expanded="false" aria-controls="main-nav-links">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
            </button>

            <ul class="main-nav-links" id="main-nav-links">
                <li><a href="#how-we-help">How We Help</a></li>
                <li><a href="#challenges">Challenges</a></li>
                <li><a href="#architectures">Architectures</a></li>
                <li><a href="#approach">Approach</a></li>
                <li><a href="#about">About</a></li>
            </ul>

            <div class="nav-actions">
                <a href="https://www.fiverr.com/cloudganesh" target="_blank" rel="noopener noreferrer" class="btn btn-secondary" style="padding: 0.5rem 1rem;">Fiverr</a>
                <a href="#contact" class="btn btn-primary" style="padding: 0.5rem 1rem;">Start a Project</a>
            </div>
        </nav>
    </div>

    <!-- 01 HERO -->
    <header class="section hero reveal">
        <div class="container hero-content">
            <span class="eyebrow">AZURE CLOUD CONSULTING & ENGINEERING</span>
            <h1 class="font-display">HAVE AN AZURE PROBLEM? LET'S ENGINEER THE RIGHT PATH.</h1>
            <p class="subtitle">
                Whether you are designing a new Azure environment, reviewing an existing one, migrating workloads, reducing cloud costs or improving security and reliability, Zolphin helps assess the problem, design the right architecture and implement the solution.
            </p>
            
            <div class="hero-actions">
                <a href="#contact" class="btn btn-accent">START A CONVERSATION</a>
                <a href="#how-we-help" class="btn btn-secondary">SEE HOW WE HELP</a>
            </div>

            <!-- INTERACTIVE ARCHITECTURE VISUAL -->
            <div class="interactive-arch reveal">
                <div class="interactive-arch-header">
                    <div>
                        <div class="interactive-arch-title">INTERACTIVE REFERENCE ARCHITECTURE</div>
                        <div style="font-family: var(--font-mono); font-size: 0.65rem; color: var(--text-secondary); margin-top: 0.25rem;">NOT CONNECTED TO A LIVE AZURE ENVIRONMENT</div>
                    </div>
                    <div class="interactive-arch-controls">
                        <button id="open-lightbox" class="btn btn-secondary" style="padding: 0.5rem 1rem; font-size: 0.7rem; background: transparent;">VIEW ORIGINAL ARCHITECTURE</button>
                    </div>
                </div>
                
                <div class="interactive-arch-svg-container" id="diagram-container">
                    <!-- SVG Architecture Diagram -->
                    <svg viewBox="0 0 1000 500" preserveAspectRatio="xMidYMid meet" id="arch-svg">
                        <defs>
                            <marker id="arrowhead" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
                                <polygon points="0 0, 10 3.5, 0 7" fill="var(--border-light)" class="marker-poly" />
                            </marker>
                            <marker id="arrowhead-active" markerWidth="10" markerHeight="7" refX="9" refY="3.5" orient="auto">
                                <polygon points="0 0, 10 3.5, 0 7" fill="var(--accent)" />
                            </marker>
                        </defs>
                        
                        <!-- Background Grid / Spoke Areas -->
                        <rect x="150" y="240" width="700" height="220" rx="12" fill="rgba(77, 163, 255, 0.02)" stroke="var(--border-light)" stroke-width="1" stroke-dasharray="4 4" />
                        <text x="170" y="265" class="svg-node-subtext" fill="var(--text-secondary)">WORKLOAD SPOKES</text>
                        
                        <!-- PATHS -->
                        <g id="paths">
                            <!-- Internet to App Gateway -->
                            <path id="path-internet-agw" class="svg-path path-internet" d="M 500 40 L 500 80" marker-end="url(#arrowhead)"/>
                            <!-- App Gateway to Hub -->
                            <path id="path-agw-hub" class="svg-path path-ingress" d="M 500 120 L 500 160" marker-end="url(#arrowhead)"/>
                            <!-- Hub to Dev -->
                            <path id="path-hub-dev" class="svg-path path-workload" d="M 400 200 L 250 200 L 250 280" marker-end="url(#arrowhead)"/>
                            <!-- Hub to Stage -->
                            <path id="path-hub-stage" class="svg-path path-workload" d="M 500 200 L 500 280" marker-end="url(#arrowhead)"/>
                            <!-- Hub to Prod -->
                            <path id="path-hub-prod" class="svg-path path-workload" d="M 600 200 L 750 200 L 750 280" marker-end="url(#arrowhead)"/>
                            
                            <!-- On-Prem to Hub -->
                            <path id="path-onprem-hub" class="svg-path path-onprem" d="M 120 180 L 400 180" marker-end="url(#arrowhead)"/>
                            
                            <!-- Entra ID to Workloads (dashed curve) -->
                            <path id="path-entra-workloads" class="svg-path path-identity" d="M 880 180 C 880 320, 800 320, 750 320" stroke-dasharray="6 6" />
                            
                            <!-- Apps to DBs -->
                            <path class="svg-path path-db" d="M 250 320 L 250 380" marker-end="url(#arrowhead)"/>
                            <path class="svg-path path-db" d="M 500 320 L 500 380" marker-end="url(#arrowhead)"/>
                            <path class="svg-path path-db" d="M 750 320 L 750 380" marker-end="url(#arrowhead)"/>
                            
                            <!-- Monitoring Connections -->
                            <path id="path-mon-dev" class="svg-path path-mon" d="M 250 420 L 250 460 L 880 460 L 880 400" />
                            <path id="path-mon-stage" class="svg-path path-mon" d="M 500 420 L 500 460" />
                            <path id="path-mon-prod" class="svg-path path-mon" d="M 750 420 L 750 460" />
                        </g>

                        <!-- NODES -->
                        <!-- Internet -->
                        <g class="svg-node" id="node-internet" data-title="INTERNET" data-desc="Public ingress traffic.">
                            <circle cx="500" cy="30" r="20" />
                            <text x="500" y="35" class="svg-node-text" text-anchor="middle">WWW</text>
                        </g>
                        
                        <!-- App Gateway -->
                        <g class="svg-node" id="node-agw" data-title="APPLICATION GATEWAY + WAF" data-desc="Regional application ingress and web application protection.">
                            <rect x="420" y="80" width="160" height="40" rx="4" />
                            <text x="500" y="105" class="svg-node-text" text-anchor="middle">App Gateway + WAF</text>
                        </g>
                        
                        <!-- Hub VNet -->
                        <g class="svg-node" id="node-hub" data-title="HUB VNET" data-desc="Shared connectivity and services for connected workloads (Firewall, Bastion, DNS).">
                            <rect x="400" y="160" width="200" height="40" rx="4" />
                            <text x="500" y="185" class="svg-node-text" text-anchor="middle">Hub VNet</text>
                        </g>
                        
                        <!-- On-Premises -->
                        <g class="svg-node" id="node-onprem" data-title="ON-PREMISES" data-desc="Corporate network connected via VPN or ExpressRoute.">
                            <rect x="20" y="160" width="100" height="40" rx="4" />
                            <text x="70" y="180" class="svg-node-text" text-anchor="middle">On-Premises</text>
                            <text x="70" y="195" class="svg-node-subtext" text-anchor="middle">VPN / ExpressRoute</text>
                        </g>
                        
                        <!-- Entra ID -->
                        <g class="svg-node" id="node-entra" data-title="MICROSOFT ENTRA ID" data-desc="Centralized identity and access control for users and resources.">
                            <circle cx="880" cy="160" r="30" />
                            <text x="880" y="165" class="svg-node-text" text-anchor="middle">Entra ID</text>
                        </g>
                        
                        <!-- Dev Spoke -->
                        <g class="svg-node" id="node-dev" data-title="DEVELOPMENT SPOKE" data-desc="Isolated environment for development workloads.">
                            <rect x="180" y="280" width="140" height="40" rx="4" />
                            <text x="250" y="300" class="svg-node-text" text-anchor="middle">Dev App / AKS</text>
                            <rect x="200" y="380" width="100" height="40" rx="4" />
                            <text x="250" y="405" class="svg-node-text" text-anchor="middle">Database</text>
                        </g>
                        
                        <!-- Stage Spoke -->
                        <g class="svg-node" id="node-stage" data-title="STAGE SPOKE" data-desc="Pre-production testing and UAT environment.">
                            <rect x="430" y="280" width="140" height="40" rx="4" />
                            <text x="500" y="300" class="svg-node-text" text-anchor="middle">Stage App / AKS</text>
                            <rect x="450" y="380" width="100" height="40" rx="4" />
                            <text x="500" y="405" class="svg-node-text" text-anchor="middle">Database</text>
                        </g>
                        
                        <!-- Prod Spoke -->
                        <g class="svg-node" id="node-prod" data-title="PRODUCTION SPOKE" data-desc="Isolated, highly controlled production workload environment.">
                            <rect x="680" y="280" width="140" height="40" rx="4" />
                            <text x="750" y="300" class="svg-node-text" text-anchor="middle">Prod App / AKS</text>
                            <rect x="700" y="380" width="100" height="40" rx="4" />
                            <text x="750" y="405" class="svg-node-text" text-anchor="middle">Database</text>
                        </g>
                        
                        <!-- Monitoring -->
                        <g class="svg-node" id="node-mon" data-title="AZURE MONITOR" data-desc="Operational telemetry, Log Analytics and centralized alerting.">
                            <rect x="820" y="360" width="120" height="40" rx="4" />
                            <text x="880" y="380" class="svg-node-text" text-anchor="middle">Monitoring</text>
                            <text x="880" y="395" class="svg-node-subtext" text-anchor="middle">Log Analytics</text>
                        </g>
                        
                        <!-- Animated Signals -->
                        <g id="signals">
                            <!-- Handled by JS dynamically or static CSS for simplicity -->
                            <circle class="svg-signal" id="sig-ingress" r="4">
                                <animateMotion dur="4s" repeatCount="indefinite" path="M 500 40 L 500 80 M 500 120 L 500 160 M 500 200 L 750 200 L 750 280" />
                            </circle>
                            <circle class="svg-signal" id="sig-mon" r="3" fill="#A1A9B8">
                                <animateMotion dur="5s" repeatCount="indefinite" path="M 750 420 L 750 460 L 880 460 L 880 400" />
                            </circle>
                        </g>
                    </svg>
                    <!-- Tooltip -->
                    <div id="diagram-tooltip" class="diagram-tooltip">
                        <h4 id="tt-title">NODE TITLE</h4>
                        <p id="tt-desc" style="margin:0;">Description.</p>
                    </div>
                </div>
                <div style="text-align: center; margin-top: 1.5rem; font-family: var(--font-mono); font-size: 0.65rem; color: var(--text-secondary);">
                    Conceptual flow illustrating how networking, security, workloads, identity and monitoring can be connected.
                </div>
            </div>
        </div>
    </header>

    <!-- 02 HOW WE HELP (CONSULTING JOURNEY) -->
    <section id="how-we-help" class="section reveal" style="background: #fff; border-top: 1px solid var(--border-light);">
        <div class="container">
            <span class="eyebrow">HOW WE HELP</span>
            <h2 class="font-display">FROM AZURE PROBLEMS TO PRACTICAL SOLUTIONS.</h2>
            <p class="subtitle">
                Most Azure challenges are not caused by a lack of services. They come from unclear requirements, security gaps, or organic growth. Zolphin approaches the problem in distinct stages.
            </p>

            <div class="consulting-timeline" id="timeline">
                <div class="timeline-line">
                    <div class="timeline-line-progress" id="timeline-progress"></div>
                </div>
                
                <div class="timeline-step">
                    <div class="timeline-node">01</div>
                    <h3 class="timeline-title">ASSESS</h3>
                    <div class="timeline-deliverables">
                        <div class="timeline-deliverable-item">Architecture Health Check</div>
                        <div class="timeline-deliverable-item">Security Review</div>
                        <div class="timeline-deliverable-item">DevSecOps Review</div>
                        <div class="timeline-deliverable-item">Cost & Reliability</div>
                    </div>
                </div>
                
                <div class="timeline-step">
                    <div class="timeline-node">02</div>
                    <h3 class="timeline-title">DESIGN</h3>
                    <div class="timeline-deliverables">
                        <div class="timeline-deliverable-item">Landing Zone</div>
                        <div class="timeline-deliverable-item">Networking & Security</div>
                        <div class="timeline-deliverable-item">App Platform & AKS</div>
                        <div class="timeline-deliverable-item">Migration Architecture</div>
                    </div>
                </div>
                
                <div class="timeline-step">
                    <div class="timeline-node">03</div>
                    <h3 class="timeline-title">IMPLEMENT</h3>
                    <div class="timeline-deliverables">
                        <div class="timeline-deliverable-item">Terraform Automation</div>
                        <div class="timeline-deliverable-item">Azure DevOps CI/CD</div>
                        <div class="timeline-deliverable-item">Private Networking</div>
                        <div class="timeline-deliverable-item">Identity & Security</div>
                    </div>
                </div>
                
                <div class="timeline-step">
                    <div class="timeline-node">04</div>
                    <h3 class="timeline-title">OPTIMIZE</h3>
                    <div class="timeline-deliverables">
                        <div class="timeline-deliverable-item">Cost Reduction</div>
                        <div class="timeline-deliverable-item">Security Hardening</div>
                        <div class="timeline-deliverable-item">Reliability (HA/DR)</div>
                        <div class="timeline-deliverable-item">Operational Maturity</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 03 COMMON CHALLENGES -->
    <section id="challenges" class="section reveal">
        <div class="container">
            <span class="eyebrow">COMMON AZURE CHALLENGES</span>
            <h2 class="font-display">WHAT ARE YOU TRYING TO FIX?</h2>
            
            <div class="challenges-compact">
                <div class="challenge-compact-item">
                    <h4>Architecture</h4>
                    <p>Our Azure environment has grown without a clear architecture.</p>
                </div>
                <div class="challenge-compact-item">
                    <h4>Security</h4>
                    <p>We need stronger security and private connectivity.</p>
                </div>
                <div class="challenge-compact-item">
                    <h4>Cost</h4>
                    <p>Our cloud costs need attention.</p>
                </div>
                <div class="challenge-compact-item">
                    <h4>Migration</h4>
                    <p>We are moving workloads from on-premises to Azure.</p>
                </div>
                <div class="challenge-compact-item">
                    <h4>DevOps</h4>
                    <p>Our deployment process is manual or unreliable.</p>
                </div>
                <div class="challenge-compact-item">
                    <h4>AKS</h4>
                    <p>We are unsure whether we actually need Kubernetes.</p>
                </div>
                <div class="challenge-compact-item">
                    <h4>HA / DR</h4>
                    <p>We need a practical resilience strategy.</p>
                </div>
                <div class="challenge-compact-item">
                    <h4>Review</h4>
                    <p>We need an independent Azure environment review.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- 04 REFERENCE ARCHITECTURES (3x2 CARDS) -->
    <section id="architectures" class="section reveal" style="background: #fff; border-top: 1px solid var(--border-light);">
        <div class="container">
            <span class="eyebrow">REFERENCE ARCHITECTURES</span>
            <h2 class="font-display">SEE THE ARCHITECTURE BEHIND THE APPROACH.</h2>
            <p style="font-family: var(--font-mono); font-size: 0.75rem; color: var(--text-secondary); background: var(--bg-main); display: inline-block; padding: 0.5rem 1rem; border-radius: 4px; border: 1px solid var(--border-light); margin-bottom: 2rem;">
                <strong>REFERENCE ARCHITECTURES:</strong> These examples illustrate the Zolphin engineering approach and are not presented as client engagements.
            </p>

            <div class="ref-grid">
                <!-- Card 01 -->
                <div class="ref-card">
                    <div class="ref-header">
                        <span>01</span>
                        <span>APPLICATION PLATFORM</span>
                    </div>
                    <div class="ref-visual">
                        <svg viewBox="0 0 200 150" width="80%">
                            <rect x="20" y="20" width="160" height="110" rx="8" fill="none" stroke="rgba(16,20,27,0.1)" stroke-dasharray="4 4"/>
                            <rect x="40" y="40" width="120" height="30" rx="4" fill="#fff" stroke="#4DA3FF"/>
                            <rect x="40" y="80" width="50" height="30" rx="4" fill="#fff" stroke="rgba(16,20,27,0.1)"/>
                            <rect x="110" y="80" width="50" height="30" rx="4" fill="#fff" stroke="rgba(16,20,27,0.1)"/>
                            <path d="M 65 70 L 65 80 M 135 70 L 135 80" stroke="#4DA3FF" stroke-width="2"/>
                        </svg>
                    </div>
                    <h3 class="ref-title">Production SaaS Platform</h3>
                    <p class="ref-desc">A secure production foundation for SaaS workloads with controlled ingress, private data connectivity, managed identity and Terraform.</p>
                    <div class="ref-tags">
                        <span class="ref-tag">App Gateway</span><span class="ref-tag">Azure SQL</span><span class="ref-tag">Key Vault</span>
                    </div>
                    <a href="case-studies/production-saas.html" class="ref-cta">EXPLORE ARCHITECTURE &rarr;</a>
                </div>

                <!-- Card 02 -->
                <div class="ref-card">
                    <div class="ref-header">
                        <span>02</span>
                        <span>ENTERPRISE CLOUD</span>
                    </div>
                    <div class="ref-visual">
                        <svg viewBox="0 0 200 150" width="80%">
                            <rect x="70" y="20" width="60" height="110" rx="8" fill="#fff" stroke="#4DA3FF" stroke-width="2"/>
                            <rect x="20" y="55" width="40" height="40" rx="8" fill="none" stroke="rgba(16,20,27,0.1)"/>
                            <rect x="140" y="55" width="40" height="40" rx="8" fill="none" stroke="rgba(16,20,27,0.1)"/>
                            <path d="M 60 75 L 70 75 M 130 75 L 140 75" stroke="#4DA3FF" stroke-width="2" stroke-dasharray="2 2"/>
                        </svg>
                    </div>
                    <h3 class="ref-title">Azure Landing Zone</h3>
                    <p class="ref-desc">A structured Azure foundation for organizations that need governance, shared connectivity, security controls and isolated workload environments.</p>
                    <div class="ref-tags">
                        <span class="ref-tag">Hub & Spoke</span><span class="ref-tag">Azure Firewall</span><span class="ref-tag">Entra ID</span>
                    </div>
                    <span class="ref-cta" style="opacity: 0.5;">REFERENCE ARCHITECTURE</span>
                </div>

                <!-- Card 03 -->
                <div class="ref-card">
                    <div class="ref-header">
                        <span>03</span>
                        <span>INFRASTRUCTURE AS CODE</span>
                    </div>
                    <div class="ref-visual">
                        <svg viewBox="0 0 200 150" width="80%">
                            <rect x="20" y="60" width="40" height="30" rx="4" fill="#fff" stroke="rgba(16,20,27,0.1)"/>
                            <rect x="80" y="60" width="40" height="30" rx="4" fill="#fff" stroke="#4DA3FF"/>
                            <rect x="140" y="60" width="40" height="30" rx="4" fill="#10141B"/>
                            <path d="M 60 75 L 80 75 M 120 75 L 140 75" stroke="rgba(16,20,27,0.1)" stroke-width="2"/>
                        </svg>
                    </div>
                    <h3 class="ref-title">Terraform + Azure DevOps</h3>
                    <p class="ref-desc">Repeatable Azure infrastructure with reusable Terraform modules, environment separation, approvals and controlled deployments.</p>
                    <div class="ref-tags">
                        <span class="ref-tag">Terraform</span><span class="ref-tag">CI/CD</span><span class="ref-tag">Env Controls</span>
                    </div>
                    <span class="ref-cta" style="opacity: 0.5;">REFERENCE ARCHITECTURE</span>
                </div>

                <!-- Card 04 -->
                <div class="ref-card">
                    <div class="ref-header">
                        <span>04</span>
                        <span>CONTAINER PLATFORM</span>
                    </div>
                    <div class="ref-visual">
                        <svg viewBox="0 0 200 150" width="80%">
                            <rect x="20" y="20" width="160" height="110" rx="8" fill="#fff" stroke="rgba(16,20,27,0.1)"/>
                            <rect x="40" y="50" width="120" height="60" rx="4" fill="rgba(77,163,255,0.05)" stroke="#4DA3FF" stroke-dasharray="4 4"/>
                            <circle cx="70" cy="80" r="10" fill="#fff" stroke="#4DA3FF"/>
                            <circle cx="100" cy="80" r="10" fill="#fff" stroke="#4DA3FF"/>
                            <circle cx="130" cy="80" r="10" fill="#fff" stroke="#4DA3FF"/>
                        </svg>
                    </div>
                    <h3 class="ref-title">Production AKS Architecture</h3>
                    <p class="ref-desc">A Kubernetes-oriented Azure architecture for workloads that genuinely require advanced orchestration and networking.</p>
                    <div class="ref-tags">
                        <span class="ref-tag">AKS</span><span class="ref-tag">VNet</span><span class="ref-tag">Managed Identity</span>
                    </div>
                    <span class="ref-cta" style="opacity: 0.5;">REFERENCE ARCHITECTURE</span>
                </div>

                <!-- Card 05 -->
                <div class="ref-card">
                    <div class="ref-header">
                        <span>05</span>
                        <span>CLOUD MIGRATION</span>
                    </div>
                    <div class="ref-visual">
                        <svg viewBox="0 0 200 150" width="80%">
                            <rect x="20" y="40" width="50" height="70" rx="4" fill="#fff" stroke="rgba(16,20,27,0.1)"/>
                            <rect x="130" y="40" width="50" height="70" rx="4" fill="#fff" stroke="#4DA3FF"/>
                            <path d="M 70 75 L 130 75" stroke="#10141B" stroke-width="2" stroke-dasharray="4 4"/>
                            <path d="M 120 65 L 130 75 L 120 85" fill="none" stroke="#10141B" stroke-width="2"/>
                        </svg>
                    </div>
                    <h3 class="ref-title">On-Premises to Azure</h3>
                    <p class="ref-desc">A migration architecture covering connectivity, workload assessment, target architecture, security and operational readiness.</p>
                    <div class="ref-tags">
                        <span class="ref-tag">ExpressRoute</span><span class="ref-tag">Migration</span><span class="ref-tag">DR</span>
                    </div>
                    <span class="ref-cta" style="opacity: 0.5;">REFERENCE ARCHITECTURE</span>
                </div>

                <!-- Card 06 -->
                <div class="ref-card">
                    <div class="ref-header">
                        <span>06</span>
                        <span>SECURITY & RESILIENCE</span>
                    </div>
                    <div class="ref-visual">
                        <svg viewBox="0 0 200 150" width="80%">
                            <circle cx="100" cy="75" r="40" fill="none" stroke="rgba(16,20,27,0.1)" stroke-width="2"/>
                            <circle cx="100" cy="75" r="30" fill="none" stroke="#4DA3FF" stroke-width="2"/>
                            <rect x="90" y="65" width="20" height="20" rx="2" fill="#10141B"/>
                            <path d="M 95 65 V 60 A 5 5 0 0 1 105 60 V 65" fill="none" stroke="#10141B" stroke-width="2"/>
                        </svg>
                    </div>
                    <h3 class="ref-title">Secure & Resilient Foundation</h3>
                    <p class="ref-desc">An architecture focused on private connectivity, identity, secrets, monitoring, backup, disaster recovery and operational resilience.</p>
                    <div class="ref-tags">
                        <span class="ref-tag">Key Vault</span><span class="ref-tag">Private Access</span><span class="ref-tag">RTO / RPO</span>
                    </div>
                    <span class="ref-cta" style="opacity: 0.5;">REFERENCE ARCHITECTURE</span>
                </div>
            </div>
        </div>
    </section>

    <!-- 05 CLIENT TOOLKIT -->
    <section id="toolkit" class="section reveal">
        <div class="container">
            <span class="eyebrow">CLIENT TOOLKIT</span>
            <h2 class="font-display">DELIVERABLES THAT HELP TEAMS MOVE FORWARD.</h2>
            
            <div class="toolkit-compact">
                <div class="toolkit-item">
                    <span class="toolkit-num">01</span>
                    <h3 class="toolkit-title">Health Check</h3>
                    <p class="toolkit-desc">Structured findings across architecture, security, cost and operations.</p>
                </div>
                <div class="toolkit-item">
                    <span class="toolkit-num">02</span>
                    <h3 class="toolkit-title">Roadmap</h3>
                    <p class="toolkit-desc">Prioritized sequence of recommended improvements.</p>
                </div>
                <div class="toolkit-item">
                    <span class="toolkit-num">03</span>
                    <h3 class="toolkit-title">Decision Matrix</h3>
                    <p class="toolkit-desc">Compare architectural options against requirements.</p>
                </div>
                <div class="toolkit-item">
                    <span class="toolkit-num">04</span>
                    <h3 class="toolkit-title">Security Checklist</h3>
                    <p class="toolkit-desc">Practical security and identity review points.</p>
                </div>
                <div class="toolkit-item">
                    <span class="toolkit-num">05</span>
                    <h3 class="toolkit-title">HA / DR Planner</h3>
                    <p class="toolkit-desc">RTO, RPO, recovery dependencies and operational considerations.</p>
                </div>
                <div class="toolkit-item">
                    <span class="toolkit-num">06</span>
                    <h3 class="toolkit-title">Handover Plan</h3>
                    <p class="toolkit-desc">Architecture documentation, implementation notes and operational guidance.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- 06 ENGINEERING OUTCOMES -->
    <section class="section reveal" style="background: #fff; border-top: 1px solid var(--border-light);">
        <div class="container">
            <span class="eyebrow">ENGINEERING OUTCOMES</span>
            <h2 class="font-display">WHAT THE ENGAGEMENT SHOULD DELIVER.</h2>
            
            <div class="outcomes-compact">
                <div class="outcome-item">
                    <h3 class="outcome-title">SECURITY</h3>
                    <p class="outcome-desc">Reduce unnecessary exposure and improve identity/access controls.</p>
                </div>
                <div class="outcome-item">
                    <h3 class="outcome-title">CLARITY</h3>
                    <p class="outcome-desc">Create an architecture and roadmap the team can understand.</p>
                </div>
                <div class="outcome-item">
                    <h3 class="outcome-title">REPEATABILITY</h3>
                    <p class="outcome-desc">Use Terraform and controlled deployment workflows where appropriate.</p>
                </div>
                <div class="outcome-item">
                    <h3 class="outcome-title">RELIABILITY</h3>
                    <p class="outcome-desc">Design around failure, recovery and workload-specific RTO/RPO.</p>
                </div>
                <div class="outcome-item">
                    <h3 class="outcome-title">SCALABILITY</h3>
                    <p class="outcome-desc">Build infrastructure that can evolve as the workload grows.</p>
                </div>
                <div class="outcome-item">
                    <h3 class="outcome-title">COST AWARENESS</h3>
                    <p class="outcome-desc">Identify unnecessary infrastructure and make architecture decisions with cost in mind.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- 07 ARCHITECTURE PHILOSOPHY -->
    <section class="philosophy-section reveal">
        <h2 class="philosophy-statement">THE GOAL IS NOT MAXIMUM COMPLEXITY.<br><span style="color: var(--accent);">THE GOAL IS THE RIGHT ARCHITECTURE.</span></h2>
        <p class="philosophy-sub">We do not add Azure services simply because they are available. The architecture should solve the requirement.</p>
    </section>

    <!-- 08 HOW WE WORK -->
    <section id="approach" class="section reveal">
        <div class="container">
            <span class="eyebrow">WORKFLOW</span>
            <h2 class="font-display">HOW WE WORK.</h2>
            
            <div class="workflow-grid">
                <div class="workflow-item">
                    <span class="workflow-num">01 / DISCOVER</span>
                    <p class="workflow-desc">Understand the workload, business context, constraints and existing environment.</p>
                </div>
                <div class="workflow-item">
                    <span class="workflow-num">02 / ASSESS</span>
                    <p class="workflow-desc">Identify architectural, security, operational and cost issues.</p>
                </div>
                <div class="workflow-item">
                    <span class="workflow-num">03 / DESIGN</span>
                    <p class="workflow-desc">Define the target architecture and implementation path.</p>
                </div>
                <div class="workflow-item">
                    <span class="workflow-num">04 / IMPLEMENT</span>
                    <p class="workflow-desc">Build and deploy the agreed infrastructure and platform components.</p>
                </div>
                <div class="workflow-item">
                    <span class="workflow-num">05 / VALIDATE</span>
                    <p class="workflow-desc">Test security, connectivity, reliability, monitoring and operational readiness.</p>
                </div>
                <div class="workflow-item">
                    <span class="workflow-num">06 / HAND OVER / EVOLVE</span>
                    <p class="workflow-desc">Provide documentation, handover material and a practical path for future improvements.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- 09 ABOUT ZOLPHIN -->
    <section id="about" class="section reveal" style="background: #fff; border-top: 1px solid var(--border-light);">
        <div class="container">
            <div style="max-width: 800px;">
                <span class="eyebrow">ABOUT ZOLPHIN</span>
                <h2 class="font-display">ENGINEERING-LED. AZURE-FIRST.</h2>
                <p class="subtitle" style="color: var(--text-primary);">
                    Zolphin is an Azure cloud infrastructure and engineering practice focused on helping teams assess, design, implement and improve production cloud environments.
                </p>
                <p class="subtitle">
                    Technical leadership comes from an Azure Solutions Architect with 15+ years of IT infrastructure experience.
                </p>
            </div>
        </div>
    </section>

    <!-- 10 TECHNOLOGY STACK -->
    <section class="section reveal" style="background: #fff; padding-top: 0;">
        <div class="container">
            <div style="border-top: 1px solid var(--border-light); padding-top: 4rem;">
                <h2 class="font-display" style="font-size: 2rem;">TECHNOLOGY STACK</h2>
                <div class="tech-grid">
                    <div class="tech-group">
                        <h4>Cloud</h4>
                        <ul><li>Microsoft Azure</li></ul>
                    </div>
                    <div class="tech-group">
                        <h4>Assessment / Gov</h4>
                        <ul><li>Azure Advisor</li><li>Well-Architected</li><li>Azure Policy</li></ul>
                    </div>
                    <div class="tech-group">
                        <h4>Architecture</h4>
                        <ul><li>Landing Zones</li><li>VNets</li><li>App Gateway</li><li>Front Door</li><li>Hub & Spoke</li></ul>
                    </div>
                    <div class="tech-group">
                        <h4>Compute</h4>
                        <ul><li>App Service</li><li>Container Apps</li><li>AKS</li><li>Virtual Machines</li></ul>
                    </div>
                    <div class="tech-group">
                        <h4>Data</h4>
                        <ul><li>Azure SQL</li><li>Azure Storage</li></ul>
                    </div>
                    <div class="tech-group">
                        <h4>Security</h4>
                        <ul><li>Entra ID</li><li>Managed Identity</li><li>Key Vault</li><li>Private Endpoints</li><li>Azure Firewall</li></ul>
                    </div>
                    <div class="tech-group">
                        <h4>Automation</h4>
                        <ul><li>Terraform</li><li>Azure DevOps</li><li>CI/CD</li></ul>
                    </div>
                    <div class="tech-group">
                        <h4>Observability</h4>
                        <ul><li>Azure Monitor</li><li>Log Analytics</li><li>Application Insights</li></ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 11 FAQ -->
    <section class="section reveal" style="border-top: 1px solid var(--border-light);">
        <div class="container">
            <div class="text-center">
                <span class="eyebrow">FAQ</span>
                <h2 class="font-display">COMMON QUESTIONS</h2>
            </div>
            <div class="faq-list">
                <div class="faq-item">
                    <button class="faq-q" aria-expanded="false">
                        <span>Why Azure?</span>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6"/></svg>
                    </button>
                    <div class="faq-a">
                        Azure provides an enterprise-grade ecosystem with excellent integrated security, identity (Entra ID), and hybrid capabilities. We focus exclusively on Azure to deliver deep, specialized architectural expertise.
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-q" aria-expanded="false">
                        <span>How do you choose between App Service, Container Apps and AKS?</span>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6"/></svg>
                    </button>
                    <div class="faq-a">
                        We default to App Service for standard web workloads. Container Apps is used for containerized workloads not requiring Kubernetes control. We only recommend AKS when the workload genuinely requires advanced orchestration and Kubernetes-native capabilities.
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-q" aria-expanded="false">
                        <span>Do you use Terraform?</span>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6"/></svg>
                    </button>
                    <div class="faq-a">
                        Yes. We strongly advocate for Infrastructure as Code. We use Terraform with reusable modules to ensure environments are consistent, version-controlled, and repeatable.
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-q" aria-expanded="false">
                        <span>Can you work with existing Azure environments?</span>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6"/></svg>
                    </button>
                    <div class="faq-a">
                        Yes. We frequently assess existing environments, identify architectural gaps, and implement improvements with minimal impact to active workloads.
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 12 CONTACT -->
    <section id="contact" class="section reveal" style="padding-bottom: 8rem;">
        <div class="container">
            <div class="cta-box">
                <span class="eyebrow">START A PROJECT</span>
                <h2 class="font-display">HAVE AN AZURE PROBLEM TO SOLVE?</h2>
                <p class="subtitle" style="margin: 0 auto;">
                    Tell us what you are building, migrating, reviewing or trying to improve.<br>We can start with the current situation, the architecture and the practical next step.
                </p>
                <div class="cta-actions">
                    <a href="mailto:hello@zolphin.com" class="btn btn-primary">START A CONVERSATION</a>
                    <a href="https://www.fiverr.com/cloudganesh" target="_blank" rel="noopener noreferrer" class="btn btn-secondary">VIEW FIVERR PROFILE</a>
                </div>
            </div>
        </div>
    </section>

    <!-- 13 FOOTER -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div>
                    <div class="footer-brand">ZOLPHIN</div>
                    <p class="footer-desc">Azure Cloud Consulting & Engineering</p>
                </div>
                <div class="footer-col">
                    <h5>Navigation</h5>
                    <ul>
                        <li><a href="#how-we-help">How We Help</a></li>
                        <li><a href="#challenges">Challenges</a></li>
                        <li><a href="#architectures">Architectures</a></li>
                        <li><a href="#approach">Approach</a></li>
                        <li><a href="#about">About</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h5>Connect</h5>
                    <ul>
                        <li><a href="https://www.fiverr.com/cloudganesh" target="_blank" rel="noopener noreferrer">Fiverr</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2026 Zolphin. All rights reserved.</p>
                <p>Engineered for Production.</p>
            </div>
        </div>
    </footer>

    <!-- Lightbox Modal -->
    <div id="lightbox" class="lightbox" aria-hidden="true">
        <div class="lightbox-overlay"></div>
        <div class="lightbox-content">
            <button id="close-lightbox" class="lightbox-close" aria-label="Close dialog">
                <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
            </button>
            <div class="lightbox-image-container">
                <img src="architecture.png" alt="Original Reference Architecture PNG" id="lightbox-img">
            </div>
        </div>
    </div>
</body>
</html>
HTML_EOF

cat << 'JS_EOF' > script.js
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
    
    // Disable complex animations if prefers-reduced-motion is true
    const prefersReducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

    const revealObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('active');
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
                // Animate progress line and steps
                timelineProgress.style.width = '100%';
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
    const ttTitle = document.getElementById('tt-title');
    const ttDesc = document.getElementById('tt-desc');
    const diagramContainer = document.getElementById('diagram-container');

    // Define related paths for each node to highlight
    const nodeRelations = {
        'node-internet': ['.path-internet'],
        'node-agw': ['.path-internet', '.path-ingress'],
        'node-hub': ['.path-ingress', '.path-workload', '.path-onprem'],
        'node-onprem': ['.path-onprem'],
        'node-entra': ['.path-identity'],
        'node-dev': ['.path-workload', '.path-db', '.path-mon'],
        'node-stage': ['.path-workload', '.path-db', '.path-mon'],
        'node-prod': ['.path-workload', '.path-db', '.path-mon'],
        'node-mon': ['.path-mon']
    };

    svgNodes.forEach(node => {
        node.addEventListener('mouseenter', (e) => {
            if (prefersReducedMotion) return; // Keep interactions simple if reduced motion

            diagramContainer.classList.add('has-hover');
            node.classList.add('hovered');

            // Show Tooltip
            const title = node.getAttribute('data-title');
            const desc = node.getAttribute('data-desc');
            if (title && desc) {
                ttTitle.textContent = title;
                ttDesc.textContent = desc;
                tooltip.classList.add('visible');
                
                // Position tooltip
                const rect = node.getBoundingClientRect();
                const containerRect = diagramContainer.getBoundingClientRect();
                const x = rect.left - containerRect.left + (rect.width / 2);
                const y = rect.top - containerRect.top;
                tooltip.style.left = `${x}px`;
                tooltip.style.top = `${y}px`;
            }

            // Highlight Paths
            const relatedPaths = nodeRelations[node.id];
            if (relatedPaths) {
                relatedPaths.forEach(selector => {
                    document.querySelectorAll(selector).forEach(p => p.classList.add('active'));
                });
            }
        });

        node.addEventListener('mouseleave', () => {
            diagramContainer.classList.remove('has-hover');
            node.classList.remove('hovered');
            tooltip.classList.remove('visible');
            
            // Remove Highlights
            document.querySelectorAll('.svg-path').forEach(p => p.classList.remove('active'));
        });
    });
});
JS_EOF

