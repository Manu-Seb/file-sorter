#!/usr/bin/env bash

# Where to install your files
INSTALL_DIR="$HOME/.file-sorter"
BIN_DIR="$HOME/bin"   # user-local binaries

# Create directories
mkdir -p "$INSTALL_DIR"
mkdir -p "$BIN_DIR"

# Copy all required files
cp config.conf "$INSTALL_DIR/"
cp extensions.json "$INSTALL_DIR/"
cp sorter.sh "$INSTALL_DIR/sort"  # rename sorter.sh to "sort" for CLI

# Make sorter executable
chmod +x "$INSTALL_DIR/sort"

# Symlink to BIN_DIR for global access
ln -sf "$INSTALL_DIR/sort" "$BIN_DIR/sort"

# Add BIN_DIR to PATH if not already
if ! echo "$PATH" | grep -q "$BIN_DIR"; then
    echo "export PATH=\"$BIN_DIR:\$PATH\"" >> "$HOME/.bashrc"
    echo "export PATH=\"$BIN_DIR:\$PATH\"" >> "$HOME/.zshrc"
    echo "Added $BIN_DIR to PATH. Restart your shell or run 'source ~/.bashrc' or 'source ~/.zshrc'"
fi

echo "✅ File sorter installed successfully!"
echo "You can now run it using: sort --setsource /path --setdest /path"

