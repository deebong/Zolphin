const fs = require('fs');

let script = fs.readFileSync('script.js', 'utf8');

// Add stagger logic to reveal observer
script = script.replace(/entry\.target\.classList\.add\('active'\);/, `entry.target.classList.add('active');
                
                // If it's a stagger container, apply delays to children
                if (entry.target.classList.contains('reveal-stagger')) {
                    const children = Array.from(entry.target.children);
                    children.forEach((child, index) => {
                        // Base delay of 150ms + 80ms per child
                        child.style.transitionDelay = (150 + (index * 80)) + 'ms';
                        child.classList.add('active');
                    });
                }`);

fs.writeFileSync('script.js', script);
