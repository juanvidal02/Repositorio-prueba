import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
} //Arranca la app , llama a myapp const = optimizacion (no cambia nada en ejecucion)

class MyApp extends StatelessWidget { //StatelessWidget = no cambia su estado , define la app general
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { //Build context context es informacion donde esta el widget dentro de la app.
    //Widget es el tipo de dato que devuelve la función, build es el metodo mas importante de flutter,construye la interfaz de usuario.
                                        //cada vez que cambies algo con setState(), el build() se ejecuta de nuevo.
    return MaterialApp( //Widget del sistema que se encarga del estilo general,navegacion,tema etc.
      title: 'Proyecto de Juan',
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
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Proyecto de Juan'),
    );
  }
}

class MyHomePage extends StatefulWidget { //Creamos un widget que puede cambiar 
  const MyHomePage({super.key, required this.title}); //Constructor , cuando pases el widget tienes que pasar un titulo,

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title; //defines una variable que es un string, y que no cambia despues.

  @override
  State<MyHomePage> createState() => _MyHomePageState(); //Un StateFulWidget no tiene estado por si mismo , necesita crear un objeto a parte que lo maneje,esta linea hace eso
                                                              //crea el objeto que maneja el estado.
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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
  Widget build(BuildContext context) { //Metodo que construye la interfaz de usuario
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center( //lo centra todo
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column( //organiza elementos en vertical.
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
          mainAxisAlignment: .center,
          children: [ //lista de widgets dentro de la columna
            const Text('You have pushed the button this many times:'),
            Text( //lo muestra en la pantalla,es decir lo ve el usuario
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
      ),
    );
  }
} //Esto es un comentario para todos mi primer push de prueba.
