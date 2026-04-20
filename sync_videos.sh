#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────
# Build looping GIFs for the microrts-rl-single-map Jekyll site from MP4 recordings.
#
# Pipeline:
#   1. `microrts_agent/record_bestrl_vs_tournament.sh` generates the source
#      MP4s under $SRC (1 game per position × 12 tournament bots = 24 files).
#   2. This script converts each MP4 → GIF with the parameters tuned in our
#      site-page iteration (see below).
#
# GIF parameters (each was chosen deliberately; change with care):
#   crop=640:612:0:28    Remove the 28 px black band at the top (recording
#                        artifact from the MicroRTS renderer).
#   setpts=2*PTS         Play back 2× slower. The real-time game looks
#                        too fast for the eye, especially during micro-combat
#                        phases. This keeps it readable without dropping
#                        frames (smoother than simply lowering fps).
#   fps=15               Output frame rate. 15 fps is the sweet spot between
#                        size and fluidity on these recordings.
#   palettegen/paletteuse    Proper 2-pass palette generation — ~2× smaller
#                            GIFs at equal quality vs naive conversion.
#
# Why GIF (not MP4) on the site:
#   - Browsers limit the number of simultaneous <video> decoders (~8–20).
#     With 24 videos on one page, clicks were blocking.
#   - GIFs render as images: 100+ can loop in parallel with zero CPU bumps
#     after the initial download.
#   - Cost: ~42 MB total vs ~7 MB for the MP4 equivalent. Acceptable for a
#     one-time supplementary page load.
# ──────────────────────────────────────────────────────────────────────────
set -e

SRC="/Users/mathisdelsart/Desktop/MasterThesis/outputs/recordings"
DST="/Users/mathisdelsart/Desktop/MasterThesis/microrts-rl-single-map/videos"
MAP_SHORT="basesWorkers16x16A"

BOTS=(
  RAISocketAI UtsImass TMA TopFeatsRL-100M ObiBotKenobi AllFeatsRL-100M
  PhasedRL-300M CoacAI POWorkerRush Mayari MixedBot Droplet
  GridNet-300M Tiamat StrategyTactics NaiveMCTS POLightRush RandomBiasedAI
)

mkdir -p "$DST"

done_count=0
missing=0
for bot in "${BOTS[@]}"; do
  for pos in 0 1; do
    src_file="$SRC/BestRL-350M_vs_$bot/${MAP_SHORT}_P${pos}_game01.mp4"
    dst_file="$DST/BestRL-350M_vs_${bot}_P${pos}.gif"
    if [[ -f "$src_file" ]]; then
      ffmpeg -y -v error -i "$src_file" \
        -vf "crop=640:612:0:28,setpts=2*PTS,fps=15,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" \
        "$dst_file"
      size_mb=$(echo "scale=1; $(stat -f%z "$dst_file")/1048576" | bc)
      echo "OK  $bot P$pos : ${size_mb} MB"
      done_count=$((done_count+1))
    else
      echo "--  $bot P$pos  (missing: $src_file)"
      missing=$((missing+1))
    fi
  done
done

echo
echo "Converted: $done_count  |  Missing: $missing"
