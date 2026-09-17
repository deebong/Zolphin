const fs = require('fs');

let html = fs.readFileSync('index.html', 'utf8');

// Replace workflow-rail with staggered one
html = html.replace(/<div class="workflow-rail">/, '<div class="workflow-rail reveal-stagger reveal">');

// Update eyebrow
html = html.replace(/<span class="eyebrow">WORKFLOW<\/span>/, '<span class="eyebrow">06 / WORKFLOW</span>');

fs.writeFileSync('index.html', html);
