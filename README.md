<h1 align="center">KayPanel</h1>
<p align="center"><b>Ad‑free, open‑source hosting control panel — a community fork of CyberPanel with first‑class .NET support.</b></p>

<p align="center">
  <a href="https://github.com/kaypanel/kaypanel/actions">CI</a> ·
  <a href="https://github.com/kaypanel/kaypanel/discussions">Discussions</a> ·
  <a href="https://github.com/kaypanel/kaypanel/issues/new/choose">Report Bug</a> ·
  <a href="./docs/ROADMAP.md">Roadmap</a>
</p>

## ✨ What is KayPanel?
KayPanel is a GPLv3 fork of CyberPanel focused on:
- 🚫 No ads or popups
- 🟣 Built‑in `.NET` app deploy via <code>cyberpanel-dotnet</code>
- 🔐 Sensible defaults (Let's Encrypt, firewall helpers)
- ⚡ Fast setup (shell installer + Docker option)

> This is a community project. CyberPanel is a trademark of its respective owners. KayPanel is not affiliated with CyberPanel or LiteSpeed.

## 📦 Quick Start
```bash
# 1) SSH into a fresh Ubuntu 22.04+ server as root
bash -c "$(curl -fsSL https://raw.githubusercontent.com/kaypanel/kaypanel/main/install.sh)"

# 2) Open the panel
echo "https://$(curl -s ifconfig.me):8090"
```

For local dev and Docker users, see [docs/QUICKSTART.md](./docs/QUICKSTART.md).

## 🛠 Features (initial goals)
- Ad‑free UI, rebranded as **KayPanel**
- One‑click .NET Core app deployment
- Auto SSL (acme.sh), DNS API helpers
- Site/DB/mail management parity with upstream

## 🧱 Repository layout
```
.
├── build/                # packaging, Docker, release scripts
├── docs/                 # guides, architecture, roadmap
├── installer/            # install assets used by install.sh
├── kaypanel/             # app source (fork + patches)
├── tools/                # developer tools and helpers
├── .github/              # issue templates, workflows
├── install.sh            # primary installer
└── docker-compose.yml    # optional local/dev
```

## 🔗 Legal
KayPanel is free software licensed under GPLv3. By contributing, you agree to license your work under the same license. See [LICENSE](./LICENSE) and [docs/LEGAL.md](./docs/LEGAL.md).
