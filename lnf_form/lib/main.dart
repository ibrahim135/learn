import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() {
  runApp(LForm());
}
class LForm extends StatelessWidget {
  const LForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Center(child: Text('LOST AND FOUND')),
      ),
      body:
      Center(
        child: SingleChildScrollView(
          child: Container(width: 700,height: 700,
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(flex: 1,child: Center(child: Text(' ENTER DETAILS ABOUT LOST ITEM ',style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold)))),
                Expanded(flex: 2,child: Container(height: 200,width: 200,decoration: BoxDecoration(color: Colors.cyan[700],border: Border.all(color: Colors.black87)),
                child: TextButton(onPressed: (){}, child: Icon(Icons.add_a_photo,size: 80,color: Colors.black87,))
                )),
                Expanded(flex: 5,
                  child: Form(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[ Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(flex:2,child: Icon(Icons.list)),
                          Expanded(
                            flex: 5,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white, filled: true,
                                border: OutlineInputBorder(),
                                labelText: 'Category',
                              ),
                            ),
                          ),
                          Expanded(flex:2,
                            child: Icon(Icons.location_on)),
                          Expanded(
                            flex: 5,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white, filled: true,
                                border: OutlineInputBorder(),
                                labelText: 'Location',
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(flex:2,child: Icon(Icons.description)),
                          Expanded(
                            flex: 5,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white, filled: true,
                                border: OutlineInputBorder(),
                                labelText: 'Description',
                              ),
                            ),
                          ),
                          Expanded(flex:2,child: Icon(Icons.date_range)),
                          Expanded(
                            flex: 5,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white, filled: true,
                                border: OutlineInputBorder(),
                                labelText: 'Date',
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(flex:2,child: Icon(Icons.phone)),
                          Expanded(
                            flex: 9,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white, filled: true,
                                border: OutlineInputBorder(),
                                labelText: 'Phone no.',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container()),
                        ],
                      ),]
                    ),
                  ),
                ),
                
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Container(height: 40,width: 70,decoration: BoxDecoration(color: Colors.cyan[700],borderRadius: BorderRadius.circular(5)),
                      child: TextButton(
                        onPressed: (){},
                        child: Text('POST',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                    ),
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