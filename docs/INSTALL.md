# Install Guide

## Requirements
- Ubuntu 22.04 LTS (fresh VM recommended)
- 2 vCPU / 4 GB RAM minimum
- Root access

## Steps
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/kaypanel/kaypanel/main/install.sh)"
```

### Flags
- `--dev` : install dev dependencies and skip hardening
- `--with-dotnet` : ensures `cyberpanel-dotnet` is installed

## Uninstall (experimental)
```bash
sudo /usr/local/kaypanel/uninstall.sh
```
