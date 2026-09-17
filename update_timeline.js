const fs = require('fs');

let html = fs.readFileSync('index.html', 'utf8');

html = html.replace(/<div class="timeline-progress" id="timeline-progress"><\/div>/, 
`<div class="timeline-progress" id="timeline-progress">
    <div class="timeline-dot" style="position: absolute; right: -4px; top: -3px; width: 8px; height: 8px; background: var(--bg-card); border: 2px solid var(--accent); border-radius: 50%; opacity: 0; transition: opacity 0.3s ease;"></div>
</div>`);

fs.writeFileSync('index.html', html);

let script = fs.readFileSync('script.js', 'utf8');
script = script.replace(/timelineProgress\.style\.width = '100%';/, `timelineProgress.style.width = '100%';
                const dot = timelineProgress.querySelector('.timeline-dot');
                if (dot) dot.style.opacity = '1';`);
script = script.replace(/timelineProgress\.style\.height = '100%';/, `timelineProgress.style.height = '100%';
                const dot = timelineProgress.querySelector('.timeline-dot');
                if (dot) dot.style.opacity = '1';`);
fs.writeFileSync('script.js', script);

