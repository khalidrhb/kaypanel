# KayPanel Quickstart

## Local Development (Docker)
```bash
git clone https://github.com/kaypanel/kaypanel.git
cd kaypanel
docker compose up -d
# open http://localhost:8090
```

## Bare‑metal Install (Dev)
```bash
sudo bash install.sh --dev
```

## First Login
- URL: `https://<your-server-ip>:8090`
- Default user: `admin`
- Password: set during install

## Deploy a .NET App
```bash
sudo cyberpanel-dotnet enable example.com --dll MyApp.dll
sudo cyberpanel-dotnet redeploy
journalctl -u dotnet-app@example_com -f
```
