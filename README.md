# Subdomain Enumerator & Live Host Checker

A simple Bash script to automate subdomain enumeration using multiple tools and identify live domains.  
Combines results from `subfinder`, `sublist3r`, and `assetfinder`, then checks which are live using `httpx`.

---

## 🔧 Tools Required

Before running the script, make sure the following tools are installed and in your `$PATH`:

- [`subfinder`](https://github.com/projectdiscovery/subfinder)
- [`sublist3r`](https://github.com/aboul3la/Sublist3r)
- [`assetfinder`](https://github.com/tomnomnom/assetfinder)
- [`httpx`](https://github.com/projectdiscovery/httpx)

Install them using `go install`, `apt`, or `pip` as appropriate.

---

# 🚀 Usage

# 1. Save the script
###
    curl -O https://raw.githubusercontent.com/RiajulKamal/subdomainFind/refs/heads/main/subdomainFind.sh

# 2. Make it executable
###
    chmod +x findLiveSubdomains.sh

# 3. Run the script
###
    ./findLiveSubdomains.sh
