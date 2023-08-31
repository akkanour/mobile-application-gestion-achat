import 'package:flutter/material.dart';
import 'package:gecimmo_application/screens/home.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyLoginState();
  }
}

class _MyLoginState extends State<MyLogin> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String message = '';

  handleLogin() async {
    String username = usernameController.text;
    String password = passwordController.text;

    // Call the magical link
    String loginUrl = 'https://achat.test.gc-badr.xyz/Api/Login';
    String fullUrl = '$loginUrl?username=$username&password=$password';

    // You would use your preferred method (e.g., http package) to make the API call
    // Here, we'll just simulate a response
    bool success = await simulateApiCall(fullUrl);

    if (success) {
      // Navigate to the Dashboard
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    } else {
      setState(() {
        message = 'Please check your information and try again.';
      });
    }
  }

  Future<bool> simulateApiCall(String url) async {
    // Simulating the API call
    await Future.delayed(Duration(seconds: 2));
    // In a real scenario, you would parse the response and return true/false accordingly
    return usernameController.text == 'Admin' &&
        passwordController.text == '123';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/imgBck.png'),
                  fit: BoxFit.cover),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Stack(
                children: [
                  Container(),
                  // Container for the logo and the name
                  Container(
                    padding: const EdgeInsets.only(left: 35, top: 130),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          width: 50,
                          height: 50,
                        ),
                        const Text(
                          'G-TREND',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Shadow behind the screen
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Color(0xFF2F3D4B)],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.37),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 35, right: 35),
                            child: Column(
                              children: [
                                const SizedBox(),
                                TextField(
                                  controller: usernameController,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white70,
                                    filled: true,
                                    hintText: "Nom d'utilisateur",
                                    hintStyle: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 84, 83, 83),
                                      fontSize: 20,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors
                                              .black), // Couleur de la bordure lorsqu'elle est en focus
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors
                                              .black), // Couleur de la bordure par défaut
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                TextField(
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white70,
                                    filled: true,
                                    hintText: "Mot de passe",
                                    hintStyle: const TextStyle(
                                      color: Color.fromARGB(255, 84, 83, 83),
                                      fontSize: 20,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors
                                              .black), // Couleur de la bordure lorsqu'elle est en focus
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors
                                              .black), // Couleur de la bordure par défaut
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFD0B3A2),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {
                                      handleLogin();
                                    },
                                    child: const Text(
                                      "CONTINUE",
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontFamily: 'Barlow Semi Condensed',
                                        fontSize: 32,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.64,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Text(
                                  message,
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 15,
                                    fontFamily: 'times new roman',
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
