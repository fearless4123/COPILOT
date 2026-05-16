# Öğrenme ve Araştırma Yolculuğu (ROADMAP)

**Felsefe:** "Önce anla, sonra kodla." Her problemi küçük, sıralı parçalara böl. Bir dedektif gibi düşün: gözlemle, ham veriyi çevir, desenleri tespit et, raporla.

## Faz 0: Yazmadan Önce Anla
- [x] GitHub Copilot RCE (CVE-2025-53773) zafiyetinin duyurularını ve POC (Proof of Concept) raporlarını incele.
- [x] İstem Enjeksiyonu (Prompt Injection) konseptini anla.
- [x] Zafiyetin `.vscode/settings.json` ve "YOLO Mode" ile ilişkisini çöz.

## Faz 1: Araştırma ve Keşif (→ docs/research/)
- [x] Kırmızı Takım (Saldırgan) adımlarını belirle.
- [x] Mavi Takım (Savunmacı) adımlarını ve hafifletme stratejilerini (mitigation) çıkar.
- [x] Tüm bulguları `docs/research/copilot-rce-analysis.md` dosyasında belgele.

## Faz 2: Ortam Kurulumu
- [x] Vanilla JS projesi için modüler dizin yapısını (`src/lib/data/`) oluştur.
- [x] Repoyu İstinye Üniversitesi akademik standartlarına uygun klasör hiyerarşisine dönüştür.
- [x] `Dockerfile` ve `docker-compose.yml` ortamlarını kur.

## Faz 3: Uygulama
- [x] Adım 1: Zafiyet özeti verilerini tanımla (`overview.js`).
- [x] Adım 2: Saldırı vektörleri ve savunma verilerini oluştur.
- [x] Adım 3: Vanilla CSS ile karanlık mod, cam efekti (glassmorphism) tasarımını kodla.
- [x] Adım 4: JavaScript kullanarak sayfayı dinamik olarak render eden `main.js`'i yaz.
- [x] Adım 5: İnteraktif "Red vs Blue" simülasyonunu kodla.
- [x] Adım 6: Canlı RCE Terminal simülasyonu animasyonlarını entegre et.

## Faz 4: Test ve Raporlama
- [ ] Uygulamayı tarayıcıda yerel dosya olarak açarak test et.
- [ ] Docker konteyneri ayağa kaldırıp Nginx üzerinden test et.
- [ ] Markdown belgelerinde hata kontrolü yap.

## Faz 5: Teslim Kontrol Listesi
- [ ] Danışman hoca (keyvanarasteh) repo Collaborator olarak eklendi mi? (Zorunlu)
- [ ] README.md maskelenmiş öğrenci numarası ile dolduruldu mu?
- [ ] `docs/` dizinleri eksiksiz mi?
- [ ] Çevresel değişkenler (.env) `.gitignore` içinde mi?
- [ ] Tüm kodlar `src/` klasöründe mi?
