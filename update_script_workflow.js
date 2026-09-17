const fs = require('fs');
let script = fs.readFileSync('script.js', 'utf8');

// The observer for reveal adds 'active'. Let's hook the workflow line there.
script = script.replace(/entry\.target\.classList\.add\('active'\);/, `entry.target.classList.add('active');
                if (entry.target.classList.contains('workflow-grid')) {
                    const line = document.querySelector('.workflow-line');
                    if (line) line.style.width = '100%';
                }`);

fs.writeFileSync('script.js', script);
