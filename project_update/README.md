# Flutter Project 🚀

This Flutter project provides a clean and responsive structure for a basic authentication flow and navigation.  
It includes the following screens:
-home Screen
- Login Screen
- Sign Up Screen
- OTP Verification Screen
- Home Screen with a Bottom Navigation Bar
- Profile Screen
---

## 📱 Screens Overview

### 1. Home Screen
- Shows an animated or static welcome screen.
- Navigates to the Login screen after a delay.

### 2. Login Screen
- Input fields: Phone Number & Password
- Button to Login
- Link to Sign Up

### 3. Sign Up Screen
- Input fields: Phone Number & Password
- Button to Register
- Navigates to OTP Screen

### 4. OTP Screen
- Input fields for a 6-digit code
- Button to Verify

### 5. Home Screen
- Contains a `BottomNavigationBar`
- Displays a `ListView` of product cards or sample items.

### 6. Profile Screen
- Simple placeholder for user profile.

---

## 🧭 Navigation Flow

- `SplashScreen` → `LoginScreen`
- `LoginScreen` → `SignUpScreen` or `HomeScreen`
- `SignUpScreen` → `OtpScreen`
- `OtpScreen` → `HomeScreen`
- BottomNavigation inside `HomeScreen` allows switching between:
  - Home tab
  - Profile tab

---

