const fs = require('fs');
let css = fs.readFileSync('styles.css', 'utf8');

css += `
/* Timeline Hover & Focus Updates */
.timeline-step { transition: transform 0.3s ease; }
.timeline-content { position: relative; padding-left: 0; }
.timeline-step .vertical-accent {
  position: absolute;
  left: -1rem;
  top: 0;
  bottom: 0;
  width: 2px;
  background: var(--accent);
  transform: scaleY(0);
  transform-origin: top;
  transition: transform 0.3s cubic-bezier(0.16, 1, 0.3, 1);
}
.timeline-step:hover .vertical-accent, .timeline-node:focus + .timeline-content .vertical-accent {
  transform: scaleY(1);
}
.timeline-step:hover .timeline-content, .timeline-node:focus + .timeline-content {
  opacity: 1;
}
.timeline-list li {
  transition: transform 0.3s ease;
}
.timeline-step:hover .timeline-list li, .timeline-node:focus + .timeline-content .timeline-list li {
  transform: translateX(4px);
}
.timeline-step:hover .node-inner svg {
  transform: scale(1.1);
  transition: transform 0.3s ease;
}
`;
fs.writeFileSync('styles.css', css);

let html = fs.readFileSync('index.html', 'utf8');
// Inject vertical accent line into timeline-content
html = html.replace(/<div class="timeline-content">/g, '<div class="timeline-content"><div class="vertical-accent"></div>');
fs.writeFileSync('index.html', html);
