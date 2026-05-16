window.redVsBlueData = {
    title: "Interactive Red vs Blue Simulation",
    steps: [
        {
            phase: "Phase 1: Setup & Recon",
            red: {
                title: "Attacker Setup",
                action: "Craft a seemingly harmless open-source repository or tutorial that a developer might clone.",
                icon: "🎣"
            },
            blue: {
                title: "Defender Prevention",
                action: "Enforce VS Code Workspace Trust policies across the organization (Restricted Mode by default).",
                icon: "🏢"
            }
        },
        {
            phase: "Phase 2: Payload Delivery",
            red: {
                title: "Prompt Injection",
                action: "Embed a hidden prompt injection payload (e.g., `<!-- copilot:ignore -->`) inside the `README.md`.",
                icon: "💉"
            },
            blue: {
                title: "Developer Awareness",
                action: "Educate developers on the risks of AI prompt injections and the importance of reviewing AI actions.",
                icon: "🧠"
            }
        },
        {
            phase: "Phase 3: Exploitation",
            red: {
                title: "YOLO Mode Activation",
                action: "Instruct Copilot Chat via the payload to modify `.vscode/settings.json` and enable `chat.tools.autoApprove`.",
                icon: "⚙️"
            },
            blue: {
                title: "Integrity Monitoring",
                action: "Implement File Integrity Monitoring (FIM) for sensitive developer configuration files like `.vscode/settings.json`.",
                icon: "🔍"
            }
        },
        {
            phase: "Phase 4: Post-Exploitation",
            red: {
                title: "Remote Code Execution",
                action: "Once 'YOLO Mode' is active, silently execute a reverse shell or download a payload via the terminal.",
                icon: "💻"
            },
            blue: {
                title: "Endpoint Detection",
                action: "Monitor endpoint telemetry (EDR) for unexpected child processes spawned by `code.exe` (e.g., `curl`, `bash`).",
                icon: "🚨"
            }
        }
    ]
};
