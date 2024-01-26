void main(List<String> arguments) {
  print('Hello world');

//declaracion de variables
  int numero = 3;
  double decimal = 2.0;
  String cadena = "hola";
  bool bandera = true;
  String primerNombre = "Mguel", segundoNombre = "angel";
  var alias = "miguel";
  var temporal = 56;
// se debe de respetar el tipo de valor que se esta asignando

// dynamic
//es un tipo de dato que pocos lenguajes usan
//es un valor dinamico
  dynamic valorDinamico = 10;
//int t2=valorDinamico+1;
//print(t2);
//valorDinamico="hola";
//int t3=valorDinamico+1;
//print(t3);
//saber de qye tipo de datos estamos usando, asi que se debe de analizar las variables
//////
  ///concatenacion de cadenas

  String cadena1 = "hola";
  String Cadena2 = "mundo";
  String tdo = cadena1 + Cadena2;
  print('$cadena1 $Cadena2');
  print(tdo.length); //tamaño de la cadena
//llamar una funcion en una impresion, para esto de usan las llaves ${variable.metodoo}}
  print('${cadena1.length} $Cadena2');

  ///Condifiones de control
  int t = 0;
  if (t == 2) {
    print("metofo");
  } else if (t == 3) {
    print("metofo2");
  }
// cointains es un metodo para velidar los parametros

  String email = 'ejemplo@dominio.com';
  if (email.contains('@')) {
    print('La cadena contiene el carácter "@"');
  } else {
    print('La cadena no contiene el carácter "@"');
  }
//manejo de ciclos
  int dia = DateTime.now().weekday;
  switch (dia) {
    case 1:
      print("lunes");
      break;
    case 2:
      print("martes");
    default:
      print("valor incorrecto");
  }
//while
  /*int index = 0;
  while (index <= 10) {
    print(index);
    index++;
    if (index == 8) {
      index++;
      continue; // detiene el proceso solo a esa vuelta, osea... no imprime el 8    }
      if (index == 5) {
        break;
      }
    }
  }*/
  int index = 0;
  do {
    print(index);
    index++;
  } while (index <= 10);
  for (int j = 0; j <= 10; j++) {
    print("valor:$j");
  }

  String nombre2 = "renagel";
  for (int j = 0; j <= nombre2.length - 1; j++) {
    print("caracter= ${nombre2[j]}");
  }

  //        LISTAS //
  List<int> numeros = [1, 2, 3, 4, 5];
  List<String> cadea = ["s", "f"];
  // es como un arreglo de una dimesion como los de java
  print("los numeros de la lista son = $numeros");
  print("los vzlores de la lista son = $cadea");

  //insertar valores a la lista
  numeros.add(45);
  print("los numeros de la lista son = $numeros");

  ///otra manera de crear la lisgta de valores, mientars se mantenga la consistencia tosdo esta bien
  var numeros6 = [1, 2, 3, 4, 5, 5, 6];
  print(numeros6);
  //vaciar una lista
  numeros6.clear();
  print(numeros6);

  //pegar una lista sobre de otra
  var a = <int>[5, 5, 5, 1, 2, 3, 4, 4, 4, 4];
  var b = [3, 4, 7, 8];

  a.addAll(b);
  print(a);
//elimina al primero que encuentra, elimina al primer 5 que encuentre
  a.remove(5);
  print(a);
//elimina el valor en la pocision
  a.removeAt(1);

  ///elimninar todos los 4 con remove
  for (int j = 0; j <= a.length; j++) {
    a.remove(5);
    // print("valores de la lista= $a");
  }
  print("valores de la lista final= $a");
// eliminar elementos de una lista

//otro eliminar
  a.removeWhere((element) => element == 4);
  print("$a");

  //busqueda con where
  a.where((element) => element == 3);
  print("$a");

  ///como seria para buscar solo el nombre que termina con z

  var nombre = <String>{"liz", "lo", "stich"};
  var nombresConZ = nombre.where((element) => element.endsWith("z"));
  print(nombresConZ);
//  MAPS
  Map<String, String> users = {};
//insertar
  users['usuario'] = "maria";
//eliminar
  users.remove('usuaruio'); //se usa la llave
//limpiar el map
  users.clear();
  //agregar
  users.addAll({'usuario3': "marcos", 'usuario4': "martedos"});
  Map<int, String> producto = {1: "agua", 2: "mleta", 3: "sandia"};

  print(users);
  print(producto);
  print(producto[3]); //manda la llave no la pocsioon
  print(users["usuario3"]);

//otra forma de crear un map
  var producto2 = <int, int>{1: 2, 2: 3};
  print(producto2);

  var mapaSinEspecificacion = {1: 1, 3: 3, "qqq": "casa"};

  //eliminar en mapas
  producto.removeWhere((key, value) {
    if (value == "agua" || key == 3) {
      print("encontrado");
      return true;
    }
    return false;
  });
  print(producto);
  print(producto.keys.toList()); //convertir las llaves como listas
  print(producto.values.toList()); //converitr a los valores a listas

  var listaValuesMaps = producto.values.toList();
  print(listaValuesMaps);
  //mapa typo dynamic

  var mapaDinamico = <String, dynamic>{
    "1": 2.3,
    "hola": "hola",
    "2,,s": 2,
    "verdad": false,
    "localizacion": {"estado": "guanajuato", "Municipio": "celayork"},
    "precio": 222
  };
  print(mapaDinamico);
  //acceder a la spartes del mapeo
  print(mapaDinamico["hola"]);
  //acceder a lo demas del mapa
  print(mapaDinamico["localizacion"]['Municipio']);

//estructurar la informacion un un mapa
  var mapa3D = <dynamic, dynamic>{
    "direccion": {"x": 100, "y": 100, "z": 100},
    "nombre": "alan"
  };

  var mapaProfe = <int, dynamic>{
    0: [1, 4, 6],
    1: {3, 5, 6}
  };

  //mapa de id,nombre, apellido
  var tabla = [
    {'id': 1, 'nombre': "pedro", 'apellido': 'arriaga'},
    {'id': 2, 'nombre': "JUan", 'apellido': 'arriaga'}
  ];
  //busqeda del mapa lista
  var filtro = tabla.where((element) => element['id'] == 2);
  print(filtro);

  ///ejercicio
  ///hacer una consukta donde el nombre termine con la letra o
  var terminaEnO = tabla.where((element) => element['nombre']
      .toString()
      .endsWith('o')); // la magia es comvertirlo a string
  print(terminaEnO);
  var filtro5 = tabla.where((element) {
    return element['nombre']
        .toString()
        .endsWith('o'); //aqui lo mandamos como si fuera un a funcion
//las ventajas son que podriamos traer esa tabla, guardarla en un mapa y se pueden hacer las consultas de manera interna
//ese mapa se subiera a la base de datos, de manera que si los registros fueran online se pasaran a ofline y el guardado seria cuando tenga red
  });

  //var mapaDinamico = <String, dynamic>{
  //busqueda sobre mapa

  var mapaDinamico2 = mapaDinamico.entries.firstWhere((element) {
    return element.value == "hola";
  });

  var user2 = <String, dynamic>{
    mapaDinamico2.key: mapaDinamico2.value,
  };

  print(user2);

  var filtrox2 = mapaDinamico.entries.where((element) {
    return element.value == "hola";
  });

  print(filtrox2
      .toList()); // Imprime el conjunto de mapas que tienen el valor "hola"
  //convertirlo a mapa normal
  var user3 = <String, dynamic>{};
  user3.addEntries(filtrox2);
  print(user3);

//ejercicio
  var user = <String, dynamic>{
    "nombre": "Darwing",
    "apellido": "leo",
    "edad": 23,
    "localizacion": {
      "ciuedad": "Ecuador",
      "Municipio": "Ec",
      "City": " Cayambe"
    },
    "mascotas": [
      {"nombre": "boby", "eda": 4},
      {"nombre": "bengi", "eda": 4}
    ],
    "otro dato": "lio"
  };

  //imprime la primer masacota
  print("la primer mascota es ${user["mascotas"][0]['nombre']} ");//mascota, posicion de la lista, nombre
  print("la primer mascota es ${user["mascotas"][1]['nombre']} ");//mascota, posicion de la lista, nombre

  /// print(user["mascotas"][0]['nombre']);
  /// imprime a todas las bestias del olimpo(masacotas)
  print("la lista de mascotas es ${user["mascotas"]} ");
}
