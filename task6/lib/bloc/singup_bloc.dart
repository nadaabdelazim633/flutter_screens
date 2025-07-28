import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpSubmittedEvent>(_onSignUpSubmitted);
    on<SignUpReset>(_onSignUpReset);
    on<InitiSingUpScreenEvent>(_onSignUpIniti);
  }

  Future<void> _onSignUpSubmitted(
    SignUpSubmittedEvent event,
    Emitter<SignUpState> emit,
  ) async {
    //  Validation with Toast
    if (event.email.isEmpty ||
        event.password.isEmpty ||
        event.confirmPassword.isEmpty) {
      Fluttertoast.showToast(msg: 'All fields are required');
      emit(SignUpFailure('All fields are required'));
      return;
    }
    if (!event.email.contains('@')) {
      Fluttertoast.showToast(msg: 'Please enter a valid email');
      emit(SignUpFailure('Please enter a valid email'));
      return;
    }
    if (event.password.length < 6) {
      Fluttertoast.showToast(msg: 'Password must be at least 6 characters');
      emit(SignUpFailure('Password must be at least 6 characters'));
      return;
    }
    if (event.password != event.confirmPassword) {
      Fluttertoast.showToast(msg: 'Passwords do not match');
      emit(SignUpFailure('Passwords do not match'));
      return;
    }

    emit(SignUpLoading());

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    // Simulate response
    if (event.email == 'exists@example.com') {
      Fluttertoast.showToast(msg: 'Email already in use');
      emit(SignUpFailure('Email already in use'));
    } else {
      Fluttertoast.showToast(msg: 'Signup Successful');
      emit(SignUpSuccess(event.email));

    }
  }

  void _onSignUpReset(SignUpReset event, Emitter<SignUpState> emit) {
    emit(SignUpInitial());
  }

  void _onSignUpIniti(InitiSingUpScreenEvent event, Emitter<SignUpState> emit) {
    emit(SignUpInitial());
  }
}
