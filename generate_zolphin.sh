#!/bin/bash

# Generates the fully refactored index.html
cat << 'HTML_EOF' > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZOLPHIN | Azure Cloud Consulting & Engineering</title>
    <meta name="description" content="Secure, scalable and production-ready Azure infrastructure designed around the workload. Azure architecture, networking, security, Terraform, DevOps, and AKS.">
    
    <link rel="canonical" href="https://zolphin.com/">
    <meta property="og:title" content="ZOLPHIN | Azure Cloud Consulting & Engineering">
    <meta property="og:description" content="Secure, scalable and production-ready Azure infrastructure designed around the workload.">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://zolphin.com/">
    
    <link rel="stylesheet" href="styles.css">
    <script src="script.js" defer></script>
</head>
<body>

    <!-- NAVIGATION -->
    <div class="nav-wrapper">
        <nav class="main-nav" aria-label="Primary Navigation">
            <a href="/" class="brand">
                <div class="brand-icon"></div>
                <div>
                    ZOLPHIN
                </div>
            </a>

            <button class="mobile-menu-toggle" aria-label="Toggle navigation" aria-expanded="false" aria-controls="main-nav-links">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
            </button>

            <ul class="main-nav-links" id="main-nav-links">
                <li><a href="#how-we-help">How We Help</a></li>
                <li><a href="#challenges">Challenges</a></li>
                <li><a href="#architectures">Architectures</a></li>
                <li><a href="#approach">Approach</a></li>
                <li><a href="#about">About</a></li>
            </ul>

            <div class="nav-actions">
                <a href="https://www.fiverr.com/cloudganesh" target="_blank" rel="noopener noreferrer" class="btn btn-secondary">Fiverr</a>
                <a href="#contact" class="btn btn-primary">Start a Project</a>
            </div>
        </nav>
    </div>

    <!-- 01 HERO -->
    <header class="section hero reveal">
        <div class="container hero-content">
            <span class="eyebrow">AZURE CLOUD CONSULTING & ENGINEERING</span>
            <h1 class="font-display">
                HAVE AN<br>
                AZURE PROBLEM?<br>
                LET'S ENGINEER<br>
                THE RIGHT PATH.
            </h1>
            <p class="subtitle">
                Whether you are designing a new Azure environment, reviewing an existing one, migrating workloads, reducing cloud costs or improving security and reliability, Zolphin helps assess the problem, design the right architecture and implement the solution.
            </p>
            <p style="font-family: var(--font-mono); font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--text-secondary); margin-bottom: 3rem;">
                Architecture &bull; Networking &bull; Security &bull; Terraform &bull; DevOps &bull; AKS
            </p>
            
            <div style="display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap;">
                <a href="#contact" class="btn btn-accent" style="padding: 1rem 2rem; font-size: 0.875rem;">START A CONVERSATION</a>
                <a href="#how-we-help" class="btn btn-secondary" style="padding: 1rem 2rem; font-size: 0.875rem;">SEE HOW WE HELP</a>
            </div>

            <!-- Architecture Image Panel -->
            <div class="hero-visual reveal" style="position: relative;">
                <div class="visual-header" style="justify-content: space-between;">
                    <div style="display: flex; align-items: center; gap: 0.75rem;">
                        <div class="dot-group">
                            <div class="dot"></div><div class="dot"></div><div class="dot"></div>
                        </div>
                        <span class="visual-title">AZURE NETWORKING & SECURITY ARCHITECTURE</span>
                    </div>
                    <div style="display: flex; align-items: center; gap: 1rem;">
                        <span style="font-family: var(--font-mono); font-size: 0.65rem; padding: 0.25rem 0.5rem; background: var(--bg-main); border: 1px solid var(--border-light); border-radius: 4px; color: var(--text-secondary);" class="desktop-only">REFERENCE DESIGN</span>
                        <button id="open-lightbox" style="background: none; border: none; font-family: var(--font-mono); font-size: 0.65rem; font-weight: 600; cursor: pointer; color: var(--accent); display: flex; align-items: center; gap: 0.25rem;">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M15 3h6v6M9 21H3v-6M21 3l-7 7M3 21l7-7"/></svg>
                            <span class="desktop-only">VIEW FULL DIAGRAM</span>
                        </button>
                    </div>
                </div>
                <div class="visual-body" style="padding: 0; background: var(--bg-card); cursor: pointer;" id="architecture-img-container">
                    <img src="architecture.png" alt="Illustrative Reference Architecture" style="width: 100%; height: auto; display: block; object-fit: contain;">
                </div>
                <div style="padding: 1rem; text-align: center; border-top: 1px solid var(--border-light); background: #fafafa; font-family: var(--font-mono); font-size: 0.65rem; color: var(--text-secondary); letter-spacing: 0.05em;">
                    ILLUSTRATIVE REFERENCE ARCHITECTURE
                </div>
            </div>
        </div>
    </header>

    <!-- 02 HOW WE HELP -->
    <section id="how-we-help" class="section reveal">
        <div class="container">
            <span class="eyebrow">HOW WE HELP</span>
            <h2 class="font-display">
                FROM AZURE<br>
                PROBLEMS<br>
                TO PRACTICAL<br>
                SOLUTIONS.
            </h2>
            <p class="subtitle" style="margin-bottom: 4rem;">
                Most Azure challenges are not caused by a lack of available services. They come from unclear requirements, architectural decisions, security gaps, operational complexity or infrastructure that has evolved without a clear design.<br><br>
                Zolphin approaches the problem in stages.
            </p>

            <div class="journey-grid">
                <!-- Assess -->
                <div class="journey-card" id="assess">
                    <div class="journey-header">
                        <span>01</span>
                        <span>ASSESS</span>
                    </div>
                    <div class="journey-visual">
                        <svg viewBox="0 0 200 120" width="80%">
                            <rect x="50" y="20" width="100" height="20" rx="4" fill="none" stroke="rgba(16,20,27,0.15)" stroke-dasharray="2 2"/>
                            <path d="M100 40 L100 60" stroke="#4DA3FF" stroke-width="2" marker-end="url(#arrow)"/>
                            <circle cx="100" cy="75" r="15" fill="none" stroke="#4DA3FF" stroke-width="2"/>
                            <path d="M95 75 L100 80 L108 70" fill="none" stroke="#4DA3FF" stroke-width="2"/>
                            <text x="100" y="105" fill="var(--text-secondary)" font-family="monospace" font-size="8" text-anchor="middle">FINDINGS & PRIORITIES</text>
                        </svg>
                    </div>
                    <h3 class="journey-title">Understand what is actually happening.</h3>
                    <p class="journey-desc">We review the current Azure environment, architecture, security posture, DevSecOps practices, cost profile and operational risks before recommending changes.</p>
                    <div class="journey-tags">
                        <span class="journey-tag">Architecture Health Check</span>
                        <span class="journey-tag">Security Review</span>
                        <span class="journey-tag">Cost Review</span>
                        <span class="journey-tag">DevSecOps Review</span>
                    </div>
                    <a href="#approach" class="ref-cta">
                        EXPLORE ASSESSMENT
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </a>
                </div>
                <!-- Design -->
                <div class="journey-card" id="design">
                    <div class="journey-header">
                        <span>02</span>
                        <span>DESIGN</span>
                    </div>
                    <div class="journey-visual">
                        <svg viewBox="0 0 200 120" width="80%">
                            <rect x="30" y="50" width="40" height="20" rx="2" fill="none" stroke="rgba(16,20,27,0.1)"/>
                            <path d="M70 60 L90 60" stroke="#4DA3FF" stroke-width="2" marker-end="url(#arrow)"/>
                            <rect x="90" y="30" width="80" height="60" rx="4" fill="rgba(77,163,255,0.05)" stroke="#4DA3FF"/>
                            <rect x="100" y="45" width="20" height="30" rx="2" fill="#fff" stroke="rgba(16,20,27,0.1)"/>
                            <rect x="130" y="45" width="30" height="30" rx="2" fill="#fff" stroke="rgba(16,20,27,0.1)"/>
                        </svg>
                    </div>
                    <h3 class="journey-title">Define the architecture that should exist.</h3>
                    <p class="journey-desc">We translate requirements and assessment findings into a practical Azure architecture aligned with security, scalability, reliability, operational and cost requirements.</p>
                    <div class="journey-tags">
                        <span class="journey-tag">Landing Zone</span>
                        <span class="journey-tag">Networking</span>
                        <span class="journey-tag">HA / DR</span>
                        <span class="journey-tag">Migration Architecture</span>
                    </div>
                    <a href="#approach" class="ref-cta">
                        EXPLORE DESIGN
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </a>
                </div>
                <!-- Implement -->
                <div class="journey-card" id="implement">
                    <div class="journey-header">
                        <span>03</span>
                        <span>IMPLEMENT</span>
                    </div>
                    <div class="journey-visual">
                        <svg viewBox="0 0 200 120" width="80%">
                            <rect x="20" y="50" width="30" height="20" rx="2" fill="none" stroke="rgba(16,20,27,0.1)"/>
                            <path d="M50 60 L70 60" stroke="#4DA3FF" stroke-width="2" marker-end="url(#arrow)"/>
                            <circle cx="85" cy="60" r="15" fill="#4DA3FF"/>
                            <path d="M100 60 L120 60" stroke="#4DA3FF" stroke-width="2" marker-end="url(#arrow)"/>
                            <rect x="120" y="40" width="60" height="40" rx="4" fill="#10141B"/>
                            <path d="M 140 60 L 160 60 M 150 50 L 150 70" stroke="#fff" stroke-width="2"/>
                        </svg>
                    </div>
                    <h3 class="journey-title">Turn architecture into working infrastructure.</h3>
                    <p class="journey-desc">We implement the approved architecture using repeatable infrastructure, controlled deployment workflows and production-ready Azure services.</p>
                    <div class="journey-tags">
                        <span class="journey-tag">Terraform</span>
                        <span class="journey-tag">Azure DevOps</span>
                        <span class="journey-tag">CI/CD</span>
                        <span class="journey-tag">Identity & Security</span>
                    </div>
                    <a href="#approach" class="ref-cta">
                        EXPLORE IMPLEMENTATION
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </a>
                </div>
                <!-- Optimize -->
                <div class="journey-card" id="optimize">
                    <div class="journey-header">
                        <span>04</span>
                        <span>OPTIMIZE</span>
                    </div>
                    <div class="journey-visual">
                        <svg viewBox="0 0 200 120" width="80%">
                            <path d="M 40 80 Q 70 80 100 50 T 160 30" fill="none" stroke="rgba(16,20,27,0.1)" stroke-width="2" stroke-dasharray="4 4"/>
                            <path d="M 40 80 Q 70 60 100 40 T 160 20" fill="none" stroke="#4DA3FF" stroke-width="2"/>
                            <circle cx="160" cy="20" r="4" fill="#4DA3FF"/>
                            <circle cx="100" cy="40" r="4" fill="#4DA3FF"/>
                            <circle cx="40" cy="80" r="4" fill="#4DA3FF"/>
                        </svg>
                    </div>
                    <h3 class="journey-title">Improve what already exists.</h3>
                    <p class="journey-desc">Existing Azure environments can often be made more secure, reliable, performant and cost-aware without rebuilding everything.</p>
                    <div class="journey-tags">
                        <span class="journey-tag">Cost</span>
                        <span class="journey-tag">Security</span>
                        <span class="journey-tag">Reliability</span>
                        <span class="journey-tag">Operational Maturity</span>
                    </div>
                    <a href="#approach" class="ref-cta">
                        EXPLORE OPTIMIZATION
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </a>
                </div>
                <!-- Reference Architectures -->
                <div class="journey-card">
                    <div class="journey-header">
                        <span>05</span>
                        <span>REFERENCE ARCHITECTURES</span>
                    </div>
                    <div class="journey-visual">
                        <svg viewBox="0 0 200 120" width="80%">
                            <rect x="40" y="20" width="50" height="30" rx="4" fill="none" stroke="#4DA3FF" stroke-width="2"/>
                            <rect x="110" y="20" width="50" height="30" rx="4" fill="none" stroke="rgba(16,20,27,0.1)" stroke-width="2"/>
                            <rect x="40" y="70" width="50" height="30" rx="4" fill="none" stroke="rgba(16,20,27,0.1)" stroke-width="2"/>
                            <rect x="110" y="70" width="50" height="30" rx="4" fill="none" stroke="rgba(16,20,27,0.1)" stroke-width="2"/>
                        </svg>
                    </div>
                    <h3 class="journey-title">See how we approach common Azure problems.</h3>
                    <p class="journey-desc">Representative architectures demonstrate how Zolphin approaches application platforms, enterprise foundations, infrastructure automation, Kubernetes, migration and resilience.</p>
                    <div class="journey-tags">
                        <span class="journey-tag">Landing Zone</span>
                        <span class="journey-tag">SaaS Platform</span>
                        <span class="journey-tag">AKS</span>
                    </div>
                    <a href="#architectures" class="ref-cta">
                        EXPLORE ARCHITECTURES
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </a>
                </div>
                <!-- Client Toolkit -->
                <div class="journey-card">
                    <div class="journey-header">
                        <span>06</span>
                        <span>CLIENT TOOLKIT</span>
                    </div>
                    <div class="journey-visual">
                        <svg viewBox="0 0 200 120" width="80%">
                            <rect x="70" y="20" width="60" height="80" rx="4" fill="none" stroke="#4DA3FF" stroke-width="2"/>
                            <line x1="80" y1="40" x2="120" y2="40" stroke="rgba(16,20,27,0.1)" stroke-width="2"/>
                            <line x1="80" y1="60" x2="120" y2="60" stroke="rgba(16,20,27,0.1)" stroke-width="2"/>
                            <line x1="80" y1="80" x2="100" y2="80" stroke="rgba(16,20,27,0.1)" stroke-width="2"/>
                            <circle cx="90" cy="40" r="2" fill="#4DA3FF"/>
                        </svg>
                    </div>
                    <h3 class="journey-title">Turn recommendations into an actionable plan.</h3>
                    <p class="journey-desc">We provide practical working documents that help teams understand priorities, make decisions and execute the next stage of their cloud journey.</p>
                    <div class="journey-tags">
                        <span class="journey-tag">Health Check</span>
                        <span class="journey-tag">Roadmap</span>
                        <span class="journey-tag">Handover</span>
                    </div>
                    <a href="#toolkit" class="ref-cta">
                        EXPLORE CLIENT TOOLKIT
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 03 COMMON CHALLENGES -->
    <section id="challenges" class="section reveal" style="background: #fff; border-top: 1px solid var(--border-light); border-bottom: 1px solid var(--border-light);">
        <div class="container">
            <span class="eyebrow">COMMON AZURE CHALLENGES</span>
            <h2 class="font-display" style="margin-bottom: 3rem;">
                WHAT ARE YOU<br>
                TRYING TO FIX?
            </h2>
            <div class="challenges-grid">
                <div class="challenge-item">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--accent)" stroke-width="2"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                    <p>"Our Azure environment has grown without a clear architecture."</p>
                </div>
                <div class="challenge-item">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--accent)" stroke-width="2"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                    <p>"We need a secure Landing Zone."</p>
                </div>
                <div class="challenge-item">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--accent)" stroke-width="2"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                    <p>"We are moving workloads from on-premises to Azure."</p>
                </div>
                <div class="challenge-item">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--accent)" stroke-width="2"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                    <p>"Our cloud costs need attention."</p>
                </div>
                <div class="challenge-item">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--accent)" stroke-width="2"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                    <p>"We need to improve security and private connectivity."</p>
                </div>
                <div class="challenge-item">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--accent)" stroke-width="2"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                    <p>"We are considering AKS but are unsure whether we actually need it."</p>
                </div>
                <div class="challenge-item">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--accent)" stroke-width="2"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                    <p>"Our deployment process is manual or unreliable."</p>
                </div>
                <div class="challenge-item">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--accent)" stroke-width="2"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                    <p>"We need a practical HA/DR strategy."</p>
                </div>
                <div class="challenge-item">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--accent)" stroke-width="2"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                    <p>"We need an independent review of our existing Azure environment."</p>
                </div>
            </div>
        </div>
    </section>

    <!-- 07 REFERENCE ARCHITECTURES -->
    <section id="architectures" class="section reveal">
        <div class="container">
            <span class="eyebrow">REFERENCE ARCHITECTURES</span>
            <h2 class="font-display">
                SEE THE<br>
                ARCHITECTURE<br>
                BEHIND THE APPROACH.
            </h2>
            <p class="subtitle" style="margin-bottom: 1rem;">
                Representative architectures demonstrate how Zolphin approaches application platforms, enterprise foundations, infrastructure automation, Kubernetes, migration and resilience.
            </p>
            <p style="font-family: var(--font-mono); font-size: 0.75rem; color: var(--text-secondary); background: #fff; display: inline-block; padding: 0.5rem 1rem; border-radius: 4px; border: 1px solid var(--border-light);">
                <strong>REFERENCE ARCHITECTURES:</strong> These examples illustrate the Zolphin engineering approach and are not presented as client engagements.
            </p>

            <div class="ref-grid">
                <!-- Card 01 -->
                <div class="ref-card">
                    <div class="ref-header">
                        <span>01</span>
                        <span>APPLICATION PLATFORM</span>
                    </div>
                    <div class="ref-visual">
                        <svg viewBox="0 0 200 150" width="80%">
                            <rect x="20" y="20" width="160" height="110" rx="8" fill="none" stroke="rgba(16,20,27,0.1)" stroke-dasharray="4 4"/>
                            <rect x="40" y="40" width="120" height="30" rx="4" fill="#fff" stroke="#4DA3FF"/>
                            <rect x="40" y="80" width="50" height="30" rx="4" fill="#fff" stroke="rgba(16,20,27,0.1)"/>
                            <rect x="110" y="80" width="50" height="30" rx="4" fill="#fff" stroke="rgba(16,20,27,0.1)"/>
                            <path d="M 65 70 L 65 80 M 135 70 L 135 80" stroke="#4DA3FF" stroke-width="2"/>
                        </svg>
                    </div>
                    <h3 class="ref-title">Production SaaS Platform</h3>
                    <p class="ref-desc">A secure production foundation for SaaS workloads with controlled ingress, private data connectivity, managed identity, Terraform, CI/CD and operational monitoring.</p>
                    <div class="ref-tags">
                        <span class="ref-tag">App Gateway</span><span class="ref-tag">Azure SQL</span><span class="ref-tag">Key Vault</span>
                    </div>
                    <a href="case-studies/production-saas.html" class="ref-cta">
                        EXPLORE ARCHITECTURE
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </a>
                </div>

                <!-- Card 02 -->
                <div class="ref-card">
                    <div class="ref-header">
                        <span>02</span>
                        <span>ENTERPRISE CLOUD</span>
                    </div>
                    <div class="ref-visual">
                        <svg viewBox="0 0 200 150" width="80%">
                            <rect x="70" y="20" width="60" height="110" rx="8" fill="#fff" stroke="#4DA3FF" stroke-width="2"/>
                            <rect x="20" y="55" width="40" height="40" rx="8" fill="none" stroke="rgba(16,20,27,0.1)"/>
                            <rect x="140" y="55" width="40" height="40" rx="8" fill="none" stroke="rgba(16,20,27,0.1)"/>
                            <path d="M 60 75 L 70 75 M 130 75 L 140 75" stroke="#4DA3FF" stroke-width="2" stroke-dasharray="2 2"/>
                        </svg>
                    </div>
                    <h3 class="ref-title">Azure Landing Zone</h3>
                    <p class="ref-desc">A structured Azure foundation for organizations that need governance, shared connectivity, security controls and isolated workload environments.</p>
                    <div class="ref-tags">
                        <span class="ref-tag">Hub & Spoke</span><span class="ref-tag">Azure Firewall</span><span class="ref-tag">Entra ID</span>
                    </div>
                    <a href="#architectures" class="ref-cta">
                        VIEW ARCHITECTURE
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </a>
                </div>

                <!-- Card 03 -->
                <div class="ref-card">
                    <div class="ref-header">
                        <span>03</span>
                        <span>INFRASTRUCTURE AS CODE</span>
                    </div>
                    <div class="ref-visual">
                        <svg viewBox="0 0 200 150" width="80%">
                            <rect x="20" y="60" width="40" height="30" rx="4" fill="#fff" stroke="rgba(16,20,27,0.1)"/>
                            <rect x="80" y="60" width="40" height="30" rx="4" fill="#fff" stroke="#4DA3FF"/>
                            <rect x="140" y="60" width="40" height="30" rx="4" fill="#10141B"/>
                            <path d="M 60 75 L 80 75 M 120 75 L 140 75" stroke="rgba(16,20,27,0.1)" stroke-width="2"/>
                        </svg>
                    </div>
                    <h3 class="ref-title">Terraform + Azure DevOps</h3>
                    <p class="ref-desc">Repeatable Azure infrastructure with reusable Terraform modules, environment separation, plan/apply workflows, approvals and controlled deployments.</p>
                    <div class="ref-tags">
                        <span class="ref-tag">Terraform</span><span class="ref-tag">CI/CD</span><span class="ref-tag">Env Controls</span>
                    </div>
                    <a href="#architectures" class="ref-cta">
                        VIEW ARCHITECTURE
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </a>
                </div>

                <!-- Card 04 -->
                <div class="ref-card">
                    <div class="ref-header">
                        <span>04</span>
                        <span>CONTAINER PLATFORM</span>
                    </div>
                    <div class="ref-visual">
                        <svg viewBox="0 0 200 150" width="80%">
                            <rect x="20" y="20" width="160" height="110" rx="8" fill="#fff" stroke="rgba(16,20,27,0.1)"/>
                            <rect x="40" y="50" width="120" height="60" rx="4" fill="rgba(77,163,255,0.05)" stroke="#4DA3FF" stroke-dasharray="4 4"/>
                            <circle cx="70" cy="80" r="10" fill="#fff" stroke="#4DA3FF"/>
                            <circle cx="100" cy="80" r="10" fill="#fff" stroke="#4DA3FF"/>
                            <circle cx="130" cy="80" r="10" fill="#fff" stroke="#4DA3FF"/>
                        </svg>
                    </div>
                    <h3 class="ref-title">Production AKS Architecture</h3>
                    <p class="ref-desc">A Kubernetes-oriented Azure architecture for workloads that genuinely require advanced orchestration, networking and container platform control.</p>
                    <div class="ref-tags">
                        <span class="ref-tag">AKS</span><span class="ref-tag">VNet</span><span class="ref-tag">Managed Identity</span>
                    </div>
                    <a href="#architectures" class="ref-cta">
                        VIEW ARCHITECTURE
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </a>
                </div>

                <!-- Card 05 -->
                <div class="ref-card">
                    <div class="ref-header">
                        <span>05</span>
                        <span>CLOUD MIGRATION</span>
                    </div>
                    <div class="ref-visual">
                        <svg viewBox="0 0 200 150" width="80%">
                            <rect x="20" y="40" width="50" height="70" rx="4" fill="#fff" stroke="rgba(16,20,27,0.1)"/>
                            <rect x="130" y="40" width="50" height="70" rx="4" fill="#fff" stroke="#4DA3FF"/>
                            <path d="M 70 75 L 130 75" stroke="#10141B" stroke-width="2" stroke-dasharray="4 4"/>
                            <path d="M 120 65 L 130 75 L 120 85" fill="none" stroke="#10141B" stroke-width="2"/>
                        </svg>
                    </div>
                    <h3 class="ref-title">On-Premises to Azure</h3>
                    <p class="ref-desc">A migration architecture covering connectivity, workload assessment, target architecture, data movement, security, cutover and operational readiness.</p>
                    <div class="ref-tags">
                        <span class="ref-tag">ExpressRoute</span><span class="ref-tag">Migration</span><span class="ref-tag">DR</span>
                    </div>
                    <a href="#architectures" class="ref-cta">
                        VIEW ARCHITECTURE
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </a>
                </div>

                <!-- Card 06 -->
                <div class="ref-card">
                    <div class="ref-header">
                        <span>06</span>
                        <span>SECURITY & RESILIENCE</span>
                    </div>
                    <div class="ref-visual">
                        <svg viewBox="0 0 200 150" width="80%">
                            <circle cx="100" cy="75" r="40" fill="none" stroke="rgba(16,20,27,0.1)" stroke-width="2"/>
                            <circle cx="100" cy="75" r="30" fill="none" stroke="#4DA3FF" stroke-width="2"/>
                            <rect x="90" y="65" width="20" height="20" rx="2" fill="#10141B"/>
                            <path d="M 95 65 V 60 A 5 5 0 0 1 105 60 V 65" fill="none" stroke="#10141B" stroke-width="2"/>
                        </svg>
                    </div>
                    <h3 class="ref-title">Secure & Resilient Foundation</h3>
                    <p class="ref-desc">An architecture focused on private connectivity, identity, secrets, monitoring, backup, disaster recovery and operational resilience.</p>
                    <div class="ref-tags">
                        <span class="ref-tag">Key Vault</span><span class="ref-tag">Private Access</span><span class="ref-tag">RTO / RPO</span>
                    </div>
                    <a href="#architectures" class="ref-cta">
                        VIEW ARCHITECTURE
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 06 CLIENT TOOLKIT -->
    <section id="toolkit" class="section reveal" style="background: #fff; border-top: 1px solid var(--border-light);">
        <div class="container">
            <span class="eyebrow">CLIENT TOOLKIT</span>
            <h2 class="font-display">
                DELIVERABLES<br>
                THAT HELP TEAMS<br>
                MOVE FORWARD.
            </h2>
            <p class="subtitle" style="margin-bottom: 3rem;">
                Consulting should produce practical outputs, not only meetings. We provide working artifacts to execute the next stage of the cloud journey.
            </p>

            <div class="toolkit-grid">
                <div class="toolkit-item">
                    <h3 class="toolkit-title">HEALTH CHECK</h3>
                    <p class="toolkit-desc">Structured findings across architecture, security, cost and operations.</p>
                </div>
                <div class="toolkit-item">
                    <h3 class="toolkit-title">ROADMAP</h3>
                    <p class="toolkit-desc">Prioritized sequence of recommended improvements.</p>
                </div>
                <div class="toolkit-item">
                    <h3 class="toolkit-title">DECISION MATRIX</h3>
                    <p class="toolkit-desc">Compare architectural options against requirements.</p>
                </div>
                <div class="toolkit-item">
                    <h3 class="toolkit-title">SECURITY CHECKLIST</h3>
                    <p class="toolkit-desc">Practical security and identity review points.</p>
                </div>
                <div class="toolkit-item">
                    <h3 class="toolkit-title">HA / DR PLANNER</h3>
                    <p class="toolkit-desc">RTO, RPO, recovery dependencies and operational considerations.</p>
                </div>
                <div class="toolkit-item">
                    <h3 class="toolkit-title">HANDOVER PLAN</h3>
                    <p class="toolkit-desc">Architecture documentation, implementation notes and operational guidance.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- 08 ENGINEERING OUTCOMES -->
    <section class="section reveal">
        <div class="container">
            <span class="eyebrow">ENGINEERING OUTCOMES</span>
            <h2 class="font-display">
                WHAT THE<br>
                ENGAGEMENT<br>
                SHOULD DELIVER.
            </h2>
            
            <div class="outcomes-grid">
                <div class="outcome-item">
                    <h3 class="outcome-title">SECURITY</h3>
                    <p class="outcome-desc">Reduce unnecessary exposure and improve identity/access controls.</p>
                </div>
                <div class="outcome-item">
                    <h3 class="outcome-title">CLARITY</h3>
                    <p class="outcome-desc">Create an architecture and roadmap the team can understand.</p>
                </div>
                <div class="outcome-item">
                    <h3 class="outcome-title">REPEATABILITY</h3>
                    <p class="outcome-desc">Use Terraform and controlled deployment workflows where appropriate.</p>
                </div>
                <div class="outcome-item">
                    <h3 class="outcome-title">RELIABILITY</h3>
                    <p class="outcome-desc">Design around failure, recovery and workload-specific RTO/RPO.</p>
                </div>
                <div class="outcome-item">
                    <h3 class="outcome-title">SCALABILITY</h3>
                    <p class="outcome-desc">Build infrastructure that can evolve as the workload grows.</p>
                </div>
                <div class="outcome-item">
                    <h3 class="outcome-title">COST AWARENESS</h3>
                    <p class="outcome-desc">Identify unnecessary infrastructure and make architecture decisions with cost in mind.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- 09 ARCHITECTURE PHILOSOPHY -->
    <section class="philosophy-section reveal">
        <h2 class="philosophy-statement">
            THE GOAL IS NOT<br>MAXIMUM COMPLEXITY.<br>THE GOAL IS<br><span style="color: var(--accent);">THE RIGHT ARCHITECTURE.</span>
        </h2>
        <p class="philosophy-sub">
            We do not add Azure services simply because they are available.<br>The architecture should solve the requirement.
        </p>
    </section>

    <!-- 10 HOW WE WORK -->
    <section id="approach" class="section reveal" style="background: #fff; border-bottom: 1px solid var(--border-light);">
        <div class="container">
            <span class="eyebrow">WORKFLOW</span>
            <h2 class="font-display" style="margin-bottom: 0;">HOW WE WORK.</h2>
            
            <div class="workflow-grid">
                <div class="workflow-item">
                    <span class="workflow-num">01 / DISCOVER</span>
                    <p style="color: var(--text-secondary);">Understand the workload, business context, constraints and existing environment.</p>
                </div>
                <div class="workflow-item">
                    <span class="workflow-num">02 / ASSESS</span>
                    <p style="color: var(--text-secondary);">Identify architectural, security, operational and cost issues.</p>
                </div>
                <div class="workflow-item">
                    <span class="workflow-num">03 / DESIGN</span>
                    <p style="color: var(--text-secondary);">Define the target architecture and implementation path.</p>
                </div>
                <div class="workflow-item">
                    <span class="workflow-num">04 / IMPLEMENT</span>
                    <p style="color: var(--text-secondary);">Build and deploy the agreed infrastructure and platform components.</p>
                </div>
                <div class="workflow-item">
                    <span class="workflow-num">05 / VALIDATE</span>
                    <p style="color: var(--text-secondary);">Test security, connectivity, reliability, monitoring and operational readiness.</p>
                </div>
                <div class="workflow-item">
                    <span class="workflow-num">06 / HAND OVER / EVOLVE</span>
                    <p style="color: var(--text-secondary);">Provide documentation, handover material and a practical path for future improvements.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- 11 ABOUT ZOLPHIN -->
    <section id="about" class="section reveal">
        <div class="container">
            <div style="max-width: 800px;">
                <span class="eyebrow">ABOUT ZOLPHIN</span>
                <h2 class="font-display">
                    ENGINEERING-LED.<br>
                    AZURE-FIRST.
                </h2>
                <p class="subtitle" style="color: var(--text-primary);">
                    Zolphin is an Azure cloud infrastructure and engineering practice focused on helping teams assess, design, implement and improve production cloud environments.
                </p>
                <p class="subtitle">
                    Technical leadership comes from an Azure Solutions Architect with 15+ years of IT infrastructure experience.
                </p>
            </div>
        </div>
    </section>

    <!-- 12 TECHNOLOGY STACK -->
    <section class="section reveal" style="padding-top: 0;">
        <div class="container border-t" style="border-top: 1px solid var(--border-light); padding-top: 6rem;">
            <h2 class="font-display">TECHNOLOGY STACK</h2>
            <div class="tech-grid">
                <div class="tech-group">
                    <h4>Cloud</h4>
                    <ul>
                        <li>Microsoft Azure</li>
                    </ul>
                </div>
                <div class="tech-group">
                    <h4>Assessment / Gov</h4>
                    <ul>
                        <li>Azure Advisor</li>
                        <li>Well-Architected</li>
                        <li>Azure Policy</li>
                    </ul>
                </div>
                <div class="tech-group">
                    <h4>Architecture</h4>
                    <ul>
                        <li>Landing Zones</li>
                        <li>VNets</li>
                        <li>App Gateway</li>
                        <li>Front Door</li>
                        <li>Hub & Spoke</li>
                    </ul>
                </div>
                <div class="tech-group">
                    <h4>Compute</h4>
                    <ul>
                        <li>App Service</li>
                        <li>Container Apps</li>
                        <li>AKS</li>
                        <li>Virtual Machines</li>
                    </ul>
                </div>
                <div class="tech-group">
                    <h4>Data</h4>
                    <ul>
                        <li>Azure SQL</li>
                        <li>Azure Storage</li>
                    </ul>
                </div>
                <div class="tech-group">
                    <h4>Security</h4>
                    <ul>
                        <li>Entra ID</li>
                        <li>Managed Identity</li>
                        <li>Key Vault</li>
                        <li>Private Endpoints</li>
                        <li>Azure Firewall</li>
                    </ul>
                </div>
                <div class="tech-group">
                    <h4>Automation</h4>
                    <ul>
                        <li>Terraform</li>
                        <li>Azure DevOps</li>
                        <li>CI/CD</li>
                    </ul>
                </div>
                <div class="tech-group">
                    <h4>Observability</h4>
                    <ul>
                        <li>Azure Monitor</li>
                        <li>Log Analytics</li>
                        <li>Application Insights</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- 13 FAQ -->
    <section class="section reveal" style="background: #fff; border-top: 1px solid var(--border-light); border-bottom: 1px solid var(--border-light);">
        <div class="container">
            <div class="text-center">
                <span class="eyebrow">FAQ</span>
                <h2 class="font-display">COMMON QUESTIONS</h2>
            </div>
            
            <div class="faq-list">
                <div class="faq-item">
                    <button class="faq-q" aria-expanded="false">
                        <span>Why Azure?</span>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6"/></svg>
                    </button>
                    <div class="faq-a">
                        Azure provides an enterprise-grade ecosystem with excellent integrated security, identity (Entra ID), and hybrid capabilities. We focus exclusively on Azure to deliver deep, specialized architectural expertise.
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-q" aria-expanded="false">
                        <span>How do you choose between App Service, Container Apps and AKS?</span>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6"/></svg>
                    </button>
                    <div class="faq-a">
                        We default to App Service for standard web workloads. Container Apps is used for containerized workloads not requiring Kubernetes control. We only recommend AKS when the workload genuinely requires advanced orchestration and Kubernetes-native capabilities.
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-q" aria-expanded="false">
                        <span>Do you use Terraform?</span>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6"/></svg>
                    </button>
                    <div class="faq-a">
                        Yes. We strongly advocate for Infrastructure as Code. We use Terraform with reusable modules to ensure environments are consistent, version-controlled, and repeatable.
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-q" aria-expanded="false">
                        <span>Can you work with existing Azure environments?</span>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6"/></svg>
                    </button>
                    <div class="faq-a">
                        Yes. We frequently assess existing environments, identify architectural gaps, and implement improvements with minimal impact to active workloads.
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-q" aria-expanded="false">
                        <span>How do you approach disaster recovery?</span>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6"/></svg>
                    </button>
                    <div class="faq-a">
                        Disaster recovery is an architecture decision based entirely on the workload's specific RTO (Recovery Time Objective) and RPO (Recovery Point Objective) requirements.
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 14 CONTACT -->
    <section id="contact" class="section reveal" style="padding-bottom: 12rem;">
        <div class="container">
            <div class="cta-box">
                <span class="eyebrow">START A PROJECT</span>
                <h2 class="font-display" style="font-size: clamp(2.5rem, 5vw, 4rem);">
                    HAVE AN<br>
                    AZURE PROBLEM<br>
                    TO SOLVE?
                </h2>
                <p class="subtitle" style="margin: 0 auto;">
                    Tell us what you are building, migrating, reviewing or trying to improve.<br>We can start with the current situation, the architecture and the practical next step.
                </p>
                <div class="cta-actions">
                    <a href="mailto:hello@zolphin.com" class="btn btn-primary" style="padding: 1rem 2.5rem;">START A CONVERSATION</a>
                    <a href="https://www.fiverr.com/cloudganesh" target="_blank" rel="noopener noreferrer" class="btn btn-secondary" style="padding: 1rem 2.5rem;">VIEW FIVERR PROFILE</a>
                </div>
            </div>
        </div>
    </section>

    <!-- 15 FOOTER -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div>
                    <div class="footer-brand">ZOLPHIN</div>
                    <p class="footer-desc">Azure Cloud Consulting & Engineering</p>
                </div>
                <div class="footer-col">
                    <h5>Navigation</h5>
                    <ul>
                        <li><a href="#how-we-help">How We Help</a></li>
                        <li><a href="#challenges">Challenges</a></li>
                        <li><a href="#architectures">Architectures</a></li>
                        <li><a href="#approach">Approach</a></li>
                        <li><a href="#about">About</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h5>Connect</h5>
                    <ul>
                        <li><a href="https://www.fiverr.com/cloudganesh" target="_blank" rel="noopener noreferrer">Fiverr</a></li>
                        <!-- Placeholders -->
                        <li><a href="https://github.com/">GitHub</a></li>
                        <li><a href="https://linkedin.com/">LinkedIn</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2026 Zolphin. All rights reserved.</p>
                <p>Engineered for Production.</p>
            </div>
        </div>
    </footer>

    <!-- Lightbox Modal -->
    <div id="lightbox" class="lightbox" aria-hidden="true">
        <div class="lightbox-overlay"></div>
        <div class="lightbox-content">
            <button id="close-lightbox" class="lightbox-close" aria-label="Close dialog">
                <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
            </button>
            <div class="lightbox-image-container">
                <img src="architecture.png" alt="Illustrative Reference Architecture Fullscreen" id="lightbox-img">
            </div>
        </div>
    </div>

</body>
</html>
HTML_EOF

cat << 'CSS_EOF' >> styles.css

/* Journey Grid (Consulting) */
.journey-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 2rem;
  margin-top: 4rem;
}
.journey-card {
  display: flex;
  flex-direction: column;
  background: var(--bg-card);
  border: 1px solid var(--border-light);
  border-radius: 24px;
  padding: 2rem;
  height: 100%;
  transition: all 0.3s ease;
  box-shadow: 0 4px 20px rgba(0,0,0,0.01);
}
.journey-card:hover {
  box-shadow: var(--shadow-md);
  border-color: rgba(77, 163, 255, 0.3);
}
.journey-header {
  display: flex; justify-content: space-between; align-items: center;
  font-family: var(--font-mono); font-size: 0.65rem; text-transform: uppercase;
  letter-spacing: 0.1em; color: var(--text-secondary);
  margin-bottom: 1.5rem;
}
.journey-visual {
  width: 100%; aspect-ratio: 4/3;
  background: var(--bg-main);
  border-radius: 12px;
  border: 1px solid var(--border-light);
  margin-bottom: 2rem;
  position: relative;
  overflow: hidden;
  display: flex; align-items: center; justify-content: center;
}
.journey-title { font-family: var(--font-display); font-size: 1.5rem; margin-bottom: 1rem; }
.journey-desc { font-size: 0.9375rem; color: var(--text-secondary); flex-grow: 1; margin-bottom: 1.5rem; }
.journey-tags { display: flex; flex-wrap: wrap; gap: 0.5rem; margin-bottom: 2rem; }
.journey-tag {
  font-family: var(--font-mono); font-size: 0.65rem;
  padding: 0.25rem 0.5rem;
  border-radius: 4px;
  background: var(--bg-main);
  border: 1px solid var(--border-light);
  color: var(--text-secondary);
}

/* Challenges Grid */
.challenges-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1.5rem;
}
.challenge-item {
  display: flex; gap: 1rem; align-items: flex-start;
  background: var(--bg-card); padding: 1.5rem; border-radius: 16px; border: 1px solid var(--border-light);
  box-shadow: var(--shadow-sm);
}
.challenge-item svg { flex-shrink: 0; margin-top: 0.25rem; }
.challenge-item p { font-size: 1rem; font-weight: 500; color: var(--text-primary); margin: 0; }

/* Toolkit Grid */
.toolkit-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 2rem;
}
.toolkit-item {
  border-top: 1px solid var(--border-light);
  padding-top: 2rem;
}
.toolkit-title { font-family: var(--font-display); font-size: 1.5rem; margin-bottom: 0.75rem; }
.toolkit-desc { color: var(--text-secondary); font-size: 1rem; }

/* Lightbox */
.lightbox {
  position: fixed; inset: 0; z-index: 9999;
  display: flex; align-items: center; justify-content: center;
  opacity: 0; pointer-events: none; transition: opacity 0.3s ease;
}
.lightbox.is-open { opacity: 1; pointer-events: auto; }
.lightbox-overlay {
  position: absolute; inset: 0; background: rgba(16, 20, 27, 0.9); backdrop-filter: blur(8px);
}
.lightbox-content {
  position: relative; z-index: 1; width: 90vw; height: 90vh;
  display: flex; align-items: center; justify-content: center;
}
.lightbox-image-container {
  max-width: 100%; max-height: 100%; display: flex; align-items: center; justify-content: center;
}
.lightbox-image-container img {
  max-width: 100%; max-height: 90vh; object-fit: contain; box-shadow: var(--shadow-md); border-radius: 8px;
}
.lightbox-close {
  position: absolute; top: 1rem; right: 1rem; background: rgba(0,0,0,0.5); border: none; color: #fff;
  width: 48px; height: 48px; border-radius: 50%; display: flex; align-items: center; justify-content: center;
  cursor: pointer; transition: background 0.2s; z-index: 2;
}
.lightbox-close:hover { background: rgba(0,0,0,0.8); }

@media (max-width: 1024px) {
  .journey-grid, .challenges-grid, .toolkit-grid { grid-template-columns: repeat(2, 1fr); }
  .tech-grid { grid-template-columns: repeat(2, 1fr); }
  .desktop-only { display: none !important; }
}

@media (max-width: 768px) {
  .journey-grid, .challenges-grid, .toolkit-grid, .tech-grid { grid-template-columns: 1fr; }
}
CSS_EOF

cat << 'JS_EOF' > script.js
document.addEventListener('DOMContentLoaded', () => {
    // Mobile menu toggle
    const menuToggle = document.querySelector('.mobile-menu-toggle');
    const mainNav = document.querySelector('.main-nav-links');
    
    if (menuToggle && mainNav) {
        menuToggle.addEventListener('click', () => {
            const isExpanded = menuToggle.getAttribute('aria-expanded') === 'true';
            menuToggle.setAttribute('aria-expanded', !isExpanded);
            mainNav.classList.toggle('is-open');
        });
    }

    // Scroll Reveal
    const observerOptions = {
        root: null,
        rootMargin: '0px',
        threshold: 0.1
    };

    const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('active');
                observer.unobserve(entry.target); // Stop observing once revealed
            }
        });
    }, observerOptions);

    document.querySelectorAll('.reveal').forEach(el => {
        observer.observe(el);
    });

    // FAQ Accordion
    const faqQuestions = document.querySelectorAll('.faq-q');
    faqQuestions.forEach(q => {
        q.addEventListener('click', () => {
            const isExpanded = q.getAttribute('aria-expanded') === 'true';
            
            // Close others
            faqQuestions.forEach(otherQ => {
                otherQ.setAttribute('aria-expanded', 'false');
                otherQ.nextElementSibling.classList.remove('is-open');
            });

            if (!isExpanded) {
                q.setAttribute('aria-expanded', 'true');
                q.nextElementSibling.classList.add('is-open');
            }
        });
    });

    // Lightbox Functionality
    const lightbox = document.getElementById('lightbox');
    const openBtns = [document.getElementById('open-lightbox'), document.getElementById('architecture-img-container')];
    const closeBtn = document.getElementById('close-lightbox');
    const overlay = document.querySelector('.lightbox-overlay');

    function openLightbox() {
        if (lightbox) {
            lightbox.classList.add('is-open');
            lightbox.setAttribute('aria-hidden', 'false');
            document.body.style.overflow = 'hidden'; // Prevent background scrolling
        }
    }

    function closeLightbox() {
        if (lightbox) {
            lightbox.classList.remove('is-open');
            lightbox.setAttribute('aria-hidden', 'true');
            document.body.style.overflow = '';
        }
    }

    openBtns.forEach(btn => {
        if (btn) {
            btn.addEventListener('click', (e) => {
                e.preventDefault();
                openLightbox();
            });
        }
    });

    if (closeBtn) closeBtn.addEventListener('click', closeLightbox);
    if (overlay) overlay.addEventListener('click', closeLightbox);

    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape' && lightbox && lightbox.classList.contains('is-open')) {
            closeLightbox();
        }
    });
});
JS_EOF

