import 'package:chat_app/services/auth.dart';
import 'package:chat_app/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isLoading = false;
  final formKey = GlobalKey<FormState>();
  TextEditingController userNameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  // AuthMethods authMethods = new AuthMethods();

  singUp() async {
    if (formKey.currentState.validate()) {
      // setState(() {
      //   isLoading = true;
      // });
      //
      // await authMethods.signUpWithEmailAndPassword(emailController.text, passwordController.text).then((result) {
      //   if (result != null) {
      //     print('success!');
      //     // Map<String, String> userDataMap = {"userName": userNameController.text, "userEmail": emailController.text};
      //
      //     // databaseMethods.addUserInfo(userDataMap);
      //     //
      //     // HelperFunctions.saveUserLoggedInSharedPreference(true);
      //     // HelperFunctions.saveUserNameSharedPreference(usernameEditingController.text);
      //     // HelperFunctions.saveUserEmailSharedPreference(emailEditingController.text);
      //     //
      //     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChatRoom()));
      //   }
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: isLoading
          ? Container(
              child: Center(child: CircularProgressIndicator()),
            )
          : SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height - 50,
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (val) {
                                return val.isEmpty || val.length < 3 ? "Enter Username 3+ characters" : null;
                              },
                              controller: userNameController,
                              style: kSimpleTextStyle(),
                              decoration: kTextFieldDecoration('username'),
                            ),
                            TextFormField(
                              validator: (val) {
                                return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val)
                                    ? null
                                    : "Enter correct email";
                              },
                              controller: emailController,
                              style: kSimpleTextStyle(),
                              decoration: kTextFieldDecoration('email'),
                            ),
                            TextFormField(
                              controller: passwordController,
                              style: kSimpleTextStyle(),
                              decoration: kTextFieldDecoration('password'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Text(
                            'Forgot password?',
                            style: kSimpleTextStyle(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          singUp();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xff007EF4),
                                const Color(0xff2A75BC),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Sign In with Google",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have account?",
                            style: kMediumTextStyle(),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Signin now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
