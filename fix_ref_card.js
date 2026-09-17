const fs = require('fs');
let css = fs.readFileSync('styles.css', 'utf8');

css = css.replace(/\.arch-card/g, '.ref-card');
css = css.replace(/\.arch-link/g, '.ref-cta');
// Add logic to move arrow on hover
css += `
.ref-card:hover .ref-cta-arrow {
  display: inline-block;
  transform: translateX(4px);
  transition: transform 0.3s ease;
}
.ref-cta-arrow {
  transition: transform 0.3s ease;
  display: inline-block;
}
.ref-card .ref-title {
  font-family: var(--font-display);
  letter-spacing: 0.02em;
  transition: color 0.3s ease;
}
.ref-card:hover .ref-title {
  color: var(--accent);
}
`;
fs.writeFileSync('styles.css', css);

let html = fs.readFileSync('index.html', 'utf8');
html = html.replace(/<span class="eyebrow">REFERENCE ARCHITECTURES<\/span>/, '<span class="eyebrow">03 / REFERENCE ARCHITECTURES</span>');
fs.writeFileSync('index.html', html);
