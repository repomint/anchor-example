set -e

sudo apt update

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup component add rustfmt

# solana
sh -c "$(curl -sSfL https://release.solana.com/v1.7.11/install)"

# node, nppm
curl -sL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs

# mocha
sudo npm install -g mocha

# anchor
sudo npm i -g @project-serum/anchor-cli

# https://askubuntu.com/a/480642 for any trouble with npm
