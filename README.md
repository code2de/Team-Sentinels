# Team-Sentinels
Domain : Blockchain Technology 

# TrustChain

TrustChain is a cross-platform review and trust rating app built using Flutter. It enables users to post and browse reviews with transparency and accountability. The app leverages Firebase for backend services and integrates with blockchain (via Ganache) for optional decentralized review validation.

## Features

### Core Functionality
- **Onboarding Screens**  
  - Smooth image carousel with slide effect  
  - Country selector and navigation to Login/Signup
- **Authentication**
  - Firebase Email & Password login
  - Auto-login on app start
  - Forgot password support
- **Profile Management**
  - View and edit name, city, phone number
  - Upload and display profile images via Firebase Storage
- **Review System**
  - Create and view reviews with:
    - Star ratings
    - Categories
    - Optional blockchain submission
  - Search bar and category filters
- **Navigation**
  - Home, Explore, Profile screens
  - Top-right hamburger drawer for profile/settings

### Blockchain Integration
- **Ganache-based Ethereum Smart Contracts**
  - Reviews can be stored immutably on the blockchain
  - Simulated local Ethereum environment using Ganache
  - Planned integration with `web3dart` for Flutter
  - Blockchain hash shown for verified reviews (coming soon)

### Web Compatibility
- Flutter web version supported
- Mouse tracking rendering issue resolved

## Tech Stack

- **Frontend**: Flutter (Mobile & Web)
- **Backend**: Firebase (Authentication, Firestore, Storage)
- **State Management**: Provider
- **Blockchain**:
  - Ganache (local Ethereum blockchain)
  - Solidity (for smart contract logic)
  - web3dart (Flutter Ethereum package - planned)
- **Other Tools**:
  - Node.js backend integration (in progress)

## Screenshots
![WhatsApp Image 2025-04-13 at 15 21 56_08955f40](https://github.com/user-attachments/assets/9aeba54f-08ff-408d-96af-a83aa52b2c7e)
![WhatsApp Image 2025-04-13 at 15 22 50_afc34acd](https://github.com/user-attachments/assets/01e9da29-701c-4a65-a238-6272672c72e4)
![WhatsApp Image 2025-04-13 at 15 23 33_3405cffc](https://github.com/user-attachments/assets/e4b41064-26c8-4784-a327-6c100c17c31c)
![WhatsApp Image 2025-04-13 at 15 24 26_e96707a1](https://github.com/user-attachments/assets/881af9a2-eb67-4329-aa4c-368e0b43ca64)

![WhatsApp Image 2025-04-13 at 15 30 49_2c7d6070](https://github.com/user-attachments/assets/dd32a7b5-48ab-46b5-a27b-6d9382704805)
![WhatsApp Image 2025-04-13 at 15 30 50_ccdcb18a](https://github.com/user-attachments/assets/cb0d1ff5-f25c-4f66-8b31-180531f0b031)
![WhatsApp Image 2025-04-13 at 15 30 50_4e818a04](https://github.com/user-attachments/assets/62a1bb3b-bdb4-4847-8004-0642cb5203c3)
![WhatsApp Image 2025-04-13 at 15 30 51_142f2733](https://github.com/user-attachments/assets/6c157a87-da14-4379-ad7d-670b83d9e220)
![WhatsApp Image 2025-04-13 at 15 30 50_5c232dac](https://github.com/user-attachments/assets/30c5d834-cbf2-464c-bb4e-4e65ce9f0b3c)
