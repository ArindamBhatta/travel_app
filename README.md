# 🌍 Travel App ✈️

_A modern cross-platform travel exploration app built with Flutter, Riverpod, and Firebase using the MVVM design pattern._

---

## 📸 Project Preview

| Light Mode                                                 | Dark Mode |
| ---------------------------------------------------------- | --------- |
| <img src="assets/docs/home_screen.jpeg" width="300"/>      |
| <img src="assets/docs/community_screen.jpeg" width="300"/> |

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

## Architecture: MVVM + Riverpod

| Layer          | Responsibility                                    |
| -------------- | ------------------------------------------------- |
| **Model**      | Data classes, DTOs, Firestore converters          |
| **ViewModel**  | Business logic, Riverpod providers, data fetching |
| **View**       | Stateless UI widgets reacting to providers        |
| **Repository** | Call Api, caching, Bridge                         |
| **Service**    | Firebase access, caching, API calls               |

## 📋 Completed Features (Phase 1 ✅)

✅ Continent-based listing

✅ Search bar for destinations

✅ Light & dark mode theming

✅ Responsive UI using Dimensions and AppResponsive

✅ Riverpod-based state management

✅ MVVM folder structure setup

✅ Firebase project integrated

## ✈️ Upcoming Features (Phase 2 🚧)

🔸 Destination detail pages with image carousel

🔸 User authentication (Google & Email)

🔸 Favorites / wishlist feature

🔸 User reviews & ratings

🔸 Trip planner (itinerary builder)

🔸 Map view with nearby destinations

🔸 Push notifications (FCM)

## 🧠 Future Enhancements (Phase 3 🌟)

🤖 AI travel recommendations (OpenAI / Gemini)

🌦 Weather integration for destinations

🧭 Route planner with Maps API

📶 Offline caching

🔗 Social sharing using Firebase Dynamic Links

🏆 Gamification / badges
