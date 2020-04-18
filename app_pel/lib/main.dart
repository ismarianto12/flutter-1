import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Halsatu(),
    title: "Halaman awal",
    // routes: <String, WidgetBuilder()>{
    //   'Halsatu' : (BuildContext context) => new Halsatu(),
    // },
    routes: <String, WidgetBuilder>{
      '/Halsatu': (BuildContext context) => new Halsatu(),
      '/Halamandua': (BuildContext context) => new Halamandua(),
    },
  ));
}

class Halsatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Home awal.'),
      ),
      body:
    
       new Center(
         child:  
         new IconButton( 
            icon: new Icon(
              Icons.headset,
              size: 30,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/Halamandua');
            }), 
      ),
      
    );
  }
}

class Halamandua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Sekilas Saya.'),
        ),
        body: new Container(
          margin: EdgeInsets.only(top: 5.0),
          child: Stack(children: <Widget>[
            //children:
            new Align(
                alignment: Alignment.topCenter,
                child: new Image.network(
                  'https://ismarianto12.github.io/assets/images/rian.jpg',
                  width: 150,
                  height: 260,
                )),
            new Align(
                alignment: Alignment.center,
                child: new Text(
                  'ISMARIANTO',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20.0,
                  ),
                )),
            Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(20, 270, 0, 20),
                    child: Text('Im Geek And im programmer, Im Geek And im programmer Im Geek And im programmer Im Geek And im programmer Im Geek And im programmerIm Geek And im programmer', style: TextStyle(fontSize: 22)))),
          ]),
        ));
  }
}
