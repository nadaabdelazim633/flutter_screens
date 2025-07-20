# 📱 Flutter Screens (home - Login - OTP)

This Flutter project includes three main authentication screens for logging in using a phone number, with a simple and clean UI.

## ✅ Screens:

### 1. home Screen

* A welcoming screen.
* Contains a "Let's Get Started" button.
* Navigates the user to the Login screen.

```dart
Navigator.pushNamed(context, '/login');
```

### 2. Login Screen

* Input for phone number and password.
* Login button that navigates to the OTP screen.
* Link to navigate to the Sign Up screen.

```dart
Navigator.pushNamed(context, '/otp');
```

### 3. OTP Screen (Verification)

* Input for the verification code sent to the phone.
* Displays the entered phone number.
* Can be extended to send/verify OTP using Firebase or another provider.

## 🧩 Files:

* `home_screen.dart`
* `login_screen.dart`
* `otp_screen.dart`

## 🧭 Navigation Between Screens:

```dart
routes: {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/otp': (context) => const OTPScreen(),
  '/signup': (context) => const SignUpScreen(),
}
```


## 🛠️ Future Notes:

* Integrate Firebase Authentication.
* Add phone number validation.
* Add password validation.
* Automatically send and verify OTP.
