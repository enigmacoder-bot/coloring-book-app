Write-Host "🎨 Copying source files from original project..." -ForegroundColor Cyan
Write-Host ""

# Copy component files
Write-Host "📱 Copying components..." -ForegroundColor Yellow
$components = @(
    "IntegratedColoringBookApp.tsx",
    "NativeZebraCanvas.tsx", 
    "FullscreenCanvas.tsx",
    "WorkingColoringCanvas.tsx",
    "ZebraColoringCanvas.tsx",
    "ImageUploaderEnhanced.tsx"
)

foreach ($component in $components) {
    $source = "..\src\components\$component"
    $dest = "src\components\$component"
    if (Test-Path $source) {
        Copy-Item $source $dest -Force
        Write-Host "✅ $component" -ForegroundColor Green
    } else {
        Write-Host "❌ $component not found" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "⚙️ Copying services..." -ForegroundColor Yellow
$services = @(
    "PngTemplateService.ts",
    "GeminiService.ts",
    "SettingsService.ts", 
    "UserTemplatesService.ts"
)

foreach ($service in $services) {
    $source = "..\src\services\$service"
    $dest = "src\services\$service"
    if (Test-Path $source) {
        Copy-Item $source $dest -Force
        Write-Host "✅ $service" -ForegroundColor Green
    } else {
        Write-Host "❌ $service not found" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "🔧 Copying utils..." -ForegroundColor Yellow
$utils = @(
    "ZebraFloodFill.ts",
    "ZebraPaintEngine.ts"
)

foreach ($util in $utils) {
    $source = "..\src\utils\$util"
    $dest = "src\utils\$util"
    if (Test-Path $source) {
        Copy-Item $source $dest -Force
        Write-Host "✅ $util" -ForegroundColor Green
    } else {
        Write-Host "❌ $util not found" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "🖼️ Copying template assets..." -ForegroundColor Yellow
$templateSource = "..\src\assets\templates\*.png"
if (Test-Path "..\src\assets\templates\") {
    $pngFiles = Get-ChildItem "..\src\assets\templates\*.png" -ErrorAction SilentlyContinue
    if ($pngFiles) {
        Copy-Item "..\src\assets\templates\*.png" "src\assets\templates\" -Force
        Write-Host "✅ PNG templates copied ($($pngFiles.Count) files)" -ForegroundColor Green
    } else {
        Write-Host "❌ No PNG files found in templates directory" -ForegroundColor Red
    }
} else {
    Write-Host "❌ Templates directory not found" -ForegroundColor Red
}

Write-Host ""
Write-Host "📱 Copying app assets..." -ForegroundColor Yellow
$assets = @(
    "icon.png",
    "adaptive-icon.png",
    "splash.png", 
    "favicon.png"
)

$assetsFound = 0
foreach ($asset in $assets) {
    $source = "..\assets\$asset"
    $dest = "assets\$asset"
    if (Test-Path $source) {
        Copy-Item $source $dest -Force
        Write-Host "✅ $asset" -ForegroundColor Green
        $assetsFound++
    } else {
        Write-Host "❌ $asset not found" -ForegroundColor Red
    }
}

if ($assetsFound -eq 0) {
    Write-Host ""
    Write-Host "⚠️ No app assets found. Creating placeholder assets..." -ForegroundColor Yellow
    
    # Create placeholder assets for GitHub Actions
    $base64PNG = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNkYPhfDwAChwGA60e6kgAAAABJRU5ErkJggg=="
    $bytes = [Convert]::FromBase64String($base64PNG)
    
    foreach ($asset in $assets) {
        $dest = "assets\$asset"
        [System.IO.File]::WriteAllBytes($dest, $bytes)
        Write-Host "✅ Created placeholder $asset" -ForegroundColor Green
    }
    
    Write-Host ""
    Write-Host "📝 Note: Placeholder assets created for GitHub Actions." -ForegroundColor Cyan
    Write-Host "   Replace these with your actual app icons before publishing." -ForegroundColor Cyan
}

Write-Host ""
Write-Host "🎉 File copying complete!" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Next steps:" -ForegroundColor Cyan
Write-Host "1. Check that all files were copied successfully"
Write-Host "2. Run: npm install"
Write-Host "3. Run: npx expo start"
Write-Host "4. Test the app to make sure everything works"
Write-Host "5. Upload to GitHub: https://github.com/enigmacoder-bot/coloring-book-app"
Write-Host ""
Write-Host "🚀 GitHub Commands:" -ForegroundColor Cyan
Write-Host "git init"
Write-Host "git add ."
Write-Host 'git commit -m "🎨 Initial commit: ColorSplash Kids coloring app"'
Write-Host "git remote add origin https://github.com/enigmacoder-bot/coloring-book-app.git"
Write-Host "git branch -M main"
Write-Host "git push -u origin main"
Write-Host ""
Read-Host "Press Enter to continue..."