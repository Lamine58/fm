import 'package:flutter/material.dart';

bool validateEmail(String email) {
  final RegExp emailRegExp = RegExp(
    r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$',
  );
  return emailRegExp.hasMatch(email);
}

primaryColor(){
  return Color(0xff015cae);
}

defaultColor(){
  return const Color.fromARGB(255, 0, 36, 70);
}

textColor(){
  return const Color(0xFF3c3c3c);
}

secondaryColor(){
  return const Color(0xff003b73);
}

grayColor(){
  return const Color(0xFFe5e7ed);
}

paddingTop(double height){
  return SizedBox(height: height);
}

paddingLeft(double width){
  return SizedBox(width: width);
}

startLoading(context){

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(
                color: primaryColor(),
              ),
              paddingLeft(20),
              const Expanded(
                child:  Text("Veuillez patienter ...",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,fontFamily: 'RobotoLight'))
              ),
            ],
          ),
        ),
      );
    },
  );
}

stopLoading(context){
  Navigator.pop(context);
}

statusBar(color){
  return AppBar(
    elevation: 0,
    backgroundColor: color,
    toolbarHeight: 0,
  );
}