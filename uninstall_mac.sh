#!/bin/sh
set -e

# —————————————————————————————————————————————————————————————
# Target Directory
# —————————————————————————————————————————————————————————————
DESTDIR="${HOME}/Library/Application Support/Adobe/CEP/extensions/typertools_sf"

echo "+------------------------------------------------------------------+"
echo "|                   TypeR SmartFit Uninstaller                     |"
echo "+------------------------------------------------------------------+"
echo ""
echo "Photoshop extension TypeR SmartFit will be uninstalled."
echo "This will delete the following extension folder:"
echo "  $DESTDIR"
echo ""
read -p "? Are you sure you want to proceed? (y/n) " confirm

if [ "$confirm" = "y" ] || [ "$confirm" = "Y" ]; then
  if [ -d "$DESTDIR" ]; then
    rm -rf "$DESTDIR"
    echo ""
    echo "[OK] Extension TypeR SmartFit has been uninstalled successfully!"
  else
    echo ""
    echo "[INFO] Extension TypeR SmartFit is not installed."
  fi
else
  echo ""
  echo "[INFO] Uninstallation cancelled."
fi

echo ""
read -p "Press Enter to exit..."
