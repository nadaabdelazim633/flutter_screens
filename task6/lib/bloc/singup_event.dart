
abstract class SignUpEvent {}

class SignUpSubmittedEvent extends SignUpEvent {
  final String email;
  final String password;
  final String confirmPassword;

  SignUpSubmittedEvent({
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}

class SignUpReset extends SignUpEvent {}

class InitSignUpScreenEvent extends SignUpEvent {}
