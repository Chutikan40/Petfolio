import 'package:flutter/material.dart';
import 'package:petfolio/model/profile.dart';
import 'package:sign_in_button/sign_in_button.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final formKey = GlobalKey<FormState>();
  // Profile profile = Profile();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold( 
        key: formKey,
        appBar: AppBar(

          title: Text(
            "Petfolio",
            style: Theme.of(context).textTheme.displaySmall,
          ),

            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Login",
                  // ignore: deprecated_member_use
                  style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Tab(
                  child: Text(
                    "Register",
                    // ignore: deprecated_member_use
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ),
              ],
            ),
        ),
        body: const TabBarView(
          
          children: [

            LoginCard(),
            SignupCard(),
          ]
          ),
      ),
    );
  }
}
//---------------
class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Login',
                  style: TextStyle(
                    color: Colors.blue.shade100,
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                  ),
                  ),
                  const SizedBox(height: 40),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        //
                      },
                      child: Text('Login',
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                      ),
                  ),

                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => const ForgotPasswordPage()
                        ),
                        );
                      },
                      child: Text("Forgot password?",
                        style: TextStyle(color: Colors.blue.shade50),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('Or'),
                    SignInButton(
                      Buttons.google,
                      onPressed: () {},
                    ),
                    SignInButton(
                      Buttons.facebook,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    const Text("Dont have an account? Please Register"),

                ],
              ),
          ),
          ),

    );
  }
}

//----------------
class SignupCard extends StatelessWidget {
  const SignupCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Register',
                style: TextStyle(
                  color: Colors.blue.shade100,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),
                ),
            const SizedBox(height: 40),
            const TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
              obscureText: true,
            ),
            const SizedBox(height: 10),
      
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(labelText: 'Confirm Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  //
                },
                child: Text('Sign up',
                  style: Theme.of(context).textTheme.bodyMedium,
                )
                ),
            ),

              const Text('Or'),
              SignInButton(
                Buttons.google,
                onPressed: () {},
              ),
              SignInButton(
                Buttons.facebook,
                onPressed: () {},
              ),

          ],
        ),
      ),
      );
  }
}
class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Forgot your Password?',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 20.0),
            const Text('Enter your email address below to receive password reset instructions.'),
            const SizedBox(height: 20.0,),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              ),
              const SizedBox(height: 20.0),
              const Text('We will send you an email that will allow you to reset your password.'),
              const SizedBox(height: 20.0,),
              ElevatedButton(onPressed: () {},
                child: const Text('Reset Password',
                style: TextStyle(
                  color: Colors.white
                ),
                ),
              ),
          ],
          
        ),
        ),
      
      
      
    );
  }
}