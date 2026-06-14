# ROADMAP — GitHub Copilot Prompt Injection to RCE Analysis
# ROADMAP — GitHub Copilot İstem Enjeksiyonu ile RCE Analizi

> Course / Ders: Penetration Testing (BGT006) · Istinye University
> Instructor / Danışman: Keyvan Arasteh 

---

## Phase 0 / Faz 0: Understand Before You Build / Yazmadan Önce Anla

Before writing a single line of code, I answered these questions:
Tek satır kod yazmadan önce şu soruları yanıtladım:

- What is the project? / Proje nedir?
  - GitHub Copilot'ta keşfedilen Prompt Injection → RCE zafiyetinin (CVE-2025-53773) interaktif analiz ve simülasyonu.
- How does it work? / Nasıl çalışır?
  - README.md içine gizlenen istem enjeksiyonları, Copilot Chat'in bağlam olarak okuduğu dosyalar aracılığıyla `.vscode/settings.json` dosyasını değiştirerek "YOLO Mode"u aktif eder ve terminal üzerinden RCE sağlar.
- What are the inputs/outputs? / Girdiler/çıktılar neler?
  - Girdi: Zararlı README.md → Çıktı: Kurbanın makinesinde uzaktan kod çalıştırma.
- What tools will I use and why? / Hangi araçları kullanacağım ve neden?
  - Vanilla JS + CSS: Sıfır bağımlılık, tarayıcıda doğrudan çalışabilir. Docker + Nginx: Projenin konteynerize edilmesi.

---

## Phase 1 / Faz 1: Research & Investigation / Araştırma ve Keşif

> Folder / Klasör: `docs/research/`

| Topic / Konu | Status / Durum | Notes / Notlar |
|--------------|----------------|----------------|
| CVE-2025-53773 Zafiyet Detayları | ✅ Completed | Saldırı vektörü ve etki analizi tamamlandı |
| Prompt Injection Mekanizması | ✅ Completed | README.md üzerinden enjeksiyon akışı belgelendi |
| YOLO Mode (.vscode/settings.json) | ✅ Completed | autoApprove ayarının nasıl exploit edildiği incelendi |
| Red Team vs Blue Team Stratejileri | ✅ Completed | Saldırı ve savunma adımları çıkarıldı |

---

## Phase 2 / Faz 2: Environment Setup / Ortam Kurulumu

- [x] Isolated lab environment (Docker / VM) / İzole lab ortamı
- [x] Tools installed and verified / Araçlar kuruldu ve test edildi
- [x] `.env.example` created / oluşturuldu

---

## Phase 3 / Faz 3: Implementation / Uygulama

### Module / Modül: Live Exploit Simulation / Canlı Exploit Simülasyonu

1. Step 1 / Adım 1 — Modüler veri yapısının (`src/lib/data/`) tasarımı ve oluşturulması
2. Step 2 / Adım 2 — Karanlık mod glassmorphism CSS tasarım sistemi (`app.css`)
3. Step 3 / Adım 3 — Dinamik sayfa render motoru (`main.js`)
4. Step 4 / Adım 4 — VS Code IDE ve Terminal simülasyonunun kodlanması
5. Step 5 / Adım 5 — İnteraktif Red vs Blue adım adım simülasyonu
6. Step 6 / Adım 6 — Canlı typing animasyonu ve exploit akışının entegrasyonu

---

## Phase 4 / Faz 4: Testing & Reporting / Test ve Raporlama

- [x] Ran tests against target/sample / Hedef/örnek üzerinde testler çalıştırıldı
- [x] Documented all findings with evidence / Tüm bulgular kanıtlarıyla belgelendi
- [x] Wrote final report (Markdown) / Final raporu yazıldı

---

## Phase 5 / Faz 5: Delivery / Teslim

- [x] GitHub repository is clean and organized / Repo temiz ve düzenli
- [x] README.md complete / eksiksiz
- [x] Docker verified (`docker-compose up`) / doğrulandı
- [ ] Instructor invited as collaborator / Danışman collaborator olarak eklendi → **keyvanarasteh**

---

## What I Learned / Öğrendiklerim

Bu proje ile yapay zeka asistanlarının (Agentic AI) ne kadar güçlü olduğunu ancak aynı zamanda "Human-in-the-loop" (İnsan onayı) mekanizması olmadan ne kadar tehlikeli olabileceğini anladım. Prompt Injection saldırıları, geleneksel SQL Injection veya XSS'e benzer şekilde, yapay zeka çağının en kritik zafiyet kategorilerinden biri haline gelmiştir. Workspace Trust ve Sandboxing gibi savunma mekanizmalarının önemi bir kez daha ortaya çıkmıştır.
