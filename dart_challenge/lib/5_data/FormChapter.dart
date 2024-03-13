import 'package:dart_challenge/4_components/BottomSheetChapter.dart';
import 'package:flutter/material.dart';

class FormChapter extends StatelessWidget {
  final String title;
  const FormChapter({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.blueAccent
        ),
        //Example1
        // child: ThemeChapter(),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Example2
              // TextFieldChapter(),
              RegisterForm()
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {

  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  String? username, password;

  String? validateUsername(value) {
    if(value.isEmpty){
      return 'Username is required.';
    }
  }

  String? validatePassword(value) {
    if(value.isEmpty){
      return 'Password is required.';
    }
  }


  @override
  Widget build(BuildContext context) {

    return Form(
      key: registerFormKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
              onSaved: (value){
                username = value!;
              },
              validator: validateUsername,
              autovalidateMode: AutovalidateMode.onUserInteraction,//The error message appear when empty TextField lose the focus
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              onSaved: (value){
                password = value!;
              },
              validator: validatePassword,
              autovalidateMode: AutovalidateMode.onUserInteraction,//The error message appear when empty TextField lose the focus
            ),
            SizedBox(height: 31.0,),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onRegisterSubmitted,
                // onPressed: ()=> onRegisterSubmitted(),
                child: Text('Register',style: TextStyle(color: Colors.indigo)),
              ),
            )
          ],
        )
    );
  }

  onRegisterSubmitted() {
    if (registerFormKey.currentState != null &&
        registerFormKey.currentState!.validate()) {
      registerFormKey.currentState?.save();
      //The error message will appear under the TextField
      debugPrint('username: $username');
      debugPrint('password: $password');

      //Stateless
      Scaffold.of(context).showBottomSheet((BuildContext context) => BottomSheetStlChapter());
    } else {
      setState(() {

      });
    }
  }
}


class TextFieldChapter extends StatefulWidget {
  TextFieldChapter ({super.key});

  @override
  State<TextFieldChapter> createState() => TextFieldState();
}

class TextFieldState extends State<TextFieldChapter> {

  TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController.text = 'ZhaWenTing';//The initial value displayed in the TextField
    textEditingController.addListener(() {
      debugPrint('input: ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onChanged: (value){
        debugPrint('onTextFieldChanged: $value');
      },
      onSubmitted: (value){
        debugPrint('onSubmitted: $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Name',
        hintText: 'Enter the book name.',

        //No underline at the bottom of the TextField
        // border: InputBorder.none
        // border: OutlineInputBorder(),

        // Background Color
        filled: true

      ),
    );
  }
}


class ThemeChapter extends StatelessWidget {
  ThemeChapter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}
