<div align="center">
  <a href="https://istinye.edu.tr">
    <img src="docs/assets/istinye-university-logo.webp" alt="Istinye University" width="180"/>
  </a>

  # GitHub Copilot Prompt Injection to RCE — VSCode Exploit Analysis

  ![GitHub](https://img.shields.io/badge/GitHub-Public-brightgreen?style=flat-square&logo=github)
  ![Language](https://img.shields.io/badge/Language-JavaScript-blue?style=flat-square)
  ![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=flat-square)
  ![Course](https://img.shields.io/badge/Course-BGT006-purple?style=flat-square)
  ![License](https://img.shields.io/badge/License-Educational-green?style=flat-square)
</div>

---

## 🎓 Instructor / Danışman

| | |
|---|---|
| **Name / Ad** | Keyvan Arasteh |
| **GitHub** | [@keyvanarasteh](https://github.com/keyvanarasteh) |
| **Email** | [keyvan.arasteh@istinye.edu.tr](mailto:keyvan.arasteh@istinye.edu.tr) |
| **LinkedIn** | [keyvanarasteh](https://www.linkedin.com/in/keyvanarasteh/) |
| **Website** | [qline.tech](https://qline.tech) |

---

## 👤 Student / Öğrenci

| | |
|---|---|
| **Name / Ad Soyad** | Yağız Genç |
| **Student ID / Öğrenci No** | `2520****1020` |

---

## 📚 Course Information / Ders Bilgileri

| | |
|---|---|
| **Course Name / Ders Adı** | Penetration Testing / Sızma Testi |
| **Course Code / Ders Kodu** | BGT006 |
| **Credits / Kredi** | 3 ECTS |
| **Semester / Dönem** | 2025-2026 Spring / 2025-2026 Bahar |
| **Institution / Üniversite** | [Istinye University](https://istinye.edu.tr) |

---

## 📋 Project Overview / Proje Özeti

This project analyzes the **GitHub Copilot Prompt Injection to RCE vulnerability (CVE-2025-53773)** discovered in August 2025. By pushing a maliciously crafted repository with hidden prompt injections in the `README.md`, attackers tricked the VSCode Copilot extension into executing local terminal commands, achieving full Remote Code Execution on the victim's machine.

Bu proje, Ağustos 2025'te keşfedilen **GitHub Copilot İstem Enjeksiyonu ile RCE zafiyetini (CVE-2025-53773)** analiz etmektedir. `README.md` dosyasında gizli istem enjeksiyonları bulunan kötü niyetli bir depo (repository) gönderen saldırganlar, VSCode Copilot eklentisini kandırarak yerel terminal komutlarını çalıştırdı ve kurbanın makinesinde tam uzaktan kod çalıştırma (RCE) elde etti.

The project includes an **interactive live exploit simulation** that visually demonstrates the attack flow within a fake VS Code environment.

### 🎬 Live Exploit Simulation Demo

![Live Exploit Simulation](docs/assets/exploit-simulation.webp)

---

## 🗂 Repository Structure / Repo Yapısı

```
.
├── README.md
├── ROADMAP.md
├── Dockerfile
├── docker-compose.yml
├── .env.example
├── .gitignore
├── docs/
│   ├── modules/
│   │   └── live-exploit-simulation.md
│   ├── research/
│   │   └── copilot-rce-analysis.md
│   └── references/
│       └── links.md
└── src/
    ├── index.html
    ├── app.css
    ├── main.js
    └── lib/
        └── data/
            ├── overview.js
            ├── attack_vectors.js
            ├── mitigation.js
            └── red_vs_blue.js
```

---

## 🚀 Getting Started / Kurulum

```bash
git clone https://github.com/fearless4123/COPILOT
cd COPILOT
cp .env.example .env
# Edit .env with your values / .env dosyasını doldurun
docker-compose up -d
```

Then open `http://localhost:8080` in your browser.
Ardından tarayıcınızda `http://localhost:8080` adresini açın.

---

## 📊 Deliverables / Teslimler

| Item | Status |
|------|--------|
| Vulnerability Research & Analysis / Zafiyet Araştırması | ✅ |
| Interactive Live Exploit Simulation / Canlı Exploit Simülasyonu | ✅ |
| Red vs Blue Team Simulation / Kırmızı vs Mavi Takım Simülasyonu | ✅ |
| Mitigation Strategies / Hafifletme Stratejileri | ✅ |
| Docker Containerization / Docker Konteynerizasyonu | ✅ |
| Full Documentation / Tam Belgeleme | ✅ |

---

## 📚 Documentation / Belgeleme

All module docs → [`docs/modules/`](./docs/modules/)
Research notes → [`docs/research/`](./docs/research/)

---

## 🔗 References / Kaynaklar

- [CVE-2025-53773 — GitHub Copilot RCE via Prompt Injection](https://secnora.com)
- [VS Code Workspace Trust Documentation](https://code.visualstudio.com/docs/editor/workspace-trust)
- [Medium: The Threat of AI Agent Prompt Injections](https://medium.com)
