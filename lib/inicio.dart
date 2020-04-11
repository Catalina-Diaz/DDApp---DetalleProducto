import 'package:flutter/material.dart';

class Inicio extends StatelessWidget{

  final titulo = TextStyle(fontSize: 18.0,color: Colors.black54, fontFamily: 'Montserrat');
  final texto1 = TextStyle(fontSize: 20.0,color: Colors.black54, fontFamily: "Montserrat");
  final texto2 = TextStyle(color: Colors.black54, fontSize: 13.0);
  final texto3 = TextStyle(color: Colors.grey, fontSize: 15.0);
  final texto4 = TextStyle(color: Colors.black54, fontSize: 13.0);
  final texto5 = TextStyle(color: Colors.red[300], fontSize: 13.0);
  final texto6 = TextStyle(color: Colors.black54, fontSize: 14.0);
  final texto7 = TextStyle(color: Colors.green[700], fontSize: 13.0);
  final texto8 = TextStyle(color: Colors.grey, fontSize: 14.0, decoration: TextDecoration.lineThrough);
  //..

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[200],
      //color: Colors.grey,
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.menu), tooltip: 'Show Snackbar', onPressed: () {}, 
            ),
          title: Text('Producto', style: titulo,),
          elevation:0.7,
            
          actions: <Widget>[ 
            IconButton(
              icon: const Icon(Icons.favorite_border), tooltip: 'Show Snackbar', onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.share), tooltip: 'Show Snackbar', onPressed: () {}, 
            ),
            IconButton(
              icon: const Icon(Icons.search), tooltip: 'Show Snackbar', onPressed: () {}, 
            ),
          ], 
          

        ),
        
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                _seccion1(),
                
                Image.network("https://http2.mlstatic.com/portatil-acer-53lp-core-i5-8va-1tb-128gb-ssd-gtx-1050-4gb-D_NQ_NP_865368-MCO32946935633_112019-F.jpg"),
                _seccion2(),
                
              ],
            ),
          ),
        )
      );
  }
  //...............................
  Widget _seccion1(){
    
    return Container( 
      color: Colors.yellowAccent[700],
      padding: EdgeInsets.symmetric(horizontal:0.0,vertical: 0.0, ),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.location_on, size: 15,), tooltip: 'Show Snackbar', onPressed: () {},  
          ),
          Text("Enviar a Duvan Rosero - Cra 9 #25-86 ",style: texto2,),
          IconButton(
            icon: const Icon(Icons.chevron_right, size: 18,), tooltip: 'Show Snackbar', onPressed: () {},  
          ),
      ],),
    );
  }
  //......................................
  Widget _seccion2(){
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("35 vendidos",style: texto2,),
              SizedBox(height: 8.0,),
              Text("Portátil Acer 53lp Core I5 8va 1tb+128gb Ssd Gtx 1050 4gb ",style: texto1 ),
              SizedBox(height: 8.0,),
              Text("por Acer",style: texto3,),
              SizedBox(height: 6.0,),
              _puntaje(),
              SizedBox(height: 8.0,),
              Text('\$3.699.000', style: TextStyle(
                color: Colors.black54, fontSize: 24.0
                ),
              ),
              SizedBox(height: 6.0,),
              Text("Disponible en 2 dias a partir de tu compra",style: texto5,),
              SizedBox(height: 16.0,),
              _ecos(),
            ],
          ), 
          ),
      ],),
    );
  }
  //.............................................
  Widget _puntaje(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellowAccent[700],size: 20,),
              Icon(Icons.star, color: Colors.yellowAccent[700],size: 20,),
              Icon(Icons.star, color: Colors.yellowAccent[700],size: 20,),
              Icon(Icons.star, color: Colors.yellowAccent[700],size: 20,),
              Icon(Icons.star, color: Colors.yellowAccent[700],size: 20,),
              Text("12 opiniones",style: texto4,),
            ],
          ),
        ],
      ),
    );
  }
  //.................................
  Widget _ecos(){
    return Container(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Row(
            textDirection: TextDirection.ltr,
          
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18.0,
                child: Icon(
                  Icons.credit_card,
                  color: Colors.grey[850],
                  size: 19.0,
                )
              ),
              Text(" 36x \$102.750",style: texto6,),
              new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Icon(Icons.chevron_right, color: Colors.grey[350]),
                  ],
                )
              )
            ],
          ),

          Divider(), 

          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18.0,
                child: Icon(
                  Icons.local_shipping,
                  color: Colors.green[600],
                  size: 19.0, 
                )
              ),
              Text(" Envío gratis",style: texto7,),
              Text(" \$14.000",style: texto8,),
              new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Icon(Icons.chevron_right, color: Colors.grey[350]),
                  ],
                )
              )  
            ],
          ),
          _ult(),

        ]
      ),
    );
  }
  //.................................
  Widget _ult(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 0.0),
      child: Row(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0.0),
              ),
              Text("Llega entre el 1 y el 3 de abril",style: texto4,),
              Text("Beneficio Mercado Puntos    ",style: texto4,),
            ],
            
          ),
        ],
      ),
    );
  }

 
 
}