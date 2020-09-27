pacman -S --noconfirm fcitx fcitx-im fcitx-rime fcitx-configtool
mkdir -p ~/.config/fcitx
cp -r $PWD/rime ~/.config/fcitx
echo '
# fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
' >> /etc/profile
cp ./bar.png /usr/share/fcitx/skin/classic
#fcitx-configtool
ln -f $PWD/rime/flypy_user.txt ~/.config/fcitx/rime
ln -f $PWD/rime/flypy_sys.txt ~/.config/fcitx/rime
ln -f $PWD/rime/flypy_top.txt ~/.config/fcitx/rime
ln -f $PWD/rime/flypy_user.txt $PWD/Sync_Rime
ln -f $PWD/rime/flypy_sys.txt $PWD/Sync_Rime
ln -f $PWD/rime/flypy_top.txt $PWD/Sync_Rime
