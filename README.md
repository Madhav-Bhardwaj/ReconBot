
<h2 align="center">
  <br>
  ReconBot <br> Automated Reconnaissance Framework for Hackers....
  <br>
</h2>



<hr>

> ReconBot is a powerful automated reconnaissance framework designed for hackers... It seamlessly integrates top open-source tools to conduct in-depth asset discovery, active subdomain enumeration, technology profiling, historical URL retrieval, JavaScript analysis, vulnerability scanning, and misconfiguration detection. Everything is streamlined into a structured, domain-specific workspace, minimizing manual effort while maximizing actionable intelligence. 🚀

<br>


 <img src="https://github.com/Madhav-Bhardwaj/ReconBot/blob/main/ReconBot.png">


## Features
- **Subdomain Enumeration** – Uses Subfinder and Assetfinder to discover subdomains, then filters active ones with httpx.
- **Domain Resolution** – Resolves subdomains to IPs using dnsx.
- **Technology Fingerprinting** – Identifies web technologies, including CDN detection, with cdncheck.
- **URL Collection** – Gathers URLs using Waybackurls, GAU, Katana, Hakrawler, and URLFinder.
- **Endpoint Discovery** – Extracts sensitive file paths like .json, .db, .config, .txt, .log, .cache, .secret, .backup, .yml, .gz, .rar, .zip.
- **JavaScript Recon** – Collects .js files for deeper analysis.
- Subdomain Takeover Detection – Detects takeover risks using Subzy.
- CORS Misconfiguration Scan – Identifies misconfigurations with Corsy.
- Vulnerability Scanning – Uses Nuclei to detect potential vulnerabilities.
- Open Redirect Detection – Automatically tests for open redirect issues by modifying query parameters.


# Installation
1. Clone the repository:  
```bash
   git clone https://github.com/Madhav-Bhardwaj/ReconBot.git
   cd ReconBot
   chmod +x install.sh
   ./install.sh
```

# Usage

  ```console
chmod +x reconbot
./reconbot -d <domain>
```

## Dependencies


- [Nuclei](https://github.com/projectdiscovery/nuclei)
- [httpx](https://github.com/projectdiscovery/httpx)
- [Subfinder](https://github.com/projectdiscovery/subfinder)
- [Katana](https://github.com/projectdiscovery/katana)
- [Subzy](https://github.com/LukaSikic/subzy)
- [GAU](https://github.com/lc/gau)
- [URLFinder](https://github.com/pingc0y/URLFinder)
- [Corsy](https://github.com/s0md3v/Corsy)
- [Hakrawler](https://github.com/hakluke/hakrawler)
- [WhatWeb](https://github.com/urbanadventurer/WhatWeb)
- [Uro](https://github.com/s0md3v/uro)
- [Dnsx](https://github.com/projectdiscovery/dnsx)
- [Urldedupe](https://github.com/ameenmaali/urldedupe)
- [Urless](https://github.com/xnl-h4ck3r/urless)
- [Waybackurls](https://github.com/tomnomnom/waybackurls)
- [Cdncheck](https://github.com/projectdiscovery/cdncheck)


## Contributors :heart:

<p align="left">
<a href="https://github.com/Deevesh1826"><img src="https://avatars.githubusercontent.com/u/202535026?v=4" width="50" height="50" alt="" style="max-width: 100%;"></a>

