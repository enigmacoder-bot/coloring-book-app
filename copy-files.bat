@echo off
echo 🎨 Copying source files from original project...
echo.

REM Copy component files
echo 📱 Copying components...
copy "..\src\components\IntegratedColoringBookApp.tsx" "src\components\" >nul 2>&1 && echo ✅ IntegratedColoringBookApp.tsx || echo ❌ IntegratedColoringBookApp.tsx not found
copy "..\src\components\NativeZebraCanvas.tsx" "src\components\" >nul 2>&1 && echo ✅ NativeZebraCanvas.tsx || echo ❌ NativeZebraCanvas.tsx not found
copy "..\src\components\FullscreenCanvas.tsx" "src\components\" >nul 2>&1 && echo ✅ FullscreenCanvas.tsx || echo ❌ FullscreenCanvas.tsx not found
copy "..\src\components\WorkingColoringCanvas.tsx" "src\components\" >nul 2>&1 && echo ✅ WorkingColoringCanvas.tsx || echo ❌ WorkingColoringCanvas.tsx not found
copy "..\src\components\ZebraColoringCanvas.tsx" "src\components\" >nul 2>&1 && echo ✅ ZebraColoringCanvas.tsx || echo ❌ ZebraColoringCanvas.tsx not found
copy "..\src\components\ImageUploaderEnhanced.tsx" "src\components\" >nul 2>&1 && echo ✅ ImageUploaderEnhanced.tsx || echo ❌ ImageUploaderEnhanced.tsx not found

echo.
echo ⚙️ Copying services...
copy "..\src\services\PngTemplateService.ts" "src\services\" >nul 2>&1 && echo ✅ PngTemplateService.ts || echo ❌ PngTemplateService.ts not found
copy "..\src\services\GeminiService.ts" "src\services\" >nul 2>&1 && echo ✅ GeminiService.ts || echo ❌ GeminiService.ts not found
copy "..\src\services\SettingsService.ts" "src\services\" >nul 2>&1 && echo ✅ SettingsService.ts || echo ❌ SettingsService.ts not found
copy "..\src\services\UserTemplatesService.ts" "src\services\" >nul 2>&1 && echo ✅ UserTemplatesService.ts || echo ❌ UserTemplatesService.ts not found

echo.
echo 🔧 Copying utils...
copy "..\src\utils\ZebraFloodFill.ts" "src\utils\" >nul 2>&1 && echo ✅ ZebraFloodFill.ts || echo ❌ ZebraFloodFill.ts not found
copy "..\src\utils\ZebraPaintEngine.ts" "src\utils\" >nul 2>&1 && echo ✅ ZebraPaintEngine.ts || echo ❌ ZebraPaintEngine.ts not found

echo.
echo 🖼️ Copying template assets...
if exist "..\src\assets\templates\*.png" (
    copy "..\src\assets\templates\*.png" "src\assets\templates\" >nul 2>&1
    echo ✅ PNG templates copied
) else (
    echo ❌ No template PNG files found in ..\src\assets\templates\
)

echo.
echo 📱 Copying app assets...
if exist "..\assets\icon.png" (copy "..\assets\icon.png" "assets\" >nul 2>&1 && echo ✅ icon.png) else echo ❌ icon.png not found
if exist "..\assets\adaptive-icon.png" (copy "..\assets\adaptive-icon.png" "assets\" >nul 2>&1 && echo ✅ adaptive-icon.png) else echo ❌ adaptive-icon.png not found
if exist "..\assets\splash.png" (copy "..\assets\splash.png" "assets\" >nul 2>&1 && echo ✅ splash.png) else echo ❌ splash.png not found
if exist "..\assets\favicon.png" (copy "..\assets\favicon.png" "assets\" >nul 2>&1 && echo ✅ favicon.png) else echo ❌ favicon.png not found

echo.
echo 🎉 File copying complete!
echo.
echo 📋 Next steps:
echo 1. Check that all files were copied successfully
echo 2. Run: npm install
echo 3. Run: npx expo start
echo 4. Test the app to make sure everything works
echo 5. Upload to GitHub: https://github.com/enigmacoder-bot/coloring-book-app
echo.
echo 🚀 GitHub Commands:
echo git init
echo git add .
echo git commit -m "🎨 Initial commit: ColorSplash Kids coloring app"
echo git remote add origin https://github.com/enigmacoder-bot/coloring-book-app.git
echo git branch -M main
echo git push -u origin main
echo.
pause