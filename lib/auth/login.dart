import 'package:flutter/material.dart';
import 'package:social_media_app/socialmedia.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late String errormessage;
  late bool isError;

  @override
  void initState(){
    errormessage = "This is an error message";
    isError = false;
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }
  

  void checkLogin(username, password){
    setState((){
      if (username == "") {
        errormessage = "Please input your username!";
        isError = true;
      } else if (password == ""){
        errormessage = "Please input your username";
        isError = true;
      } else{
        errormessage = "";
        isError = false;
      }
    });
  }
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.jpg',
                    height: 48, 
                    width: 48,
                  ),
                  const SizedBox(width: 12),
                  Text('VNYK', style: txtStyle,)
                ],
              ),
              SizedBox(height: 15),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Username',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(height: 15),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Password',
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Colors.blue,
                ),
                onPressed:(){
                  checkLogin(usernameController.text, passwordController.text);
                  if (!isError){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Socialmedia()),
                    );
                  }
                },
                  child: Text('LOGIN', style:txtStyle2),
              ),
              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}

var txtStyle = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 14,
);

var registertxtStyle = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 14,
);

var errortxtStyle = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 14,
);

var txtStyle2 = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 24,
);


