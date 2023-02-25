import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class login extends StatefulWidget {
  const login ({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         decoration: const BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.bottomLeft,
             end: Alignment.topRight,
             colors: [
               Colors.lightBlue,
               Colors.cyanAccent,
               Colors.white,

             ]
           )
         ),

         child: Column(

           children: [

             Padding(
               padding: const EdgeInsets.only(top: 50.0),
               child: SvgPicture.asset
                 (
                   'assets/cliente.svg',
                 height: 150.0,
                 width: 150.0,

               ),
             ),
            const SizedBox(height: 18.0,),
             Container(
               height: 400.0,
               width: 350.0,

               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(25.0),



               ),
               child: Column(
                 children:    [

                   const Padding(
                     padding: EdgeInsets.only(top: 15.0),
                     child: Text('Connect',
                       style: TextStyle(
                         fontSize: 32,
                         color: Colors.black,
                         fontWeight: FontWeight.bold,


                       ),
                         ),
                   ),
                   const SizedBox(height: 10.0,),
                   const Text('Log in to your account now',
                     style: TextStyle(
                       color: Colors.black38,
                       fontSize: 15.0,
                       fontWeight: FontWeight.normal,

                     ),
                       ),
                   const SizedBox(height: 20.0,),
                   const SizedBox(
                     width: 300,
                     child: TextField(

                       decoration: InputDecoration(
                         labelText: 'Email address',
                         hintText: 'Please enter your email address',
                         suffixIcon: Icon(
                           FontAwesomeIcons.squareEnvelope,
                           size: 20.0,
                         )



                       ),

                     ),

                   ),
                   const SizedBox(height: 15.0,),
                   const SizedBox(
                     width: 300,
                     child: TextField(
   obscureText: true,
                       decoration: InputDecoration(
                           labelText: 'Password',
                           hintText: 'Please enter your Password',
                           suffixIcon: Icon(
                             FontAwesomeIcons.lock,
                             size: 20.0,
                           )



                       ),

                     ),

                   ),
                const SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: const [

                     Padding(
                       padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                       child:Text(
                         'Forget your password',
                         style: TextStyle(
                           color: Colors.indigoAccent,
                           fontSize: 14.0,
                           fontWeight: FontWeight.w400,

                         ),
                       ),
                     ),
                  ],
                ),
                   const SizedBox(height: 20.0,),
                   Center(
                     child: InkWell(
                       onTap: (){

                       },
                       child: Container(
                         width: 200,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15.0),
                             gradient: const LinearGradient(
                                 begin: Alignment.bottomLeft,
                                 end: Alignment.topRight,
                                 colors: [
                                   Colors.lightBlue,
                                   Colors.cyanAccent,
                                   Colors.lightBlueAccent,

                                 ]
                             )
                         ),
                         child: const Padding(
                           padding: EdgeInsets.all(15.0),
                           child: Center(
                             child: Text(

                               'Login',
                               style: TextStyle(
                                 color: Colors.black38,
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.bold,

                               ),
                             ),
                           ),
                         ),
                       ),
                     ),
                   )
                 ],
               ),
             )

           ],
         ),
       ),

      ),

    );
  }
}
