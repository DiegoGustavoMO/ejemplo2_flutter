//siempre hay que importar la libreria de material para flutter
import 'package:flutter/material.dart';

//la clase main principal que ejecuta la aplicacion al inciar es
//en este casso MyApp , debe tener la primera letra en mayuscula
void main() => runApp(const MyApp());
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
    return const MaterialApp(
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
  const Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    // definiendo el estilo  del boton de tipo elevatedbutton
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    //debemos retornar un widget usado en aplicaciones tradicionales
    //llamado Scaffold()
    //debemos recordar que hay widgets que son contenedores de otros widgets
    //por eso se ve como si fuera una clase dentro de otra clase
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mi App"),
        ),
        //el widget comlum sirve para organizar los demas widgets en columnas
        //el limitante es que al agregar contenido dependiendo de la pantalla
        //no muestra todo a menos que se configure propiedad de tamaño
        //si lo que se quiere mostrar es una lista en forma de columna
        //entonces se puede usar el widget ListView

        //en esta parte usamos una widget tipo columna
        //con el widget children para organizar mas widgets dentro
        //con Column se pone los widgets uno sobre otro en columnas
        //Row maneja los elementos en filas
        body: Column(
          //dentro de column tenemos una propiedad de alineacion que es esta:
          // MainAxisAlignment.center para centrar
          // MainAxisAlignment.start para colocar en la parte incial
          // MainAxisAlignment.end para colocar en al parte final
          // MainAxisAlignment.spaceAround rellena los espacio entre lo que se
          //va poniendo
          // MainAxisAlignment.spaceBetween maneja un mismo espaciado dependiendo
          //de la cantidad de cosas que estan en pantalla
          //MainAxisAlignment.spaceEnvenly iguala los espacios entre lo que este
          //en pantalla
          //mainAxisAlignment alinea las cosas apartir del eje principal del
          //elemento
          mainAxisAlignment: MainAxisAlignment.center,
          //podemos configurar el tamaño asi:
          //con MainAxisSize.min las columnas ocupan el minimo espacio
          //con MainAxisSize.max las columnas ocuipan el maximo espacio
          //el eje que se modifica es el y porque es una columna (vertical)
          //con Row se modifica es el eje x porque es una fila (horizontal)
          mainAxisSize: MainAxisSize.min,
          //el eje horizontal es el cross
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //con la propiedad width : MediaQuery.. le damos un tamaño para
              //que se ocupe  el texto del child en este caso que ocupe todo
              //el ancho , la columna solo centra sus hijos (children)
              width: MediaQuery.of(context).size.width,
              //tambien podemos modificar el alto del container mediante height
              height: 50,
              //para centrar un texto en especifico se usa la Propiedad
              //textAlign: TextAlign.center se especifica el center
              child: const Text(
                "Hola 01",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // se usa el widget elevatebuttom para un botones
              //con el parametro style se llama  al style una clase
              //que define el estilo del boton que esta mas arriba y es de tipo
              //final porque no cambia
              child: ElevatedButton(
                style: style,
                //puedo variar entre  Row y Column para cambiar posiciones de texto e icono
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.access_time),
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Text("AHORA"),
                  ],
                ),
                onPressed: () {
                  //aqui coloco lo que quiero que pase al pulsar el boton
                  //esta parte es funcionalidad del boton
                  //creo una variable que guarda el resultado de DateTime
                  //que obtiene la fecha del momento cuando se dio click al boton
                  var t = DateTime.now();
                  print(t);
                },
              ),
            ),
            const Text("Hola 1"),
            const Text("Hola 2"),
          ],
        ));
  }
}

//el crossAxisAlignment de una fila es verticalmente
//el mainAxisAlignment de una fila es horizontalmente

//el crossAxisAlignment de una columna es horizontalmente
//el mainAxisAlignment de una columna es verticalmente