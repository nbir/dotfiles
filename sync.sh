CLOUD_SYNC_DIR="$HOME/Library/Mobile Documents/com~apple~CloudDocs/sync"

# SSH keys

SSH_KEYS=(
    config
    id_rsa_nibir_personal
    id_rsa_nibir_personal.pub
)

CLOUD_DIR=$CLOUD_SYNC_DIR/ssh
LOCAL_DIR=~/.ssh

for key in ${SSH_KEYS[@]}
do
    echo "ln -s $CLOUD_DIR/$key $LOCAL_DIR/$key"
    ln -s "$CLOUD_DIR/$key" $LOCAL_DIR/$key
done

# Sublime Text
# https://blog.codecarrot.net/how-to-sync-sublime-text-packages-and-settings-across-multiple-computers-with-cloud-storage/

CLOUD_DIR=$CLOUD_SYNC_DIR/sublime-text
LOCAL_DIR="$HOME/Library/Application Support/Sublime Text 3/Packages"

mv "$LOCAL_DIR/User" "$LOCAL_DIR/User.backup"
ln -s "$CLOUD_DIR/User" "$LOCAL_DIR/User"
