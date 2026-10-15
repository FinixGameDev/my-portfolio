#!/usr/bin/env bash
# Downloads the images from your CURRENT live portfolio into this Hugo project.
# Run once from the project root:  bash scripts/import-images.sh
set -u
BASE="https://finixgamedev.github.io/my-portfolio/imgs"

get() { # <remote file> <local path>
  mkdir -p "$(dirname "$2")"
  if curl -fsSL "$BASE/$1" -o "$2"; then echo "ok      $2"; else echo "MISSING $1"; rm -f "$2"; fi
}

get iconcircle.png assets/img/iconcircle.png

# project slug : remote prefix : extension
# details1 -> feature (card thumbnail + hero), details2/3 -> screenshots
for row in \
  "moises-morreu-e-eu-matei-o:moises:png" \
  "count-toothertin:count:png" \
  "sams-last-nightmare:sln:png" \
  "maze-generator:maze:jpg" \
  "lexis-adventure:lexi:png"
do
  IFS=: read -r slug prefix ext <<<"$row"
  dir="content/projects/$slug"
  get "portfolio-details-${prefix}1.${ext}" "$dir/feature.${ext}"
  get "portfolio-details-${prefix}2.${ext}" "$dir/screenshot-1.${ext}"
  get "portfolio-details-${prefix}3.${ext}" "$dir/screenshot-2.${ext}"
done
echo "Done. The hero video (assets/highlightedProject.mov) is not imported; see README."
