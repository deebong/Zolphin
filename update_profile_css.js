const fs = require('fs');
let css = fs.readFileSync('styles.css', 'utf8');

css = css.replace(/\.profile-list li/g, '.profile-group');
fs.writeFileSync('styles.css', css);
