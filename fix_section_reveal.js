const fs = require('fs');
let css = fs.readFileSync('styles.css', 'utf8');

css += `
/* Advanced Section Reveal Staggering */
section.reveal {
  opacity: 1 !important;
  transform: none !important;
  transition: none !important;
}

section.reveal > .container > * {
  opacity: 0;
  transform: translateY(15px);
  transition: opacity 0.6s cubic-bezier(0.16, 1, 0.3, 1), transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
}

section.reveal.active > .container > * {
  opacity: 1;
  transform: translateY(0);
}

section.reveal.active > .container > *:nth-child(1) { transition-delay: 0ms; }
section.reveal.active > .container > *:nth-child(2) { transition-delay: 80ms; }
section.reveal.active > .container > *:nth-child(3) { transition-delay: 160ms; }
section.reveal.active > .container > *:nth-child(4) { transition-delay: 240ms; }
section.reveal.active > .container > *:nth-child(5) { transition-delay: 320ms; }

/* Special handling for grids inside sections */
/* If a child is a reveal-stagger grid, we don't want it to fade in as a whole block, 
   we want its children to fade in. So we override its opacity to 1 immediately. */
section.reveal > .container > .reveal-stagger {
  opacity: 1 !important;
  transform: none !important;
  transition: none !important;
}

/* Same for text-center wrappers */
section.reveal > .container > .text-center > * {
  opacity: 0;
  transform: translateY(15px);
  transition: opacity 0.6s cubic-bezier(0.16, 1, 0.3, 1), transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
}
section.reveal.active > .container > .text-center > * {
  opacity: 1;
  transform: translateY(0);
}
section.reveal.active > .container > .text-center > *:nth-child(1) { transition-delay: 0ms; }
section.reveal.active > .container > .text-center > *:nth-child(2) { transition-delay: 80ms; }
section.reveal.active > .container > .text-center > *:nth-child(3) { transition-delay: 160ms; }

section.reveal > .container > .text-center {
  opacity: 1 !important;
  transform: none !important;
  transition: none !important;
}

@media (prefers-reduced-motion: reduce) {
  section.reveal > .container > *, section.reveal > .container > .text-center > * {
    opacity: 1 !important; transform: none !important; transition: none !important; transition-delay: 0ms !important;
  }
}
`;

fs.writeFileSync('styles.css', css);
