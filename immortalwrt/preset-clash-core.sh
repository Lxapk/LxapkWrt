#!/bin/sh
set -e

CORE_DIR="files/etc/openclash/core"
mkdir -p "$CORE_DIR"

wget -qO- "https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-linux-${1}.tar.gz" \
| tar -xzO > "$CORE_DIR/clash_meta"

chmod +x "$CORE_DIR"/clash*