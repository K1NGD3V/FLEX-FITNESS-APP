import 'package:flutter/material.dart';

 class LoginScreen  extends StatefulWidget {
  const LoginScreen ({ Key? key }) : super(key: key);

  @override
  _loginscreenState createState() => _loginscreenState();

}



class _loginscreenState extends State<LoginScreen> {

//form key
  final formkey = GlobalKey<FormState>();
//form key

//editing contoller
final TextEditingController emailcontroller = new TextEditingController();
final TextEditingController passwordcontroller = new TextEditingController();
//editing controller

  @override
  Widget build(BuildContext context) {

    //email fieid
    final emailfield = TextFormField(
      autofocus: false,
      controller: emailcontroller,
      keyboardType: TextInputType.emailAddress,

      onSaved: (value){
        emailcontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20,15 ,20 ,15 ),
        hintText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
           )

      ),
    );
//password field
      final passwordfield = TextFormField(
      autofocus: false,
      controller: passwordcontroller,
      obscureText: true,
      
      
      onSaved: (value){
        passwordcontroller.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Password',
        border: OutlineInputBorder(borderRadius:BorderRadius.circular(10) )
      )

    );
    

final loginbutton = Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(30),
  color: Colors.purple,
  child: MaterialButton(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    minWidth: MediaQuery.of(context).size.width,
    onPressed: () {},
    child: Text('Login', textAlign: TextAlign.center,
    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
    ),),

  ),

);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    SizedBox(
                      height: 300,
                      child: Image.asset('assets/logo1.png',fit: BoxFit.contain),
                    ),
                    SizedBox(height: 40,),
                    emailfield,
                    SizedBox(height: 40,),
                    passwordfield,
                    SizedBox(height: 40,),
                    loginbutton,
                    SizedBox(height: 45,),
                  ],
                ) ),
            ),
            
           
            
            
          ) 
        ,)

        
      ),
      
    );
  }
}

