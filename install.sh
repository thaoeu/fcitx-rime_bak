pacman -S --noconfirm fcitx fcitx-im fcitx-rime fcitx-configtool
mkdir -p ~/.config/fcitx
cp -r $PWD/rime ~/.config/fcitx
echo 'export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"' >> /etc/X11/xinit/xinitrc
fcitx-configtool
