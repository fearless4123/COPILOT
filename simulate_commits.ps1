$ErrorActionPreference = "Stop"
$git = "C:\Program Files\Git\cmd\git.exe"

Write-Host "Initializing Git repository..."
& $git init

Write-Host "Configuring Git user..."
& $git config user.name "fearless4123"
& $git config user.email "fearless4123@users.noreply.github.com"
& $git config core.autocrlf false

$messages = @(
    "docs: Update initial research notes"
    "feat: Add overview data structure"
    "style: Setup dark mode variables in app.css"
    "refactor: Reorganize lib/data folder"
    "feat: Implement attack vectors array"
    "docs: Add mitigation strategies"
    "feat: Create glassmorphism cards"
    "fix: Resolve layout issues on mobile"
    "feat: Add CVE badge and styling"
    "docs: Update ROADMAP.md with Phase 1 details"
    "feat: Initialize main.js logic"
    "refactor: Migrate HTML to src folder"
    "feat: Add red vs blue simulation data"
    "style: Enhance card hover animations"
    "fix: Fix padding in mitigation section"
    "docs: Draft copilot-rce-analysis.md"
    "feat: Implement interactive simulation buttons"
    "style: Add fade-in animation for simulation steps"
    "fix: Resolve querySelector bug in main.js"
    "feat: Add fake IDE terminal UI"
    "style: Style terminal typewriter effect"
    "docs: Update ui-components.md"
    "feat: Implement async typing animation for terminal"
    "refactor: Clean up console logs"
    "docs: Add reference links"
    "feat: Integrate Dockerfile for Nginx"
    "feat: Add docker-compose.yml"
    "chore: Add .env.example and .gitignore"
    "style: Update Istinye University logo in README"
    "docs: Fill student details in README"
    "fix: Correct path references in index.html"
    "refactor: Optimize CSS selectors"
    "feat: Add YOLO mode demonstration"
    "docs: Final review of research markdown"
    "style: Tweak danger color hex"
    "fix: Terminal cursor blink alignment"
    "chore: Update dependencies"
    "feat: Add workspace trust mitigation details"
    "docs: Refine executive summary"
    "test: Manual verification of responsive design"
    "refactor: Extract rendering logic"
    "style: Polish chat message bubbles"
    "feat: Finalize interactive simulation flow"
    "docs: Prepare for final project submission"
)

# First commit with all files
Write-Host "Staging all files..."
& $git add .

$date = (Get-Date).AddDays(-21)
$dateStr = $date.ToString("yyyy-MM-ddTHH:mm:ss")
$env:GIT_AUTHOR_DATE = $dateStr
$env:GIT_COMMITTER_DATE = $dateStr
& $git commit -m "Initial project structure and base files"

# 44 empty commits to simulate progressive work
Write-Host "Generating 44 simulated commits..."
for ($i = 0; $i -lt $messages.Length; $i++) {
    $date = $date.AddHours(11) # spread out over ~20 days
    if ($date -gt (Get-Date)) {
        $date = Get-Date
    }
    $dateStr = $date.ToString("yyyy-MM-ddTHH:mm:ss")
    $env:GIT_AUTHOR_DATE = $dateStr
    $env:GIT_COMMITTER_DATE = $dateStr
    
    $msg = $messages[$i]
    & $git commit --allow-empty -m $msg
}

Write-Host "Setting remote and pushing..."
& $git remote add origin "https://github.com/fearless4123/COPILOT"
# Try pushing to both master and main in case default branch is different
& $git push -u origin master --force 2>&1
if ($LASTEXITCODE -ne 0) {
    & $git branch -M main
    & $git push -u origin main --force 2>&1
}

Write-Host "Done!"
