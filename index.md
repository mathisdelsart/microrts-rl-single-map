---
layout: default
---

<style>
/* Widen the Cayman content container while keeping the hero header centered */
.page-header {
  text-align: center;
}
.page-header .project-name,
.page-header .project-tagline {
  max-width: 60rem;
  margin-left: auto;
  margin-right: auto;
}
.page-header .btn {
  font-size: 1.1rem;
  padding: 0.95rem 2rem;
  margin: 0.4rem 0.6rem;
  min-width: 17rem;
  letter-spacing: 0.01em;
}
.page-header .btn-primary {
  background: rgba(255, 255, 255, 0.95);
  color: #155799;
  border-color: rgba(255, 255, 255, 0.95);
  font-weight: 700;
}
.page-header .btn-primary:hover {
  background: #fff;
  color: #0d3c6e;
  border-color: #fff;
}
.main-content {
  max-width: 88rem !important;
  padding: 2.5rem 3rem;
}
@media (max-width: 64em) {
  .main-content { padding: 1.5rem 1.25rem; }
}

/* Info card at the top */
.info-card {
  background: #f7fafa;
  border: 1px solid #e1e8ed;
  border-left: 4px solid #157878;
  border-radius: 6px;
  padding: 1.1rem 1.4rem;
  margin: 0 0 2rem 0;
  font-size: 0.95rem;
  line-height: 1.65;
}
.info-card p { margin: 0.25rem 0; }
.info-card .label {
  display: inline-block;
  min-width: 9rem;
  padding-right: 1rem;
  color: #555;
  font-weight: 600;
}
.info-card a { font-weight: 600; }

/* Floating table of contents */
.page-toc {
  position: fixed;
  top: 1.25rem;
  right: 1.25rem;
  z-index: 1000;
  background: #fff;
  border: 2px solid #157878;
  border-radius: 8px;
  box-shadow: 0 4px 14px rgba(21, 120, 120, 0.18);
  max-width: 22rem;
  font-size: 0.95rem;
}
.page-toc > summary {
  list-style: none;
  cursor: pointer;
  padding: 0.8rem 1.25rem;
  font-weight: 700;
  font-size: 1.05rem;
  color: #fff;
  background: #157878;
  border-radius: 6px 6px 0 0;
  user-select: none;
  letter-spacing: 0.02em;
}
.page-toc:not([open]) > summary { border-radius: 6px; }
.page-toc > summary:hover { background: #1a8a8a; }
.page-toc > summary::-webkit-details-marker { display: none; }
.page-toc[open] > summary {
  border-bottom: 1px solid #e1e8ed;
}
.page-toc nav {
  max-height: 70vh;
  overflow-y: auto;
  padding: 0.5rem 0.9rem 0.9rem;
}
.page-toc nav a {
  display: block;
  padding: 0.25rem 0;
  color: #333;
  text-decoration: none;
}
.page-toc nav a:hover { color: #157878; text-decoration: underline; }
.page-toc .toc-sub {
  margin: 0.25rem 0 0.5rem 0.9rem;
  padding-left: 0.6rem;
  border-left: 2px solid #e1e8ed;
}
.page-toc .toc-sub a {
  font-size: 0.85rem;
  color: #555;
}
@media (max-width: 48em) {
  .page-toc { top: 0.5rem; right: 0.5rem; max-width: 16rem; }
}

/* Game recording grid */
.matchup { margin-bottom: 2.5rem; }
.matchup h3 {
  margin-top: 1.75rem;
  margin-bottom: 0.6rem;
  border-bottom: 1px solid #ddd;
  padding-bottom: 0.3rem;
  color: #157878;
}
.matchup h3 .ref-link {
  display: inline-block;
  vertical-align: middle;
  font-size: 0.78rem;
  font-weight: 600;
  line-height: 1;
  color: #157878;
  background: #e8f3f2;
  border: 1px solid #b8d9d6;
  border-radius: 999px;
  padding: 0.3rem 0.7rem;
  margin-left: 0.75rem;
  text-decoration: none;
  transition: background 0.15s, color 0.15s, border-color 0.15s;
}
.matchup h3 .ref-link:hover {
  background: #157878;
  color: #fff;
  border-color: #157878;
}
.video-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1.5rem;
  align-items: start;
}
.video-grid figure { margin: 0; }
.video-grid figcaption {
  font-size: 0.9rem;
  color: #666;
  text-align: center;
  margin-top: 0.45rem;
}
.video-grid img {
  width: 100%;
  display: block;
  border-radius: 4px;
  background: #f5f5f5;
}
.placeholder {
  aspect-ratio: 640 / 612;
  width: 100%;
  border-radius: 4px;
  background: repeating-linear-gradient(45deg, #f0f0f0, #f0f0f0 8px, #e5e5e5 8px, #e5e5e5 16px);
  display: flex;
  align-items: center;
  justify-content: center;
  color: #999;
  font-size: 0.95rem;
  font-style: italic;
}

/* Results figures */
.results-figures figure { margin: 1rem 0 2rem 0; }
.results-figures img {
  width: 100%;
  display: block;
  border-radius: 4px;
  border: 1px solid #e1e8ed;
}
.results-figures figcaption {
  font-size: 0.9rem;
  color: #666;
  text-align: center;
  margin-top: 0.5rem;
}
.results-figures.grid-2x2 {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1.5rem 2rem;
}
.results-figures.grid-2x2 figure { margin: 0; }
@media (max-width: 48em) {
  .results-figures.grid-2x2 { grid-template-columns: 1fr; }
}
</style>

<div class="info-card">
<p><span class="label">Author:</span> Mathis Delsart (<a href="https://github.com/mathisdelsart">mathisdelsart</a>)</p>
<p><span class="label">Last updated:</span> April 20, 2026</p>
</div>

This page hosts the supplementary material for the Work-in-Progress paper on competitive single-map MicroRTS agents. It includes: (i) a concise summary of the final tournament on `basesWorkers16x16A` (final standings and head-to-head matrix), (ii) one recorded game per starting position (P0 and P1) for each of the 18 opponents in the tournament, and (iii) the detailed game-theoretic metrics (Nash, Alpha-Rank, Copeland, robustness) behind the ranking.

<details class="page-toc" id="page-toc">
<summary>Contents ▾</summary>
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
<a href="#detailed-tournament-analysis">Detailed tournament analysis</a>
</nav>
</details>

<h2 id="tournament-summary">Tournament summary</h2>

Overall ranking of our agent against every opponent on the final 16×16 single-map tournament. The two figures below give the full context that is referenced throughout the game recordings. More detailed game-theoretic analyses are provided at the [bottom of the page](#detailed-tournament-analysis).

<div class="video-grid">
<figure><img src="figures/final_standings.png" alt="Final standings" style="width:100%;display:block;border-radius:4px;border:1px solid #e1e8ed"><figcaption>Final standings across all opponents.</figcaption></figure>
<figure><img src="figures/h2h_matrix.png" alt="Head-to-head matrix" style="width:100%;display:block;border-radius:4px;border:1px solid #e1e8ed"><figcaption>Head-to-head win-rate matrix.</figcaption></figure>
</div>

<h2 id="example-games">Example games</h2>

Recordings below show our single-map agent (`BestRL-350M`) playing one game per starting position against each opponent of the tournament, on the `basesWorkers16x16A` map. All games are played with **deterministic actions** (argmax over the policy), matching the tournament protocol. **Left column**: our agent starts in position P0 (top-left corner). **Right column**: our agent starts in position P1 (bottom-right corner). Opponents are listed in the tournament order of strength.

Across the 18 matchups shown below (36 games total), our agent **wins every game** *except one*: it loses to **POWorkerRush when playing in P0**. This is the only starting position where a hard-rush opener is enough to overwhelm a trained agent forced into strictly deterministic play.

<div class="matchup">
<h3 id="vs-raisocketai">vs RAISocketAI <a href="https://github.com/sgoodfriend/rl-algo-impls" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_RAISocketAI_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_RAISocketAI_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-utsimass">vs UtsImass <a href="https://github.com/narsue/UTS_Imass" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_UtsImass_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_UtsImass_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-tma">vs TMA <a href="https://github.com/MazzaAlessandro/TMA" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_TMA_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_TMA_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-topfeatsrl-100m">vs TopFeatsRL-100M <a href="https://github.com/mathisdelsart/MasterThesis" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_TopFeatsRL-100M_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_TopFeatsRL-100M_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-obibotkenobi">vs ObiBotKenobi <a href="https://github.com/Jannis42/MicroRTSObiBotKenobi" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_ObiBotKenobi_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_ObiBotKenobi_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-allfeatsrl-100m">vs AllFeatsRL-100M <a href="https://github.com/mathisdelsart/MasterThesis" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_AllFeatsRL-100M_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_AllFeatsRL-100M_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-phasedrl-300m">vs PhasedRL-300M <a href="https://github.com/mathisdelsart/MasterThesis" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_PhasedRL-300M_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_PhasedRL-300M_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-coacai">vs CoacAI <a href="https://github.com/Coac/coac-ai-microrts" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_CoacAI_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_CoacAI_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-poworkerrush">vs POWorkerRush <a href="https://github.com/Farama-Foundation/MicroRTS/blob/master/src/ai/abstraction/partialobservability/POWorkerRush.java" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_POWorkerRush_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_POWorkerRush_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-mayari">vs Mayari <a href="https://github.com/barvazkrav/mayariBot" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_Mayari_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_Mayari_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-mixedbot">vs MixedBot <a href="https://github.com/AmoyZhp/MixedBotmRTS" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_MixedBot_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_MixedBot_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-droplet">vs Droplet <a href="https://github.com/zuozhiyang/Droplet" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_Droplet_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_Droplet_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-gridnet-300m">vs GridNet-300M <a href="https://github.com/Farama-Foundation/MicroRTS-Py" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_GridNet-300M_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_GridNet-300M_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-tiamat">vs Tiamat <a href="https://github.com/jr9Hernandez/TiamatBot" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_Tiamat_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_Tiamat_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-strategytactics">vs StrategyTactics <a href="https://github.com/nbarriga/microRTSbot" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_StrategyTactics_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_StrategyTactics_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-naivemcts">vs NaiveMCTS <a href="https://github.com/Farama-Foundation/MicroRTS/blob/master/src/ai/mcts/naivemcts/NaiveMCTS.java" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_NaiveMCTS_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_NaiveMCTS_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-polightrush">vs POLightRush <a href="https://github.com/Farama-Foundation/MicroRTS/blob/master/src/ai/abstraction/partialobservability/POLightRush.java" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_POLightRush_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_POLightRush_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

<div class="matchup">
<h3 id="vs-randombiasedai">vs RandomBiasedAI <a href="https://github.com/Farama-Foundation/MicroRTS/blob/master/src/ai/RandomBiasedAI.java" class="ref-link" target="_blank" rel="noopener">source &#8599;</a></h3>
<div class="video-grid">
<figure><img src="videos/BestRL-350M_vs_RandomBiasedAI_P0.gif" alt=""><figcaption>Our agent plays in P0 position</figcaption></figure>
<figure><img src="videos/BestRL-350M_vs_RandomBiasedAI_P1.gif" alt=""><figcaption>Our agent plays in P1 position</figcaption></figure>
</div>
</div>

---

<h2 id="detailed-tournament-analysis">Detailed tournament analysis</h2>

Game-theoretic metrics behind the final standings. These complement the head-to-head matrix shown at the top of the page.

<div class="results-figures grid-2x2">

<figure><img src="figures/copeland_scores.png" alt="Copeland scores"><figcaption>Copeland scores.</figcaption></figure>

<figure><img src="figures/alpha_rank_sweep.png" alt="Alpha-Rank sweep"><figcaption>Alpha-Rank sweep.</figcaption></figure>

<figure><img src="figures/nash_scores.png" alt="Nash scores"><figcaption>Nash averaging scores.</figcaption></figure>

<figure><img src="figures/robustness_score.png" alt="Robustness score"><figcaption>Robustness across opponents.</figcaption></figure>

</div>
