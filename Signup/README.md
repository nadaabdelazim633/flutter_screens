# 📱 Sign Up Screen 

The Sign Up screen is built using Flutter. It allows users to register by entering a phone number, password, and confirming the password. After registration, the user is redirected to the OTP verification screen.

## ✅ Features:

* Enter phone number
* Enter and confirm password
* Navigate to OTP screen after successful sign-up
* Link to navigate to the Login screen for existing users

## 📍Navigation:

```dart
Navigator.pushNamed(context, '/otp');
```

## 🚀 Usage Example:

```dart
routes: {
  '/signup': (context) => const SignUpScreen(),
}
```

## 🛠️ Notes:

* It's recommended to add password match validation.
* You can integrate Firebase Authentication for backend support.
