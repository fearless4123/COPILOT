window.mitigationData = [
    {
        title: "Workspace Trust",
        description: "VS Code's Workspace Trust feature should be utilized. Always open untrusted or external projects in **Restricted Mode**. This disables agents and other sensitive features until you explicitly trust the workspace, preventing Copilot from running prompt injections from unknown repos.",
        icon: "shield-check"
    },
    {
        title: "Agent Sandboxing",
        description: "Enable `chat.tools.terminal.sandbox.enabled` in your settings. This restricts the file system and network access available to AI-executed commands, mitigating the impact even if a command is executed.",
        icon: "lock-closed"
    },
    {
        title: "Restrict Auto-Approvals",
        description: "Configure `chat.tools.edits.autoApprove` with specific glob patterns to require manual approval for sensitive files. Never allow auto-approval for configuration files like `.vscode/settings.json` or `.env`.",
        icon: "hand-raised"
    },
    {
        title: "Review AI Actions",
        description: "Always carefully review file edits and tool actions proposed by AI agents before accepting them. AI should augment development, not operate completely autonomously on untrusted data.",
        icon: "eye"
    }
];
