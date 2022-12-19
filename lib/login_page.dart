import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test2/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _usernameController =TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        leading: Icon(Icons.account_balance,color: Colors.white,size: 30,),
      ),
      body: Container(
        child:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding:EdgeInsets.symmetric(vertical: 10) ,
                  child:Center(
                    child: Text('LOGIN',style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  )
              ),
              Container(
                padding: EdgeInsets.only(top: 5,bottom: 20,),
                child: Image.asset('assets/1log.png'),
              ),

              //LOGIN and password.................
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top:10,bottom: 20),
                      child: TextFormField(
                        controller: _usernameController,
                        decoration:InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Enter your User name',
                            hintText: 'User Name'
                        ) ,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:2,bottom: 25),
                      child: TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Enter the likeexpected Password',
                            hintText: 'Password'
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //Button ..................
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    loginButtonClick();
                  },
                  child: Text('Login',style: TextStyle(
                    color:Colors.white,
                  ),
                  ),
                ),
              )
            ],
          ),
        ),

        )

    );
  }

  void loginButtonClick(){
    if(_usernameController.text=='1'&& _passwordController.text=='1'){
      print('successfull');
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));

    }else{
      print('Failt to log in');
      showAlertDialog(context);
    }
  }

  showAlertDialog(BuildContext context){
    Widget okButtun= ElevatedButton(
        onPressed:(){
          Navigator.pop(context);
        },
        child: Text('ok'));

    AlertDialog alertDialog=AlertDialog(
      title: Text('Error'),
      content: Text('Wrong user and password'),
      actions: [
        okButtun
      ],
    );

    showDialog(context: context,
        builder: (BuildContext context){
          return alertDialog;
        }
    );
  }

}
