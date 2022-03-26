import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class PaisesamericaCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'paisesamerica',
      apiUrl: 'https://restcountries.com/v3.1/subregion/america',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class ObtenerPlayasCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'ObtenerPlayas',
      apiUrl: 'https://demodejj.bubbleapps.io/version-test/api/1.1/obj/playa',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class CrearPlayaCall {
  static Future<ApiCallResponse> call({
    String nombre = '',
    String foto = '',
  }) {
    final body = '''
{
  "Nombre": "${nombre}",
  "foto": "${foto}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crearPlaya',
      apiUrl: 'https://demodejj.bubbleapps.io/version-test/api/1.1/obj/playa',
      callType: ApiCallType.POST,
      headers: {
        'tokenpost': '906ca39bb25e0b198ef2c960fd2ca5c7',
      },
      params: {
        'Nombre': nombre,
        'Foto': foto,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class ObtenermisplayasCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Obtenermisplayas',
      apiUrl: 'https://demodejj.bubbleapps.io/version-test/api/1.1/obj/playa',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class NCrearPlayaCall {
  static Future<ApiCallResponse> call({
    String nombre = '',
    String foto = '',
  }) {
    final body = '''
{
  "Nombre": "${nombre}",
  "foto": "${foto}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'nCrearPlaya',
      apiUrl: 'https://demodejj.bubbleapps.io/version-test/api/1.1/obj/Playa',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'Nombre': nombre,
        'foto': foto,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class ObtenerPostsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'obtenerPosts',
      apiUrl: 'https://essincodigo.com/wp-json/wp/v2/posts',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class ProductosGSCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'ProductosGS',
      apiUrl:
          'https://api.sheety.co/b3d8e2efca359f651e5e25bd342e3896/menuDigital/producto',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class PostProductoCall {
  static Future<ApiCallResponse> call({
    String nombre = 'Productotest',
    double precio = 27.0,
  }) {
    final body = '''
{
  "producto": {
	"nombre": "${nombre}",
	"precio": "${precio}"
  }
} ''';
    return ApiManager.instance.makeApiCall(
      callName: 'PostProducto',
      apiUrl:
          'https://api.sheety.co/b3d8e2efca359f651e5e25bd342e3896/menuDigital/producto',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'nombre': nombre,
        'precio': precio,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class VerproductosCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'VERPRODUCTOS',
      apiUrl:
          'https://api.sheety.co/822a2be99b82dee2d2506bb11909f1db/menuDigital/producto',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class CrearproductoCall {
  static Future<ApiCallResponse> call({
    String nombre = '',
    double precio,
  }) {
    final body = '''
{
  "producto": {
    "nombre": "${nombre}",
    "precio": ${precio}
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CREARPRODUCTO',
      apiUrl:
          'https://api.sheety.co/822a2be99b82dee2d2506bb11909f1db/menuDigital/producto',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'nombre': nombre,
        'precio': precio,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
