# GitHub Setup Guide

This guide will help you upload your clean coloring book app to GitHub.

## Step 1: Complete File Setup

First, you need to copy all the source files from your original project to this clean directory. Run these commands:

### Copy Component Files
```bash
# Copy all component files
copy ..\src\components\*.tsx .\src\components\
```

### Copy Service Files
```bash
# Copy all service files
copy ..\src\services\*.ts .\src\services\
```

### Copy Utility Files
```bash
# Copy all utility files
copy ..\src\utils\*.ts .\src\utils\
```

### Copy Type Definitions
```bash
# Copy type definitions
copy ..\types\*.d.ts .\types\
```

### Copy Template Assets
```bash
# Copy PNG templates (if you have them)
copy ..\src\assets\templates\*.png .\src\assets\templates\
```

### Copy App Icons
```bash
# Copy app icons to assets folder
copy ..\assets\*.png .\assets\
```

## Step 2: Create README for GitHub

<function_calls>
<invoke name="fsWrite">
<parameter name="path">coloring-book-clean/README.md 🎨 ColorSplash Kids - Coloring Book App

A beautiful, kid-friendly coloring book application built with React Native and Expo. Features AI-powered image-to-line-art conversion, multiple coloring tools, and a delightful user experience.

![Platform](https://img.shields.io/badge/platform-iOS%20%7C%20Android%20%7C%20Web-blue)
![React Native](https://img.shields.io/badge/React%20Native-0.79-blue)
![Expo](https://img.shields.io/badge/Expo-53-black)
![TypeScript](https://img.shields.io/badge/TypeScript-5.8-blue)

## ✨ Features

### 🖼️ Template Library
- **24+ Pre-loaded Templates**: Animals, vehicles, buildings, and objects
- **Difficulty Levels**: Easy, medium, and hard templates for all skill levels
- **Category Browsing**: Organized by theme for easy discovery
- **High-Quality PNG**: Crisp, clean outlines perfect for coloring

### 🤖 AI-Powered Line Art
- **Gemini AI Integration**: Convert any photo to a coloring template
- **Smart Outline Detection**: Automatically extracts clean, fillable outlines
- **Custom Templates**: Save your generated templates for later use
- **User Template Library**: Organize your custom creations by category

### 🎨 Professional Coloring Tools
- **Bucket Fill**: Smart flood fill that respects boundaries
- **Brush Tool**: Freehand drawing with adjustable size (2-50px)
- **Eraser**: Restore original template areas
- **Move Tool**: Pan and zoom for detailed work
- **Color Picker**: 30+ preset colors plus custom color wheel
- **Live Preview**: See your strokes before committing

### 📱 Intuitive Interface
- **Kid-Friendly Design**: Large buttons, clear icons, playful colors
- **Portrait & Landscape**: Automatic orientation support
- **Fullscreen Mode**: Distraction-free coloring experience
- **Responsive Layout**: Adapts to all screen sizes
- **Smooth Animations**: Delightful transitions and feedback

### 💾 Save & Share
- **Gallery Integration**: Save directly to device photo library
- **Organized Albums**: Auto-creates "Coloring Book" album
- **High-Quality Export**: PNG format with full resolution
- **Undo/Redo**: Multi-level history for mistake-free coloring

## 🚀 Quick Start

### Prerequisites
- Node.js 18 or higher
- npm or pnpm
- Expo CLI
- iOS Simulator (Mac) or Android Emulator

### Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/coloring-book-app.git
cd coloring-book-app

# Install dependencies
npm install

# Start the development server
npx expo start
```

### Running on Devices

```bash
# iOS
npx expo run:ios

# Android
npx expo run:android

# Web
npx expo start --web
```

## 🎯 Usage

### Getting Started
1. **Launch the app** - Opens to the template selection screen
2. **Choose a template** - Browse by category or upload your own
3. **Start coloring** - Use bucket fill for quick coloring or brush for details
4. **Save your work** - Tap the save button to keep your masterpiece

### Using AI Line Art Generator
1. **Tap "Upload Your Own Image"**
2. **First time**: Watch the quick tutorial and add your Gemini API key
3. **Select a photo** from your device
4. **Wait for processing** - Gemini converts it to line art
5. **Save as template** - Give it a name and category
6. **Start coloring** - Your custom template is ready!

### Coloring Tips
- **Bucket Fill**: Tap inside an area to fill it with color
- **Brush**: Draw freehand, adjust size with the slider
- **Eraser**: Remove colors to start over in specific areas
- **Move Tool**: Two-finger pan or use move mode for one-finger panning
- **Zoom**: Pinch to zoom in/out for detailed work
- **Fullscreen**: Tap maximize for landscape mode with more space

## 🛠️ Technical Stack

### Core Technologies
- **React Native 0.79** - Cross-platform mobile framework
- **Expo 53** - Development platform and tooling
- **TypeScript 5.8** - Type-safe development
- **React Native Reanimated** - Smooth animations
- **React Native Gesture Handler** - Touch interactions

### Key Libraries
- **expo-image** - Optimized image rendering
- **expo-media-library** - Gallery integration
- **expo-file-system** - File management
- **react-native-svg** - Vector graphics
- **upng-js** - PNG encoding/decoding
- **react-native-mmkv** - Fast local storage
- **react-native-wheel-color-picker** - Color selection

### AI Integration
- **Google Gemini 2.0 Flash** - Image-to-line-art conversion
- **REST API** - Direct integration without SDK overhead

## 📁 Project Structure

```
coloring-book-app/
├── src/
│   ├── components/           # React components
│   ├── services/             # Business logic
│   ├── utils/                # Utilities
│   └── assets/               # Static assets
├── types/                    # TypeScript definitions
├── App.tsx                   # App entry point
├── app.json                  # Expo configuration
└── package.json              # Dependencies
```

## 🔧 Configuration

### Gemini API Key
To use the AI line art generator, users need a Google Gemini API key:

1. Visit [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Sign in with your Google account
3. Create a new API key
4. Enter it in the app when prompted

The API key is stored locally on the device and never shared.

## 📱 Platform Support

### iOS
- ✅ iPhone (iOS 13+)
- ✅ iPad (iPadOS 13+)
- ✅ Landscape & Portrait
- ✅ Photo Library Integration

### Android
- ✅ Android 6.0+ (API 23+)
- ✅ Phones & Tablets
- ✅ Landscape & Portrait
- ✅ Media Library Integration

### Web
- ✅ Modern Browsers (Chrome, Firefox, Safari, Edge)
- ✅ Responsive Design
- ✅ Touch & Mouse Support
- ⚠️ Limited save functionality (downloads instead of gallery)

## 🐛 Troubleshooting

### Templates Not Loading
**Problem**: Templates show as blank or fail to load

**Solutions**:
- Verify PNG files are in `src/assets/templates/`
- Check file names match IDs in `PngTemplateService.ts`
- Ensure `assetBundlePatterns` in `app.json` includes templates
- Try clearing cache: `npx expo start -c`

### Gestures Not Working
**Problem**: Touch interactions don't respond

**Solutions**:
- Ensure `GestureHandlerRootView` wraps your app
- Check `react-native-reanimated/plugin` is in `babel.config.js`
- Restart the development server
- Clear Metro bundler cache

### Save to Gallery Fails
**Problem**: Can't save colored images

**Solutions**:
- Grant photo library permissions in device settings
- Check `app.json` has correct permission configurations
- On Android, ensure storage permissions are granted
- Try restarting the app after granting permissions

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### Development Setup
1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Zebra Paint Algorithm**: Based on the Android coloring app by Peter Dornbach
- **Google Gemini**: AI-powered image processing
- **Expo Team**: Amazing development platform
- **React Native Community**: Excellent libraries and support

## 📧 Contact

- **Issues**: [GitHub Issues](https://github.com/yourusername/coloring-book-app/issues)
- **Email**: your.email@example.com

---

Made with ❤️ for kids who love to color