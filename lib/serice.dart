class CentroService {
  // Va a Firebase y trae los datos "crudos" (en JSON)
  Future<Map<String, dynamic>> fetchCentroDesdeInternet(String id) async { //Future es una promesa que se resuelve en el futuro,<Map<String, dynamic>> es el tipo de dato que se va a retornar
    // Imagina que aquí llama a Firebase
    return {'id': id, 'nombre': 'Centro Sanlúcar', 'direccion': 'Calle Real 1'};
  }
}

Future<Map<String, dynamic>> pedirDatos() async {
  // await dice: "Espero a que el repartidor llegue"
  var respuesta = await repartidor.traerPaquete(); 
  return respuesta;
}