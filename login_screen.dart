
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/auth_service.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthService>(context);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => auth.signInAnonymously(),
          child: Text('Continue as Guest'),
        ),
      ),
    );
  }
}
