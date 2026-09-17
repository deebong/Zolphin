const fs = require('fs');

let css = fs.readFileSync('styles.css', 'utf8');
css += `
/* Stagger Reveal */
.reveal-stagger > * {
  opacity: 0;
  transform: translateY(20px);
  transition: opacity 0.6s cubic-bezier(0.16, 1, 0.3, 1), transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
}
.reveal-stagger.active > * {
  opacity: 1;
  transform: translateY(0);
}
.reveal-stagger.active > *:nth-child(1) { transition-delay: 80ms; }
.reveal-stagger.active > *:nth-child(2) { transition-delay: 160ms; }
.reveal-stagger.active > *:nth-child(3) { transition-delay: 240ms; }
.reveal-stagger.active > *:nth-child(4) { transition-delay: 320ms; }
.reveal-stagger.active > *:nth-child(5) { transition-delay: 400ms; }
.reveal-stagger.active > *:nth-child(6) { transition-delay: 480ms; }
.reveal-stagger.active > *:nth-child(7) { transition-delay: 560ms; }
.reveal-stagger.active > *:nth-child(8) { transition-delay: 640ms; }
@media (prefers-reduced-motion: reduce) {
  .reveal-stagger > * { opacity: 1; transform: none; transition: none; transition-delay: 0ms !important; }
}

/* Fix timeline title to display font */
.ts-title { font-family: var(--font-display); text-transform: uppercase; letter-spacing: 0.02em; }
`;
fs.writeFileSync('styles.css', css);

let html = fs.readFileSync('index.html', 'utf8');

// Apply reveal-stagger to relevant grids
html = html.replace(/<div class="challenges-grid">/, '<div class="challenges-grid reveal-stagger reveal">');
html = html.replace(/<div class="arch-grid">/, '<div class="arch-grid reveal-stagger reveal">');
html = html.replace(/<div class="tk-grid">/, '<div class="tk-grid reveal-stagger reveal">');
html = html.replace(/<div class="outcomes-grid">/, '<div class="outcomes-grid reveal-stagger reveal">');
html = html.replace(/<div class="workflow-grid">/, '<div class="workflow-grid reveal-stagger reveal">');
// Since they are now `.reveal`, we need to make sure the sections containing them are either not `.reveal` or they can both reveal.
// Actually, nested `.reveal` works fine with the intersection observer, they will just trigger when they enter.

// Remove .reveal from the section wrapper of these grids to avoid double animation wrapper delays.
// Wait, the grid itself is now `.reveal`, so that's fine.

// Add workflow line logic
html = html.replace(/<div class="workflow-grid reveal-stagger reveal">/, `
<div class="workflow-rail" style="position: relative;">
  <div class="workflow-line" style="position: absolute; top: 24px; left: 0; height: 2px; width: 0%; background: var(--accent); transition: width 1.5s cubic-bezier(0.16, 1, 0.3, 1); z-index: 0;"></div>
  <div class="workflow-grid reveal-stagger reveal" style="position: relative; z-index: 1;">
`);
// Close the new wrapper 
html = html.replace(/<\/div>\s*<\/div>\s*<\/section>\s*<!-- 09 ABOUT -->/, '</div></div></div></section>\n    <!-- 09 ABOUT -->');
// Add to script.js to trigger the line
fs.writeFileSync('index.html', html);

