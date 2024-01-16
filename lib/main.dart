import 'package:flutter/material.dart';
/*
- FUNCION PRINCIPAL DE TIPO "VOID", INDICA QUE NO RETORNA NINGUN VALOR
- "MYAPP" ES LA CLASE UTILIZADA EN LA APLICACION Y ES TIPO "CONST" YA QUE SE ESTA CREADO UNA CONSTANTE EN LA CLASE 
LO QUE SIGNIFICA QUE YA NO SE PUEDE MODIFICAR.
*/
void main() {
  runApp(const MyApp());
}
/* 
- DE LA CLASE "MYAPP" SE HACE UNA NUEVA CLASE LLAMADA "STATELESWIDGET" 
- SE CREA EL CONSTRUCTOR DEL LA CLASE "MYAPP"
- ES UN TIPO "STATELESS" LO QUE SIGNIFICA QUE SU ESTADO NO PUEDE CAMBIAR
- ES DE TIPO "CONST" LO QUE SIGNIFICA QUE ES UNA CONSTANTE
*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.


  @override

/*
- TITULO DE LA APLICACIÓN
- SE UTILIZA EL "METODO WIDGET BUILD(BUILCONTEXT CONTEXT)" PARA CONSTRUIR Y DEVOLVER LAS JERARQUIA DE WIDGETS
- "OVERRIDE" SIGINIFICA QUE ESTA SOBRESCRIBIENDO UN METODO
*/
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.

/* 
- COLORES USADOS EN LA PAGINA (BARRA DE NAVEGACIÓN)
*/
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/*
- DE LA CLASE "MYHOMEPAGE" SE HACE UNA NUEVA LLAMADA "STATEFULWIDGET"  
- ES DE TIPO "STATEFUL" LO QUE SIGNIFICA QUE PUEDE CAMBIAR SU ESTADO
- ES DE TIPO "CONST" LO QUE SIGNIFICA QUE ES UNA CONSTANTE OSEA QUE NO CAMBIA
*/
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
/*
- ES DE TIPO "FINAL" ESTO SIGNICA QUE ES UNA VARIABLE LA CUAL TIENE UN ESPACIO EN MEMORIA (QUE NO SE SABE CUANTO) HASTA QUE SE
  LLEGA A LA LINEA, Y UNA VEZ ASIGNADO UN VALOR, NO SE PUEDE CAMBIAR. 
- TIPO "STRING" PUEDE CONTENER LETRAS O NUMEROS SIN NINGUN TIPO DE ESPACIO.
- TIPO "TITLE" OSEA QUE ALMACENA EL TITULO PRINCIPAL DE LA PAGINA
*/
  final String title;

  @override
/*
- "OVERRIDE" SIGINIFICA QUE ESTA SOBRESCRIBIENDO UN METODO
*/
  State<MyHomePage> createState() => _MyHomePageState();
}

/*
- LA CLASE "_MYHOMEPAGESTATE" CREA UNA NUEVA CLASE LLAMADA "STATE<MYHOMEPAGE>"
- ES DE TIPO "INT" SIGNIFICA QUE ES UN VALOR ENTERO
*/
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
/*
- ES DE TIPO "VOID" LO QUE SIGNIFICA QUE NO REGRESA NINGUN VALOR
- ES DE TIPO "++" LO QUE SIGNIFICA QUE INCREMENTA LA VARIABLE
- "OVERRIDE" SIGINIFICA QUE ESTA SOBRESCRIBIENDO UN METODO
*/
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  /*
- ES DE TIPO "BUILD" LO QUE SIGNIFICA QUE ES UN METODO DONDE SE DEFINE LA APARENCIA DEL WIDGET
- CREA UN "SCAFFOLD" LO QUE PROPORCIONA UNA ESCTRUTURA DE LA INTERFAZ DEL USUARIO
- EL TIPO "APPBAR" ES LA BARRA DE LA APLICACION
  */
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
/*
- COLOR DE FONDO
- EL TIPO "BODY:CENTER" SIRVE PARA QUE EL CUERPO ESTE CENTRADO
*/
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
/*
- "FLOATINGACTIONBUTTON: FLOATINGACTIONBUTTON" SE AGREGA UN BOTON FLOTANTE
- ES DE TIPO "CONST" LO QUE SIGNIFICA QUE ES UNA CONSTANTE OSEA QUE NO CAMBIA
- SE AGREGA UN ICONO EN EL APARTADO DE "ICON"
- ES DE TIPO "INCREMENTCOUNTER" SINGNIFICA QUE INCREMENTA
*/
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
