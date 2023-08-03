#!/bin/bash

# Option 1: Use variable of environment to apply Adwaita dark theme
GTK_THEME=Adwaita:dark zathura

# Option 2: Modify GTK+ 3 configuration to prefer dark theme
mkdir -p ~/.config/gtk-3.0/
echo "[Settings]" > ~/.config/gtk-3.0/settings.ini
echo "gtk-application-prefer-dark-theme=1" >> ~/.config/gtk-3.0/settings.ini

# Optional message for the user
echo "Dark theme applied to zathura. You can now run 'zathura' to use the dark theme."


# chmod +x zathura_dark_theme.sh
# ./zathura_dark_theme.sh
