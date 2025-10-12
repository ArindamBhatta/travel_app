# 🌍 Travel App ✈️

_A modern cross-platform travel exploration app built with Flutter, Riverpod, and Firebase using the MVVM design pattern._

---

## 📸 Project Preview

| Light Mode                                          | Dark Mode                                          |
| --------------------------------------------------- | -------------------------------------------------- |
| <img src="screenshots/light_home.png" width="300"/> | <img src="screenshots/dark_home.png" width="300"/> |

> ✨ Tip: You can update screenshots as your app evolves. Place images in a `/screenshots` folder.

---

## 🧠 Overview

The **Travel App** lets users explore destinations across continents, search for attractions, and plan trips — all with a smooth, responsive UI.

This project is designed with **scalability in mind**, following **MVVM architecture** and leveraging **Firebase** for backend services.

---

## 🛠️ Tech Stack

| Layer            | Technology                              |
| ---------------- | --------------------------------------- |
| **Framework**    | [Flutter](https://flutter.dev) 🐦       |
| **State Mgmt**   | [Riverpod](https://riverpod.dev)        |
| **Architecture** | MVVM (Model–View–ViewModel)             |
| **Backend**      | [Firebase](https://firebase.google.com) |
| **Database**     | Cloud Firestore                         |
| **Auth**         | Firebase Authentication                 |
| **Storage**      | Firebase Storage                        |
| **Push**         | Firebase Cloud Messaging (planned)      |
| **Maps**         | Google Maps API (planned)               |

---

## 🏗 Project Structure

- `core/` → Global theme, responsive helpers, and design system
- `features/` → Feature-based folders following MVVM
- `services/` → Repositories, Firebase integration
- `main.dart` → App entry point
