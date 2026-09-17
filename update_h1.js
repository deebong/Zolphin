const fs = require('fs');
let html = fs.readFileSync('index.html', 'utf8');

html = html.replace(/HAVE AN AZURE PROBLEM\? LET'S ENGINEER THE RIGHT PATH\./, "HAVE AN AZURE PROBLEM?<br>LET'S ENGINEER THE<br>RIGHT PATH.");

fs.writeFileSync('index.html', html);
