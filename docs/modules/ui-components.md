# Modül Belgesi: Arayüz ve Simülasyon (UI Components)

Bu proje, Vanilla JavaScript ve Saf CSS kullanılarak modüler bir mimariyle geliştirilmiştir.

## `app.css` - Tasarım Sistemi
Projenin görsel kimliği (Visual Identity) İstinye Üniversitesi siber güvenlik konseptine uygun olarak karanlık mod (Dark Mode) üzerine kurulmuştur.
- **Glassmorphism:** Kart tasarımlarında arkaplan bulanıklığı ve yarı saydamlık kullanıldı (`backdrop-filter: blur(12px)`).
- **Renk Paleti:** Saldırgan (Kırmızı Takım) eylemleri için `var(--danger-color) #ff5f56`, Savunmacı (Mavi Takım) eylemleri için `var(--accent-primary) #3b82f6` kullanıldı.

## `main.js` - Dinamik İşleyici (Renderer)
ES Modülleri yerel `file:///` protokolünde CORS hatalarına takıldığı için, tüm veriler global `window` objesine bağlandı.
- `renderSimulation()`: Kırmızı vs Mavi Takım etkileşimli simülasyonunu adım adım DOM'a çizen fonksiyon.
- **Canlı Exploit Animasyonu:** `async/await` yapısı kullanılarak, kullanıcının "Start Simulation" butonuna basmasıyla VS Code içerisinde gerçekleşen saldırı anı (klavye tıkırtısı efekti ile Terminal yazıları) adım adım simüle edilmiştir.
