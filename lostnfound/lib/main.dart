import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lostnfound/fform.dart';
import 'package:lostnfound/lform.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      
    
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home:Lost()  ));  });

}
class Lost extends StatelessWidget {
  const Lost({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar:AppBar(
        backgroundColor: Colors.cyan[900],
        title:Text('LOST AND FOUND'),
      ), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Expanded(flex:1,child: Container()),
                Expanded(flex:12,
                  child: Container(width: 550,height: 220,decoration: BoxDecoration(color: Colors.cyan[900],border: Border.all(color: Colors.black)),
                    
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('ADD DETAIL ABOUT LOST ITEM',style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.w800)),
                        Container(height: 40,width: 150,decoration: BoxDecoration(color: Colors.cyan[700],borderRadius: BorderRadius.circular(25)),
                          child: TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>LForm()));}, child: Text('ADD POST',style: TextStyle(fontSize: 20,color: Colors.white),))),
                      ],
                    ),
                  ),
                ),
                Expanded(flex:1,
                child:
                
                 Container()),
              ],
            ),
            Row(
              children: [
                Expanded(flex:1,child: Container()),
                Expanded(flex:12,
                  child: Container(
                    width: 550,
                    height: 220,
                    decoration: BoxDecoration(color: Colors.cyan[900],border: Border.all(color: Colors.black)),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('ADD DETAIL ABOUT FOUND ITEM',style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.w800),),
                        Container(height: 40,width: 150,decoration: BoxDecoration(color: Colors.cyan[700],borderRadius: BorderRadius.circular(25)),
                          child: TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>FForm()));}, child: Text('ADD POST',style: TextStyle(fontSize: 20,color: Colors.white),))),
                      ],
                    ),
                  ),
                ),
                Expanded(flex:1,child: Container()),
              ],
            ),
          ],
        ),
      ), 
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.cyan[900],
            ),
            child: Text('LOST AND FOUND',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 25,),),
            
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.person_sharp),
                const Text('profile',style: TextStyle(fontStyle: FontStyle.italic)),
              ],
            ),
            onTap: () {},
          ),

          ListTile(
            title: Row(
              children: [
                Icon(Icons.logout_outlined),
                const Text('logout',style: TextStyle(fontStyle: FontStyle.italic)),
              ],
            ),
            onTap: () {},
          ),
          ],
        ),
      ),
    );
  }
}