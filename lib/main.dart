//siempre hay que importar la libreria de material para flutter
import 'package:flutter/material.dart';

//la clase main principal que ejecuta la aplicacion al inciar es
//en este casso MyApp , debe tener la primera letra en mayuscula
void main() => runApp(MyApp());
//con este main estoy indicando que ejecute la aplicacion principal

//con la ayuda del los plugins usamos statlessW o StatefulW
//la diferencia entre estos es que en el full podemos sobre escribir

//se crea el primer widget (clase) de la aplicacion
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //este es un contructor (build) donde se construye el widget y que retorna
  //un widget

  @override
  Widget build(BuildContext context) {
    //devolvemos un MaterialApp , Material es un patron de diseño de google
    //material tiene ciertos parametros como title,home,etc
    //title define el titulo de la aplicacion
    //home lo que aparece en el inicio de la aplicacion
    return MaterialApp(
      //Para quitar el banner de debug usamos debugshow..
      debugShowCheckedModeBanner: false,
      title: "Filas,Columnas y botones",
      home: Inicio(),
    );
  }
}

//como en home colocamos que llame a un widget (clase) llamado Inicio()
//debemos crearlo

//creamos el widget Inicio() de tipo stateful
class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    //debemos retornar un widget usado en aplicaciones tradicionales
    //llamado Scaffold()
    //debemos recordar que hay widgets que son contenedores de otros widgets
    //por eso se ve como si fuera una clase dentro de otra clase
    return Scaffold(
        appBar: AppBar(
          title: Text("Mi App"),
        ),
        //el widget comlum sirve para organizar los demas widgets en columnas
        //el limitante es que al agregar contenido dependiendo de la pantalla
        //no muestra todo a menos que se configure propiedad de tamaño
        //si lo que se quiere mostrar es una lista en forma de columna
        //entonces se puede usar el widget ListView
        body: Center(
          child: Text("Hola"),
        ));
  }
}
