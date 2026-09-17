const fs = require('fs');
let css = fs.readFileSync('styles.css', 'utf8');

css += `
/* Navigation Update */
.main-nav-links a {
    font-family: var(--font-body);
    font-weight: 500;
    font-size: 13.5px;
}
.btn {
    font-family: var(--font-mono); /* keeping mono */
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.07em;
}
.hero-text h1 {
    font-family: var(--font-display);
    font-weight: 700;
    text-transform: uppercase;
    line-height: 0.98;
    letter-spacing: -0.02em;
    max-width: 1000px;
    margin: 0 auto 1.5rem;
}
.brand, .footer-brand {
    font-family: var(--font-display);
    font-weight: 700;
    font-size: 19px;
    letter-spacing: 0.04em;
    text-transform: uppercase;
}
`;
fs.writeFileSync('styles.css', css);
