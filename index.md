---
layout: default
---

<style>
/* =======================================================================
   Design tokens
   ======================================================================= */
:root {
  --primary:        #0d6e6e;
  --primary-dark:   #0a5454;
  --primary-soft:   #e8f3f2;
  --primary-border: #bcd9d6;
  --accent:         #d97706;
  --success:        #059669;
  --success-soft:   #d1fae5;
  --success-text:   #065f46;
  --danger:         #dc2626;
  --danger-soft:    #fee2e2;
  --danger-text:    #991b1b;
  --bg:             #ffffff;
  --bg-subtle:      #f8fafa;
  --bg-muted:       #f1f5f5;
  --border:         #e3e8eb;
  --border-strong:  #c5cfd4;
  --text:           #0f172a;
  --text-muted:     #475569;
  --text-subtle:    #94a3b8;
  --radius-sm:      4px;
  --radius:         8px;
  --radius-lg:      12px;
  --shadow-sm:      0 1px 2px rgba(15, 23, 42, 0.04);
  --shadow:         0 4px 14px rgba(15, 23, 42, 0.06);
  --shadow-lg:      0 10px 30px rgba(15, 23, 42, 0.08);
}

html { scroll-behavior: smooth; scroll-padding-top: 1rem; }

body, .main-content, h1, h2, h3, h4, h5, h6, p, li, figcaption {
  font-family: "Inter", -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif !important;
  color: var(--text);
  -webkit-font-smoothing: antialiased;
}
body { letter-spacing: -0.005em; }
code, pre { font-family: "JetBrains Mono", "SF Mono", Menlo, monospace !important; }

/* =======================================================================
   Page header (hero)
   ======================================================================= */
.page-header {
  background: linear-gradient(135deg, #0a5454 0%, #0d6e6e 45%, #1a8585 100%);
  padding: 4.5rem 2rem 4rem !important;
  text-align: center;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1);
}
.page-header__inner {
  max-width: 60rem;
  margin: 0 auto;
}
.eyebrow {
  display: inline-block;
  font-size: 0.72rem;
  font-weight: 600;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: rgba(255, 255, 255, 0.85);
  background: rgba(255, 255, 255, 0.12);
  border: 1px solid rgba(255, 255, 255, 0.18);
  border-radius: 999px;
  padding: 0.35rem 0.9rem;
  margin-bottom: 1.25rem;
  backdrop-filter: blur(6px);
}
.page-header .project-name {
  font-weight: 800;
  font-size: clamp(1.5rem, 2.4vw, 2.1rem);
  line-height: 1.25;
  letter-spacing: -0.02em;
  color: #fff;
  margin: 0 0 0.75rem;
  max-width: 56rem;
  margin-left: auto;
  margin-right: auto;
}
.page-header .project-tagline {
  font-weight: 400;
  font-size: clamp(1rem, 1.3vw, 1.15rem);
  color: rgba(255, 255, 255, 0.82);
  margin: 0 auto 2rem;
  max-width: 48rem;
  line-height: 1.5;
}
.page-header__actions {
  display: flex;
  flex-wrap: wrap;
  gap: 0.75rem;
  justify-content: center;
  margin-top: 0.5rem;
}
.page-header .btn {
  display: inline-flex;
  align-items: center;
  gap: 0.55rem;
  font-size: 0.95rem;
  font-weight: 600;
  padding: 0.85rem 1.75rem;
  border-radius: var(--radius);
  border: 1px solid rgba(255, 255, 255, 0.35);
  background: rgba(255, 255, 255, 0.1);
  color: #fff;
  margin: 0;
  min-width: 0;
  letter-spacing: 0;
  transition: all 0.18s ease;
}
.page-header .btn:hover {
  background: rgba(255, 255, 255, 0.2);
  border-color: rgba(255, 255, 255, 0.5);
  transform: translateY(-1px);
}
.page-header .btn-primary {
  background: #fff;
  color: var(--primary-dark);
  border-color: #fff;
  font-weight: 700;
}
.page-header .btn-primary:hover {
  background: #fff;
  color: var(--primary);
  box-shadow: 0 6px 16px rgba(0, 0, 0, 0.18);
}
.page-header .btn svg { flex: 0 0 16px; }

/* =======================================================================
   Main content container
   ======================================================================= */
.main-content {
  max-width: 84rem !important;
  padding: 3rem 3rem 4rem !important;
  line-height: 1.65;
  font-size: 1rem;
}
@media (max-width: 64em) {
  .main-content { padding: 2rem 1.25rem 3rem !important; }
}
.main-content h2 {
  font-size: 1.55rem;
  font-weight: 700;
  letter-spacing: -0.01em;
  color: var(--text);
  margin: 3rem 0 1rem;
  padding-bottom: 0.6rem;
  border-bottom: 1px solid var(--border);
}
.main-content h2:first-of-type { margin-top: 2rem; }
.main-content p { color: var(--text); }
.main-content hr {
  border: 0;
  border-top: 1px solid var(--border);
  margin: 3rem 0;
}
.main-content code {
  background: var(--bg-muted);
  color: var(--primary-dark);
  padding: 0.12em 0.4em;
  border-radius: var(--radius-sm);
  font-size: 0.88em;
}

/* =======================================================================
   Meta bar (Author / Date)
   ======================================================================= */
.meta-bar {
  display: flex;
  flex-wrap: wrap;
  align-items: baseline;
  gap: 2rem;
  padding: 1rem 0 1.25rem;
  border-bottom: 1px solid var(--border);
  margin-bottom: 2rem;
}
.meta-bar > div {
  display: flex;
  align-items: baseline;
  gap: 0.55rem;
}
.meta-bar .meta-label {
  color: var(--text-subtle);
  font-weight: 600;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  font-size: 0.72rem;
  line-height: 1;
}
.meta-bar .meta-value {
  color: var(--text);
  font-weight: 500;
  font-size: 0.94rem;
  line-height: 1;
}
.meta-bar code { font-size: 0.88rem; padding: 0.18em 0.4em; }
.meta-bar a { color: var(--primary); font-weight: 600; text-decoration: none; }
.meta-bar a:hover { text-decoration: underline; }

/* =======================================================================
   Stats overview grid
   ======================================================================= */
.stats-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 1rem;
  margin: 2rem 0 2.5rem;
}
@media (max-width: 48em) {
  .stats-grid { grid-template-columns: repeat(2, 1fr); }
}
.stat-card {
  background: var(--bg-subtle);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  padding: 1.25rem 1.35rem;
  transition: all 0.2s ease;
}
.stat-card:hover {
  border-color: var(--primary-border);
  box-shadow: var(--shadow-sm);
  transform: translateY(-1px);
}
.stat-card .stat-label {
  font-size: 0.72rem;
  font-weight: 600;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  color: var(--text-subtle);
  margin-bottom: 0.4rem;
}
.stat-card .stat-value {
  font-size: 1.9rem;
  font-weight: 700;
  color: var(--primary);
  line-height: 1.1;
  letter-spacing: -0.02em;
}
.stat-card .stat-note {
  font-size: 0.8rem;
  color: var(--text-muted);
  margin-top: 0.3rem;
}

/* =======================================================================
   Floating Table of Contents
   ======================================================================= */
.page-toc {
  position: fixed;
  top: 1.25rem;
  right: 1.25rem;
  z-index: 1000;
  background: #fff;
  border: 1px solid var(--border-strong);
  border-radius: var(--radius);
  box-shadow: var(--shadow-lg);
  max-width: 22rem;
  font-size: 0.92rem;
  transition: box-shadow 0.2s ease;
}
.page-toc > summary {
  list-style: none;
  cursor: pointer;
  padding: 0.85rem 1.25rem;
  font-weight: 600;
  font-size: 0.95rem;
  color: #fff;
  background: var(--primary);
  border-radius: calc(var(--radius) - 1px);
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  user-select: none;
  transition: background 0.15s ease;
}
.page-toc > summary::-webkit-details-marker { display: none; }
.page-toc > summary::after {
  content: "▾";
  font-size: 0.8rem;
  opacity: 0.85;
  transition: transform 0.2s ease;
}
.page-toc[open] > summary {
  border-radius: calc(var(--radius) - 1px) calc(var(--radius) - 1px) 0 0;
  border-bottom: 1px solid var(--border);
  display: flex;
}
.page-toc[open] > summary::after { transform: rotate(180deg); }
.page-toc > summary:hover { background: var(--primary-dark); }
.page-toc nav {
  padding: 0.75rem 1rem 1rem;
}
.page-toc nav a {
  display: block;
  padding: 0.35rem 0.55rem;
  margin: 0.05rem 0;
  color: var(--text);
  text-decoration: none;
  border-radius: var(--radius-sm);
  border-left: 2px solid transparent;
  transition: background 0.15s, color 0.15s, border-color 0.15s;
}
.page-toc nav a:hover {
  background: var(--primary-soft);
  color: var(--primary);
}
.page-toc nav a.is-active {
  background: var(--primary-soft);
  color: var(--primary);
  border-left-color: var(--primary);
  font-weight: 600;
}
.page-toc .toc-sub {
  margin: 0.4rem 0 0.6rem 0.4rem;
  padding-left: 0.5rem;
  border-left: 2px solid var(--border);
}
.page-toc .toc-sub a {
  font-size: 0.86rem;
  color: var(--text-muted);
  padding-left: 0.75rem;
}
@media (max-width: 48em) {
  .page-toc { top: 0.5rem; right: 0.5rem; max-width: 16rem; }
}

/* =======================================================================
   Intro callout
   ======================================================================= */
.intro-callout {
  background: linear-gradient(180deg, var(--primary-soft) 0%, #fafdfd 100%);
  border: 1px solid var(--primary-border);
  border-left: 4px solid var(--primary);
  border-radius: var(--radius);
  padding: 1.25rem 1.5rem;
  margin: 2rem 0;
  line-height: 1.7;
}
.intro-callout strong { color: var(--primary-dark); }

/* =======================================================================
   Matchup cards
   ======================================================================= */
.matchup {
  margin-bottom: 2rem;
  padding: 1.25rem 1.5rem 1.5rem;
  background: var(--bg);
  border: 1px solid var(--border);
  border-radius: var(--radius-lg);
  transition: box-shadow 0.2s ease, border-color 0.2s ease;
}
.matchup:hover {
  border-color: var(--primary-border);
  box-shadow: var(--shadow);
}
.matchup h3 {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  gap: 0.65rem;
  margin: 0 0 1rem;
  padding: 0 0 0.75rem;
  border-bottom: 1px solid var(--border);
  font-size: 1.15rem;
  font-weight: 700;
  color: var(--primary);
  scroll-margin-top: 0.5rem;
}
.matchup h3 .ref-link {
  display: inline-flex;
  align-items: center;
  gap: 0.3rem;
  font-size: 0.75rem;
  font-weight: 600;
  line-height: 1;
  color: var(--primary);
  background: var(--primary-soft);
  border: 1px solid var(--primary-border);
  border-radius: 999px;
  padding: 0.3rem 0.7rem;
  text-decoration: none;
  transition: all 0.15s ease;
  letter-spacing: 0.02em;
}
.matchup h3 .ref-link:hover {
  background: var(--primary);
  color: #fff;
  border-color: var(--primary);
}

/* Video grid (matchup P0 / P1) */
.video-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1.25rem;
  align-items: start;
}
.video-grid figure { margin: 0; }
.video-grid img {
  width: 100%;
  display: block;
  border-radius: var(--radius);
  background: var(--bg-muted);
  border: 1px solid var(--border);
  transition: box-shadow 0.2s ease;
}
.video-grid img:hover { box-shadow: var(--shadow); }
.video-grid figcaption {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 0.5rem;
  font-size: 0.88rem;
  color: var(--text-muted);
  margin-top: 0.55rem;
  padding: 0 0.15rem;
}
.outcome {
  font-size: 0.72rem;
  font-weight: 700;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  border-radius: 999px;
  padding: 0.25rem 0.6rem;
  border: 1px solid;
}
.outcome.win {
  background: var(--success-soft);
  color: var(--success-text);
  border-color: #a7f3d0;
}
.outcome.loss {
  background: var(--danger-soft);
  color: var(--danger-text);
  border-color: #fecaca;
}

/* =======================================================================
   Results figures (tournament metrics)
   ======================================================================= */
.results-figures figure { margin: 1.25rem 0 2rem; }
.results-figures img {
  width: 100%;
  display: block;
  border-radius: var(--radius);
  border: 1px solid var(--border);
  background: #fff;
}
.results-figures figcaption {
  font-size: 0.9rem;
  color: var(--text-muted);
  text-align: center;
  margin-top: 0.65rem;
}
.results-figures.grid-2x2 {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1.5rem 2rem;
  align-items: start;
}
.results-figures.grid-2x2 figure {
  margin: 0;
  display: flex;
  flex-direction: column;
}
/* Fixed-height frames so the 4 metrics visually line up despite
   very different native aspect ratios. */
.results-figures.grid-2x2 figure > img {
  width: 100%;
  height: 22rem;
  object-fit: contain;
  background: #fff;
  border: 1px solid var(--border);
  border-radius: var(--radius);
  padding: 0.75rem;
  box-sizing: border-box;
}
@media (max-width: 48em) {
  .results-figures.grid-2x2 { grid-template-columns: 1fr; }
  .results-figures.grid-2x2 figure > img { height: 16rem; }
}

/* Summary pair: force both frames to a fixed height so the two images
   display at the SAME vertical size, regardless of their native ratios */
.summary-pair {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1.25rem 2rem;
  align-items: stretch;
}
.summary-pair figure { margin: 0; display: flex; flex-direction: column; }
.summary-pair .frame {
  height: 26rem;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 0.9rem;
  background: #fff;
  border: 1px solid var(--border);
  border-radius: var(--radius);
  overflow: hidden;
}
.summary-pair .frame img {
  max-width: 100%;
  max-height: 100%;
  width: auto;
  height: auto;
  object-fit: contain;
  border: none;
  border-radius: 0;
  background: transparent;
  display: block;
}
.summary-pair figcaption {
  font-size: 0.9rem;
  color: var(--text-muted);
  text-align: center;
  margin-top: 0.65rem;
}
@media (max-width: 48em) {
  .summary-pair { grid-template-columns: 1fr; }
  .summary-pair .frame { height: 20rem; }
}

/* =======================================================================
   Citation block
   ======================================================================= */
.citation-block {
  background: var(--bg-subtle);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  padding: 1.25rem 1.5rem;
  margin: 1rem 0 0;
  font-family: "JetBrains Mono", "SF Mono", Menlo, monospace;
  font-size: 0.82rem;
  line-height: 1.55;
  color: var(--text);
  overflow-x: auto;
  white-space: pre-wrap;
  word-break: break-word;
}

/* =======================================================================
   Back-to-top button
   ======================================================================= */
#back-to-top {
  position: fixed;
  bottom: 1.5rem;
  right: 1.5rem;
  z-index: 999;
  width: 44px;
  height: 44px;
  border-radius: 50%;
  background: var(--primary);
  color: #fff;
  border: none;
  cursor: pointer;
  box-shadow: var(--shadow);
  opacity: 0;
  visibility: hidden;
  transform: translateY(8px);
  transition: opacity 0.2s, visibility 0.2s, transform 0.2s, background 0.15s;
  display: flex;
  align-items: center;
  justify-content: center;
}
#back-to-top.visible { opacity: 1; visibility: visible; transform: translateY(0); }
#back-to-top:hover { background: var(--primary-dark); }

/* =======================================================================
   Site footer
   ======================================================================= */
.site-footer {
  margin-top: 4rem;
  padding-top: 2rem;
  border-top: 1px solid var(--border);
  text-align: center;
  font-size: 0.85rem;
  color: var(--text-subtle);
}
.site-footer a { color: var(--text-muted); }
</style>

<div class="meta-bar">
  <div><span class="meta-label">Author</span> <span class="meta-value">Mathis Delsart</span></div>
  <div><span class="meta-label">Last update</span> <span class="meta-value">April 20, 2026</span></div>
  <div><span class="meta-label">Map</span> <span class="meta-value"><code>basesWorkers16x16A</code></span></div>
  <div><span class="meta-label">Evaluation</span> <span class="meta-value">deterministic policy</span></div>
</div>

<div class="stats-grid">
  <div class="stat-card">
    <div class="stat-label">Opponents</div>
    <div class="stat-value">18</div>
    <div class="stat-note">Full tournament</div>
  </div>
  <div class="stat-card">
    <div class="stat-label">Games shown</div>
    <div class="stat-value">36</div>
    <div class="stat-note">Both starting positions</div>
  </div>
  <div class="stat-card">
    <div class="stat-label">Wins</div>
    <div class="stat-value">35</div>
    <div class="stat-note">1 loss (POWorkerRush, P0)</div>
  </div>
  <div class="stat-card">
    <div class="stat-label">Win rate</div>
    <div class="stat-value">97.2%</div>
    <div class="stat-note">Deterministic play</div>
  </div>
</div>

<div class="intro-callout">
This page hosts the supplementary material for the Work-in-Progress paper on competitive single-map MicroRTS agents. It includes <strong>(i)</strong> a summary of the final tournament on <code>basesWorkers16x16A</code> (final standings and head-to-head matrix), <strong>(ii)</strong> one recorded game per starting position (P0 and P1) for each of the 18 opponents in the tournament, and <strong>(iii)</strong> detailed game-theoretic metrics (Nash, Alpha-Rank, Copeland, robustness) behind the ranking.
</div>

<details class="page-toc" id="page-toc">
<summary>Contents</summary>
<nav>
<a href="#tournament-summary">Tournament summary</a>
<a href="#example-games">Example games</a>
<div class="toc-sub">
<a href="#vs-raisocketai">vs RAISocketAI</a>
<a href="#vs-utsimass">vs UtsImass</a>
<a href="#vs-tma">vs TMA</a>
<a href="#vs-topfeatsrl-100m">vs TopFeatsRL-100M</a>
<a href="#vs-obibotkenobi">vs ObiBotKenobi</a>
<a href="#vs-allfeatsrl-100m">vs AllFeatsRL-100M</a>
<a href="#vs-phasedrl-300m">vs PhasedRL-300M</a>
<a href="#vs-coacai">vs CoacAI</a>
<a href="#vs-poworkerrush">vs POWorkerRush</a>
<a href="#vs-mayari">vs Mayari</a>
<a href="#vs-mixedbot">vs MixedBot</a>
<a href="#vs-droplet">vs Droplet</a>
<a href="#vs-gridnet-300m">vs GridNet-300M</a>
<a href="#vs-tiamat">vs Tiamat</a>
<a href="#vs-strategytactics">vs StrategyTactics</a>
<a href="#vs-naivemcts">vs NaiveMCTS</a>
<a href="#vs-polightrush">vs POLightRush</a>
<a href="#vs-randombiasedai">vs RandomBiasedAI</a>
</div>
<a href="#detailed-tournament-analysis">Detailed analysis</a>
</nav>
</details>

<h2 id="tournament-summary">Tournament summary</h2>

Overall ranking of our agent against every opponent on the final 16×16 single-map tournament. The two figures below give the context that is referenced throughout the game recordings. More detailed game-theoretic analyses are provided at the [bottom of the page](#detailed-tournament-analysis).

<div class="summary-pair">
<figure>
  <div class="frame"><img src="figures/final_standings.png" alt="Final standings" loading="lazy"></div>
  <figcaption>Final standings across all opponents.</figcaption>
</figure>
<figure>
  <div class="frame"><img src="figures/h2h_matrix.png" alt="Head-to-head matrix" loading="lazy"></div>
  <figcaption>Head-to-head win-rate matrix.</figcaption>
</figure>
</div>

<h2 id="example-games">Example games</h2>

Recordings below show our single-map agent (`BestRL-350M`) playing one game per starting position against each opponent of the tournament, on the `basesWorkers16x16A` map. All games are played with **deterministic actions** (argmax over the policy), matching the tournament protocol. **Left column**: our agent starts in position P0 (top-left corner). **Right column**: our agent starts in position P1 (bottom-right corner). Opponents are listed in the tournament order of strength.

<div class="matchup">
<h3 id="vs-raisocketai">vs RAISocketAI <a href="https://github.com/sgoodfriend/rl-algo-impls" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_RAISocketAI_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_RAISocketAI_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-utsimass">vs UtsImass <a href="https://github.com/narsue/UTS_Imass" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_UtsImass_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_UtsImass_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-tma">vs TMA <a href="https://github.com/MazzaAlessandro/TMA" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_TMA_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_TMA_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-topfeatsrl-100m">vs TopFeatsRL-100M <a href="https://github.com/mathisdelsart/MasterThesis" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_TopFeatsRL-100M_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_TopFeatsRL-100M_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-obibotkenobi">vs ObiBotKenobi <a href="https://github.com/Jannis42/MicroRTSObiBotKenobi" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_ObiBotKenobi_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_ObiBotKenobi_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-allfeatsrl-100m">vs AllFeatsRL-100M <a href="https://github.com/mathisdelsart/MasterThesis" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_AllFeatsRL-100M_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_AllFeatsRL-100M_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-phasedrl-300m">vs PhasedRL-300M <a href="https://github.com/mathisdelsart/MasterThesis" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_PhasedRL-300M_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_PhasedRL-300M_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-coacai">vs CoacAI <a href="https://github.com/Coac/coac-ai-microrts" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_CoacAI_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_CoacAI_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-poworkerrush">vs POWorkerRush <a href="https://github.com/Farama-Foundation/MicroRTS/blob/master/src/ai/abstraction/partialobservability/POWorkerRush.java" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_POWorkerRush_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome loss">Loss</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_POWorkerRush_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-mayari">vs Mayari <a href="https://github.com/barvazkrav/mayariBot" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_Mayari_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_Mayari_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-mixedbot">vs MixedBot <a href="https://github.com/AmoyZhp/MixedBotmRTS" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_MixedBot_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_MixedBot_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-droplet">vs Droplet <a href="https://github.com/zuozhiyang/Droplet" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_Droplet_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_Droplet_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-gridnet-300m">vs GridNet-300M <a href="https://github.com/Farama-Foundation/MicroRTS-Py" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_GridNet-300M_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_GridNet-300M_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-tiamat">vs Tiamat <a href="https://github.com/jr9Hernandez/TiamatBot" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_Tiamat_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_Tiamat_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-strategytactics">vs StrategyTactics <a href="https://github.com/nbarriga/microRTSbot" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_StrategyTactics_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_StrategyTactics_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-naivemcts">vs NaiveMCTS <a href="https://github.com/Farama-Foundation/MicroRTS/blob/master/src/ai/mcts/naivemcts/NaiveMCTS.java" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_NaiveMCTS_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_NaiveMCTS_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-polightrush">vs POLightRush <a href="https://github.com/Farama-Foundation/MicroRTS/blob/master/src/ai/abstraction/partialobservability/POLightRush.java" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_POLightRush_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_POLightRush_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-randombiasedai">vs RandomBiasedAI <a href="https://github.com/Farama-Foundation/MicroRTS/blob/master/src/ai/RandomBiasedAI.java" class="ref-link" target="_blank" rel="noopener">source ↗</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_RandomBiasedAI_P0.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P0 position</span><span class="outcome win">Win</span></figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_RandomBiasedAI_P1.gif" alt="" loading="lazy"><figcaption><span>Our agent plays in P1 position</span><span class="outcome win">Win</span></figcaption></figure>
</div>
</div>

<h2 id="detailed-tournament-analysis">Detailed tournament analysis</h2>

Game-theoretic metrics behind the final standings. These complement the head-to-head matrix shown at the top of the page.

<div class="results-figures grid-2x2">

<figure><img src="figures/copeland_scores.png" alt="Copeland scores" loading="lazy"><figcaption>Copeland scores.</figcaption></figure>

<figure><img src="figures/alpha_rank_sweep.png" alt="Alpha-Rank sweep" loading="lazy"><figcaption>Alpha-Rank sweep.</figcaption></figure>

<figure><img src="figures/nash_scores.png" alt="Nash scores" loading="lazy"><figcaption>Nash averaging scores.</figcaption></figure>

<figure><img src="figures/robustness_score.png" alt="Robustness score" loading="lazy"><figcaption>Robustness across opponents.</figcaption></figure>

</div>

