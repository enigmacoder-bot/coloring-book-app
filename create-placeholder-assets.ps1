Write-Host "🎨 Creating placeholder assets for GitHub Actions..." -ForegroundColor Cyan

# Create a simple 1024x1024 PNG placeholder using PowerShell
# This creates a minimal valid PNG file that Expo can use

# Base64 encoded 1x1 transparent PNG
$base64PNG = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNkYPhfDwAChwGA60e6kgAAAABJRU5ErkJggg=="

# Convert base64 to bytes
$bytes = [Convert]::FromBase64String($base64PNG)

# Create placeholder files
Write-Host "Creating placeholder assets..." -ForegroundColor Yellow

# Create icon.png (1024x1024)
[System.IO.File]::WriteAllBytes("assets\icon.png", $bytes)
Write-Host "✅ Created assets\icon.png" -ForegroundColor Green

# Create adaptive-icon.png (1024x1024)
[System.IO.File]::WriteAllBytes("assets\adaptive-icon.png", $bytes)
Write-Host "✅ Created assets\adaptive-icon.png" -ForegroundColor Green

# Create splash.png (1284x2778)
[System.IO.File]::WriteAllBytes("assets\splash.png", $bytes)
Write-Host "✅ Created assets\splash.png" -ForegroundColor Green

# Create favicon.png (48x48)
[System.IO.File]::WriteAllBytes("assets\favicon.png", $bytes)
Write-Host "✅ Created assets\favicon.png" -ForegroundColor Green

Write-Host ""
Write-Host "🎉 Placeholder assets created!" -ForegroundColor Green
Write-Host "Note: These are minimal placeholder files. Replace them with your actual app icons before publishing." -ForegroundColor Yellow