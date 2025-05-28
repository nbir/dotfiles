CLOUD_SYNC_DIR="$HOME/Library/Mobile Documents/com~apple~CloudDocs/sync"

# SSH keys

SSH_KEYS=(
    config
    id_rsa_nibir_personal
    id_rsa_nibir_personal.pub
    id_rsa_nibir_homelab_bastion
    id_rsa_nibir_homelab_bastion.pub
    id_rsa_nibir_homelab_rpi_k8s_cluster
    id_rsa_nibir_homelab_rpi_k8s_cluster.pub
)

CLOUD_DIR=$CLOUD_SYNC_DIR/ssh
LOCAL_DIR=~/.ssh

for key in ${SSH_KEYS[@]}
do
    echo "ln -s $CLOUD_DIR/$key $LOCAL_DIR/$key"
    ln -s "$CLOUD_DIR/$key" $LOCAL_DIR/$key
done
