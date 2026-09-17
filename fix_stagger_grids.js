const fs = require('fs');
let html = fs.readFileSync('index.html', 'utf8');

html = html.replace(/<div class="challenge-matrix">/, '<div class="challenge-matrix reveal-stagger reveal">');
html = html.replace(/<div class="ref-grid">/, '<div class="ref-grid reveal-stagger reveal">');
html = html.replace(/<div class="toolkit-board">/, '<div class="toolkit-board reveal-stagger reveal">');
html = html.replace(/<div class="outcome-matrix">/, '<div class="outcome-matrix reveal-stagger reveal">');
html = html.replace(/<div class="tech-matrix">/, '<div class="tech-matrix reveal-stagger reveal">');

fs.writeFileSync('index.html', html);
