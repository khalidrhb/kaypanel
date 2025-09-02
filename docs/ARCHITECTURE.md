# Architecture (High Level)

KayPanel is a fork of CyberPanel with additional modules for .NET deployments.

## Key Parts
- Web UI (Python/Django + templates) — rebranded
- Service layer (OpenLiteSpeed, MariaDB, Postfix/Dovecot integrations)
- .NET integration: `cyberpanel-dotnet` CLI invoked by panel actions

## Where to integrate .NET
- New menu: **Apps > .NET**
- Actions call the CLI:
  - enable site
  - redeploy
  - view logs
