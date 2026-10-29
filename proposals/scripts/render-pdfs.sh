#!/bin/sh
# render-pdfs.sh — carried from taylordwraps (the foundation's proposals/.github/workflows/pdf.yml, runnable locally).
#   sh proposals/scripts/render-pdfs.sh            # every NNN-*/README.md → pdf/NNN-*.pdf
# GitHub callouts become bold labels; <details> open; md-to-pdf@5 (Puppeteer/Chromium) renders A4.
set -eu
cd "$(dirname "$0")/.."
for dir in [0-9][0-9][0-9]-*/; do
  name="${dir%/}"
  [ -f "$name/README.md" ] || continue
  sed -e 's/<details>/<details open>/g' \
      -e 's/^> \[!TIP\]/> **Tip.**/' -e 's/^> \[!NOTE\]/> **Note.**/' -e 's/^> \[!IMPORTANT\]/> **Important.**/' -e 's/^> \[!WARNING\]/> **Warning.**/' \
      "$name/README.md" > "$name/_print.md"
  PUPPETEER_SKIP_DOWNLOAD=1 PUPPETEER_EXECUTABLE_PATH="${PUPPETEER_EXECUTABLE_PATH:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}" npx -y md-to-pdf@5 "$name/_print.md" --basedir . \
    --css 'img{display:inline-block !important;vertical-align:-3px;margin:0 3px} h2 img{vertical-align:-5px} details>summary{font-weight:600} body{font-family:Helvetica,Arial,sans-serif}' \
    --launch-options '{"args":["--no-sandbox"]}' \
    --pdf-options '{"format":"A4","margin":{"top":"18mm","bottom":"18mm","left":"16mm","right":"16mm"},"printBackground":true}'
  mv "$name/_print.pdf" "pdf/$name.pdf"
  rm "$name/_print.md"
  echo "pdf/$name.pdf"
done
