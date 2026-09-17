const fs = require('fs');
let css = fs.readFileSync('styles.css', 'utf8');

css = css.replace(/\.ts-ring/g, '.node-ring');
css = css.replace(/\.ts-core/g, '.node-inner');
css = css.replace(/\.ts-title/g, '.timeline-title');
css = css.replace(/\.wf-title/g, '.workflow-title');
css = css.replace(/\.wf-icon/g, '.workflow-icon');
css = css.replace(/\.wf-connector/g, '.workflow-connector');
css = css.replace(/\.deliv-icon-wrapper/g, '.tk-icon');
// Ensure workflow title has display font
css += `
.workflow-step h4 { font-family: var(--font-display); letter-spacing: 0.02em; }
.tk-card h4 { font-family: var(--font-display); letter-spacing: 0.02em; }
.outcome-item h4 { font-family: var(--font-display); letter-spacing: 0.02em; }
.tech-cat-header h4 { font-family: var(--font-display); letter-spacing: 0.02em; }
`;

fs.writeFileSync('styles.css', css);
