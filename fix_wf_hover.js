const fs = require('fs');
let css = fs.readFileSync('styles.css', 'utf8');

css = css.replace(/\.workflow-step:hover \.workflow-connector/g, '.workflow-step:hover + .workflow-connector');
fs.writeFileSync('styles.css', css);
