#!/usr/bin/env bash
set -euo pipefail

# KayPanel installer (skeleton). For production, expand with real steps.

RED="\033[31m"; GREEN="\033[32m"; YELLOW="\033[33m"; NC="\033[0m"
log(){ echo -e "${GREEN}[kaypanel]${NC} $*"; }
warn(){ echo -e "${YELLOW}[kaypanel]${NC} $*"; }
err(){ echo -e "${RED}[kaypanel]${NC} $*" >&2; }

DEV=0
WITH_DOTNET=0
for arg in "$@"; do
  case "$arg" in
    --dev) DEV=1 ;;
    --with-dotnet) WITH_DOTNET=1 ;;
    *) ;;
  esac
done

log "Starting KayPanel install... (dev=$DEV, with-dotnet=$WITH_DOTNET)"
# 1) prerequisites
export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get install -y curl ca-certificates gnupg lsb-release

# 2) fetch/forked sources (placeholder)
mkdir -p /usr/local/kaypanel
echo "version=0.1.0" > /usr/local/kaypanel/version

# 3) install cyberpanel-dotnet if requested
if [[ "$WITH_DOTNET" == "1" ]]; then
  log "Installing cyberpanel-dotnet..."
  curl -fsSL https://raw.githubusercontent.com/khalidrhb/cyberpanel-dotnet/main/install.sh | bash -s -- --mode=with-plugin || warn "dotnet addon install failed"
fi

# 4) configure services (placeholder)
warn "Service configuration is a placeholder in this scaffold."

log "Done. Visit https://<server-ip>:8090 after services are configured."
