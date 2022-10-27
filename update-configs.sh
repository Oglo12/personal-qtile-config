#! /bin/sh

notify-send "Rice Update Script" "Updating Qtile."
cd ~/.config/qtile/
git pull origin main

notify-send "Rice Update Script" "Updating Picom."
cd ~/.config/picom/
git pull origin main

notify-send "Rice Update Script" "Updating Dunst."
cd ~/.config/dunst/
git pull origin main

notify-send "Rice Update Script" "Updating Rofi."
cd ~/.config/rofi/
git pull origin main

notify-send "Rice Update Script" "Updating Alacritty."
cd ~/.config/alacritty/
git pull origin main

cd ~

notify-send "Rice Update Script" "Done! :-D"
