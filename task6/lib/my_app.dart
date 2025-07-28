import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_project/features/singup/bloc/signup_bloc.dart';
import 'package:iti_project/features/singup/screens/signup_screen_whith_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SignUp App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SingUpScreenWhithBloc(),
      ),
    );
  }
}
