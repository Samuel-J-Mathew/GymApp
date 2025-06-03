Overload
Overload is a full-featured Flutter fitness application built to help users take control of their training and nutrition. Track your workouts, log meals and macros, monitor weight, and follow custom workout splits—all from one powerful mobile app. Built with Flutter, Hive, and Firebase, Overload delivers an engaging and data-rich experience designed for long-term fitness progress.

🚀 Quick Start (Mac + VS Code)
bash
Copy
brew install --cask flutter
flutter doctor
Install Flutter extension in VS Code (Cmd+Shift+X ➝ search "Flutter").

Install Android Studio + AVD Emulator:

Download: https://developer.android.com/studio

Follow the setup wizard

Open AVD Manager ➝ Create Virtual Device

Clone & run:

bash
Copy
git clone https://github.com/Samuel-J-Mathew/GymApp.git
cd GymApp
flutter pub get
flutter run
📑 Table of Contents
Prerequisites

Setup Guide

Project Setup

Firebase Configuration

Running the App

Technologies Used

Key Features

Troubleshooting

Resources

✅ Prerequisites
OS	Minimum Requirements
macOS	macOS 10.15+, 8GB+ RAM, 20GB+ disk space
Windows	Windows 10 64-bit, 8GB+ RAM, 20GB+ space
Linux	Ubuntu 20.04+ or distro with Snap, 8GB+ RAM

⚙️ Setup Guide
Click to expand platform-specific setup:

<details> <summary><strong>Mac Setup</strong></summary>
bash
Copy
brew install --cask flutter
flutter doctor
Install Android Studio + AVD ➝ Install Flutter/Dart plugins ➝ Create emulator ➝ Run flutter devices to verify.

</details> <details> <summary><strong>Windows Setup</strong></summary>
Extract Flutter SDK to C:\dev\flutter

Add C:\dev\flutter\bin to PATH

Run flutter doctor

Install Android Studio + Plugins ➝ Set up Emulator

</details> <details> <summary><strong>Linux Setup</strong></summary>
bash
Copy
sudo snap install flutter --classic
flutter doctor
Install Android Studio ➝ Set up KVM for emulator ➝ Install Flutter/Dart plugins.

</details>
📁 Project Setup
bash
Copy
git clone https://github.com/Samuel-J-Mathew/GymApp.git
cd GymApp
flutter pub get
Start your Android emulator (or connect a real device):

bash
Copy
flutter emulators --launch <emulator_id>
flutter run
🔐 Firebase Configuration
Go to Firebase Console

Create a new project named Overload

Add an Android app with package name com.example.overload

Download google-services.json ➝ place in android/app/

Enable:

Authentication (Email/Password)

Cloud Firestore

Ensure build.gradle is configured with Firebase dependencies

🏃 Running the App
To run in debug mode:

bash
Copy
flutter run
To run in release mode:

bash
Copy
flutter run --release
With VS Code:

Open folder ➝ Cmd+Shift+D (Mac) or Ctrl+Shift+D (Windows)

Select main.dart ➝ Press F5 or click ▶️

🧰 Technologies Used
Category	Tech Stack
Frontend	Flutter, Dart
Local Storage	Hive (exercise, food, weight, workout split data)
Cloud Services	Firebase Auth, Firestore
State Management	Provider
UI Libraries	Material Design, DropdownButton2, Custom Widgets
Tooling	Android Studio, VS Code, AVD Emulator
Supported OS	Android (primary), iOS (optional)

💪 Key Features
📆 Workout Calendar – Log daily workouts and view historical entries

🏋️ Workout Splits – Customize training by muscle groups & days

🧠 Exercise Library – Select exercises with muscle group tags or create new ones

🍎 Food Logging – Log meals and view macro breakdowns

🔥 Calorie Tracker – Track calories and compare against your daily goal

⚖️ Weight Logger – Visualize progress and trendlines over time

📊 Analytics – Graphs showing performance & trends

🔐 Authentication – Firebase Email/Password login system

🌐 Online & Offline Mode – Hive stores data locally, synced with Firebase

🐞 Troubleshooting
General
Issue	Fix
Emulator won’t start	Enable virtualization in BIOS or recreate the AVD
Firebase errors	Check google-services.json placement and Firebase rules
Build issues	Run flutter clean ➝ flutter pub get
Plugin errors	Ensure you installed Flutter/Dart plugins in both VS Code & Studio
VS Code won’t detect Flutter	Restart VS Code after installing the Flutter extension

📚 Resources
Flutter Docs

Firebase Docs

Hive Docs

VS Code Flutter Extension

Built with ❤️ to empower your fitness journey—track smarter, lift harder, live stronger.

![overloadhomenew](https://github.com/user-attachments/assets/4539d769-9b9f-4ee8-92c3-751fcba38925)
![overloadfood](https://github.com/user-attachments/assets/7596aa53-b6ae-40a7-b6b1-0e270b865519)
![overloadexercise](https://github.com/user-attachments/assets/7c67f6bd-eab0-4c8b-963d-36dcc090d796)
![strategy](https://github.com/user-attachments/assets/e360952b-1d36-47ab-9e64-4b7f16614613)
