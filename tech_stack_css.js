const fs = require('fs');
let css = fs.readFileSync('styles.css', 'utf8');
css += `
.tech-category:hover .tech-chip {
  border-color: rgba(0, 120, 212, 0.2);
  background: rgba(0, 120, 212, 0.02);
}
.tech-category:hover .tech-chip:hover {
  border-color: var(--accent);
  background: rgba(0, 120, 212, 0.05);
}
`;
fs.writeFileSync('styles.css', css);
