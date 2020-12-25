DOTFILES=(
    .tmux.conf
)

for dotfile in ${DOTFILES[@]}
do
    ln -s $(pwd)/$dotfile ~
done
