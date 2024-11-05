import 'package:cypherdevs_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(16.0, 100.0, 16.0, 50.0),
            child: Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Color.fromARGB(255, 209, 17, 129),
                    backgroundImage: AssetImage('assets/img/logo.png'),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const Text(
                    'Sign In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 174, 20, 110)),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  TextFieldWidget(
                    hintTitle: 'Enter Username',
                    radius: BorderRadius.circular(15.0),
                    frontIconColor: null,
                    hintTitleColor: Colors.grey, 
                    obscure: false,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFieldWidget(
                    hintTitle: 'Enter password',
                    radius: BorderRadius.circular(15.0),
                    frontIconColor: null,
                    hintTitleColor: Colors.grey, 
                    obscure: true,
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                    child: ElevatedButton(
                    style: const ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(Size(500.0, 30.0)),
                      backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 154, 5, 92)
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    )
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  TextButton.icon(
                    onPressed: (){}, 
                    label: const Text(
                    'Sign in with google'
                    ),
                    icon: const Icon(
                      Icons.g_mobiledata,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 0.0),
                    // horizontalTitleGap: 60.0,
                    dense: true,
                    title: Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.grey[500]
                      ),
                    ),
                    trailing: TextButton(
                      onPressed: (){}, 
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color.fromARGB(255, 124, 8, 76)
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
