import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold( 
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
                  style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Tab(
                  child: Text(
                    "Register",
                    style: Theme.of(context).textTheme.bodyLarge,
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
    return Center(
      child: Card(
        margin: const EdgeInsets.all(20.0),


        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  //
                },
                child: Text('Login',
                  style: Theme.of(context).textTheme.bodyLarge,
                )
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Forgot password?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Dont have an account? "),
                    TextButton(
                        onPressed: () {
                        },
                        child: const Text("Sign Up", style: TextStyle(color: Colors.blue),)
                    )
                  ],
                ),
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
    return const Placeholder();
  }
}