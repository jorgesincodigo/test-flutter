import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['es', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String esText = '',
    String enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // iniciosesion
  {
    'pur36k82': {
      'es': 'Email',
      'en': '',
    },
    '5e61xyzh': {
      'es': 'Contrasena',
      'en': '',
    },
    'tigt1gjr': {
      'es': 'iniciar sesion',
      'en': '',
    },
    'kjnylip4': {
      'es': 'Registrarme',
      'en': '',
    },
    '0nwwfzbb': {
      'es': 'Registrarme',
      'en': '',
    },
    'w9pkrbab': {
      'es': 'Home',
      'en': '',
    },
  },
  // Menu
  {
    'z3dpe0in': {
      'es': 'Buscar',
      'en': '',
    },
    '45jwg3tk': {
      'es': 'Ingrese valor',
      'en': '',
    },
    'p081wxr8': {
      'es': 'Menu',
      'en': '',
    },
    'jwhj63l5': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    '91rnfbdx': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    'wcc2ur1n': {
      'es': 'Home',
      'en': '',
    },
  },
  // tiktok
  {
    'wc33gktw': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    'yssbypy2': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    '8x18lf51': {
      'es': 'Home',
      'en': '',
    },
  },
  // PaginaA
  {
    'muzcxj2j': {
      'es': 'Texto a enviar',
      'en': '',
    },
    'vffulruu': {
      'es': 'Enviar',
      'en': '',
    },
    'rny9if1p': {
      'es': 'Home',
      'en': '',
    },
  },
  // PaginaB
  {
    '3zwxdpb7': {
      'es': 'Home',
      'en': '',
    },
  },
  // teststories
  {
    'v80an0n3': {
      'es': 'Stories',
      'en': '',
    },
    'lt55h21s': {
      'es': 'Home',
      'en': '',
    },
  },
  // Sample
  {
    '0n0hccb9': {
      'es': 'Cuiades',
      'en': '',
    },
    '7ih63ol1': {
      'es': 'Nueva Cuidad',
      'en': '',
    },
    '7zr0z58h': {
      'es': 'Ex: Barcelona',
      'en': '',
    },
    '2iluj85l': {
      'es': 'Crear Cuidad',
      'en': '',
    },
    'pkm39b0w': {
      'es': 'Locales',
      'en': '',
    },
    '9pvorg0r': {
      'es': 'Agregar cuidad',
      'en': '',
    },
    'tz826m1o': {
      'es': 'Ex: Ferreteria Rojas',
      'en': '',
    },
    'aqivhosv': {
      'es': 'Please select...',
      'en': '',
    },
    'weve3wzs': {
      'es': 'Agregar',
      'en': '',
    },
    '0a5z1ggo': {
      'es': 'Dropdown',
      'en': '',
    },
    '6cdpdcj5': {
      'es': 'Home',
      'en': '',
    },
  },
  // sample02
  {
    '8uk2tpuo': {
      'es': 'Nueva Local',
      'en': '',
    },
    'q4bjjjw3': {
      'es': 'Ex: Ferreteria Rojas',
      'en': '',
    },
    'rta8mfnx': {
      'es': 'Agregar',
      'en': '',
    },
    'trwz9ymi': {
      'es': 'Home',
      'en': '',
    },
  },
  // DROPDOWN
  {
    'rlmc4id0': {
      'es': 'Dropdown',
      'en': '',
    },
    'erb7kb6t': {
      'es': 'Colom',
      'en': '',
    },
    'xqt6y8v7': {
      'es': 'Mexico',
      'en': '',
    },
    'zv0mjyip': {
      'es': 'Espana',
      'en': '',
    },
    'au892cz1': {
      'es': 'Colombia',
      'en': '',
    },
    'gmre827m': {
      'es': 'Elige un pais',
      'en': '',
    },
    '0tl0tuqb': {
      'es': 'Actualizar',
      'en': '',
    },
    'hc7r4r37': {
      'es': 'Home',
      'en': '',
    },
  },
  // EJEMPLODROPDOWN
  {
    'nbnl3w80': {
      'es': 'Cuiades',
      'en': '',
    },
    'qfa379zy': {
      'es': 'Nueva Cuidad',
      'en': '',
    },
    '9hkhbejh': {
      'es': 'Ex: Barcelona',
      'en': '',
    },
    'z3crlfpy': {
      'es': 'Crear Cuidad',
      'en': '',
    },
    'doyu59a2': {
      'es': 'Locales',
      'en': '',
    },
    '2h4m3fn8': {
      'es': 'Agregar cuidad',
      'en': '',
    },
    '7uzrnrr4': {
      'es': 'Ex: Ferreteria Rojas',
      'en': '',
    },
    'y186oli1': {
      'es': 'Please select...',
      'en': '',
    },
    '9y2yciq6': {
      'es': 'Agregar',
      'en': '',
    },
    'favf2ur4': {
      'es': 'Dropdown',
      'en': '',
    },
    'o2648i86': {
      'es': 'Home',
      'en': '',
    },
  },
  // LocalState
  {
    'iet2n38t': {
      'es': 'Ingresa una nota o apunte',
      'en': '',
    },
    'yrp6ko9h': {
      'es': 'Home',
      'en': '',
    },
  },
  // LocalStateCopy
  {
    '4pvh9yec': {
      'es': 'Home',
      'en': '',
    },
  },
  // Admin_panel
  {
    'gij4lia7': {
      'es': 'Admin Dashboard',
      'en': '',
    },
    'zjhkdkrh': {
      'es': 'Hey Jorge',
      'en': '',
    },
    '6yd0cu4d': {
      'es': 'Hey Jorge',
      'en': '',
    },
    'z8bd2r8i': {
      'es': 'Share',
      'en': '',
    },
    'yo4m0uvr': {
      'es': 'Share',
      'en': '',
    },
    'k25qi04n': {
      'es': 'Lorem ipsum dolo',
      'en': '',
    },
    'ex2bkqg6': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    '3rotj4o5': {
      'es': 'Lorem ipsum dolo',
      'en': '',
    },
    '7fnbnqhw': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    'klmx4jhn': {
      'es': 'Lorem ipsum dolo',
      'en': '',
    },
    'wnujlfhs': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    'jbbguct3': {
      'es': 'Lorem ipsum dolo',
      'en': '',
    },
    'egtk60gv': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    '3d46fnu4': {
      'es': 'Lorem ipsum dolo',
      'en': '',
    },
    'cli6cyho': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    '6u13it7r': {
      'es': 'Title',
      'en': '',
    },
    'y29vxnft': {
      'es': 'A wonderfully delicious 2 patty melt that melts into your...',
      'en': '',
    },
    'xg4i8s1n': {
      'es': '\$11.00',
      'en': '',
    },
    'df8fgkat': {
      'es': 'Home',
      'en': '',
    },
  },
  // Categoriaproductos
  {
    '17prun7i': {
      'es': 'Categorias',
      'en': '',
    },
    '2wrv5xqa': {
      'es': 'Nueva categoria',
      'en': '',
    },
    'ibr2wsdb': {
      'es': 'Ex: Vegetales',
      'en': '',
    },
    '4sj014nj': {
      'es': 'Anadir categoria',
      'en': '',
    },
    'pphu7f0k': {
      'es': 'Productos',
      'en': '',
    },
    'qv44mxzb': {
      'es': 'Anadir producto',
      'en': '',
    },
    'wi9fhzha': {
      'es': 'Ex: Tomates',
      'en': '',
    },
    'g7y964r5': {
      'es': 'Please select...',
      'en': '',
    },
    '0hchtjg2': {
      'es': 'Agregar',
      'en': '',
    },
    'riwi8jkp': {
      'es': 'Categoria productos',
      'en': '',
    },
    '04g0ia7c': {
      'es': 'Home',
      'en': '',
    },
  },
  // testapi
  {
    'ktwlming': {
      'es': 'Paises',
      'en': '',
    },
    'dmcjveyh': {
      'es': 'Api',
      'en': '',
    },
  },
  // testapidetails
  {
    'ljee420d': {
      'es': 'Details',
      'en': '',
    },
    'w68r3d46': {
      'es': 'Capital',
      'en': '',
    },
    '6w77p4go': {
      'es': 'Momeda',
      'en': '',
    },
    'fdoi4klc': {
      'es': 'Home',
      'en': '',
    },
  },
  // Productos
  {
    'foob0g3c': {
      'es': 'Productos',
      'en': '',
    },
    '0rx9tysa': {
      'es': 'Agregar',
      'en': '',
    },
    'tsbawgau': {
      'es': 'carrito',
      'en': '',
    },
  },
  // Carrito
  {
    '8mh3vksn': {
      'es': 'Carrito',
      'en': '',
    },
    'emjarwq7': {
      'es': 'Listado de productos',
      'en': '',
    },
    '280mhm5m': {
      'es': '\$',
      'en': '',
    },
    'ij3fvq3p': {
      'es': '.00',
      'en': '',
    },
    'jhrsc33y': {
      'es': 'Precio: ',
      'en': '',
    },
    'i3mcpm5x': {
      'es': 'carrito',
      'en': '',
    },
  },
  // Map1
  {
    'h9yrbzjh': {
      'es': 'Map',
      'en': '',
    },
    'd4kautts': {
      'es': 'Home',
      'en': '',
    },
  },
  // Nimage
  {
    'yqkhx15g': {
      'es': 'Nombre',
      'en': '',
    },
    'i95fszgr': {
      'es': 'Nombre',
      'en': '',
    },
    'cxzz6rfg': {
      'es': 'crear',
      'en': '',
    },
    '4xlf0fgb': {
      'es': 'Home',
      'en': '',
    },
  },
  // Asistencia
  {
    'u3ahkjkb': {
      'es': 'Asistencia',
      'en': '',
    },
    'eof3nanp': {
      'es': 'Rol',
      'en': '',
    },
    'tsfenxe6': {
      'es': 'agregar',
      'en': '',
    },
    'sczhl4jk': {
      'es': 'Home',
      'en': '',
    },
  },
  // blurpage
  {
    'rl6b50xd': {
      'es': 'Home',
      'en': '',
    },
  },
  // formulario
  {
    'l23ueqyu': {
      'es': 'Search events here...',
      'en': '',
    },
    '1sapki1d': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'h7g7zbgy': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'v3e795ib': {
      'es': '1.7mi',
      'en': '',
    },
    '0sg8a4xh': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'ley7kgue': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'd895rnmt': {
      'es': '1.7mi',
      'en': '',
    },
    'gyxeds8r': {
      'es': 'Store/Location Name',
      'en': '',
    },
    '4pkpopf4': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'ja0jicp8': {
      'es': '1.7mi',
      'en': '',
    },
    '34a47ggy': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'aznafsem': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    '51tu2j56': {
      'es': '1.7mi',
      'en': '',
    },
    '4e8pchd1': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'ab553ffs': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'fl23z2rt': {
      'es': '1.7mi',
      'en': '',
    },
    'xy66noxb': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'nxyucslb': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'yldxwzjs': {
      'es': '1.7mi',
      'en': '',
    },
    'hhowyasr': {
      'es': 'Map View',
      'en': '',
    },
    'u4unhp3j': {
      'es': 'Shop',
      'en': '',
    },
  },
  // misItems
  {
    't7prfh98': {
      'es': 'Items',
      'en': '',
    },
    'n5o2uz6j': {
      'es': 'Nuevo Item',
      'en': '',
    },
    'ci713cjh': {
      'es': 'Ingresa Nombre',
      'en': '',
    },
    '634qiaxx': {
      'es': 'Nombre',
      'en': '',
    },
    '30atxod1': {
      'es': 'Ingresa Precio',
      'en': '',
    },
    'evcm0y7r': {
      'es': 'Precio',
      'en': '',
    },
    'aqs5yma2': {
      'es': 'Guardar',
      'en': '',
    },
    '70erjb9i': {
      'es': 'Home',
      'en': '',
    },
  },
  // listaproductos
  {
    'hh84m13x': {
      'es': 'Lista de Productos',
      'en': '',
    },
    'nbuu1otq': {
      'es': 'Home',
      'en': '',
    },
  },
  // detallesProducto
  {
    'h8fp2s3m': {
      'es': 'Precio:',
      'en': '',
    },
    'wwgk8rqv': {
      'es': 'Home',
      'en': '',
    },
  },
  // CrearDatos
  {
    'aol83bnj': {
      'es': 'Crear Articulo',
      'en': '',
    },
    'bw1x8gow': {
      'es': 'Nuevo articulo',
      'en': '',
    },
    'iiqyykg0': {
      'es': 'Nombre',
      'en': '',
    },
    'wrdes5c3': {
      'es': 'Ingrese un nombre',
      'en': '',
    },
    't9h6pj52': {
      'es': 'Descripcion',
      'en': '',
    },
    'av4yl4nn': {
      'es': 'Ingrese una descripcion',
      'en': '',
    },
    '88afmxq3': {
      'es': 'Subir Imagen',
      'en': '',
    },
    'kil3ta5y': {
      'es': 'Subir Producto',
      'en': '',
    },
    '6v3v6bzm': {
      'es': 'Home',
      'en': '',
    },
  },
  // qrscan
  {
    'fc6mdomd': {
      'es': 'qr scan',
      'en': '',
    },
    'aywk0ido': {
      'es': 'Cancelar',
      'en': '',
    },
    'zw9y4hzz': {
      'es': 'Home',
      'en': '',
    },
  },
  // registro
  {
    '7lku0j8j': {
      'es': 'Email',
      'en': 'E-mail',
    },
    'l7fmfwkt': {
      'es': 'Contrasena',
      'en': 'Password',
    },
    '7p1xfko5': {
      'es': 'Registrar',
      'en': 'to register',
    },
    'c0ph4gzn': {
      'es': 'iniciar sesion',
      'en': 'log in',
    },
    'jj4kme3x': {
      'es': 'Home',
      'en': '',
    },
  },
  // filepicker
  {
    'z5nuk616': {
      'es': 'Home',
      'en': '',
    },
  },
  // lecturaqr
  {
    'juvipztn': {
      'es': 'QR',
      'en': '',
    },
    'xdihsu3o': {
      'es': 'Button',
      'en': '',
    },
    'a0i9krin': {
      'es': 'Cancelar',
      'en': '',
    },
    'c93tk4ap': {
      'es': 'Home',
      'en': '',
    },
  },
  // HomePage
  {
    'ifrzt8ri': {
      'es': 'Buscar',
      'en': '',
    },
    '8kv1ei73': {
      'es': 'Ingrese valor',
      'en': '',
    },
    'nc0l4eve': {
      'es': 'Home',
      'en': '',
    },
    'z2g7i0mb': {
      'es': 'Home',
      'en': '',
    },
  },
  // Playas
  {
    'vfxbvcbt': {
      'es': 'Playa',
      'en': '',
    },
    '21dkytty': {
      'es': 'Home',
      'en': '',
    },
  },
  // nuevaPlaya
  {
    'fpql3qir': {
      'es': 'Nueva playa',
      'en': '',
    },
    '625kplwg': {
      'es': 'Nombre',
      'en': '',
    },
    'nuawcpza': {
      'es': 'Guardar',
      'en': '',
    },
    'wh1r4uvd': {
      'es': 'Field is required',
      'en': '',
    },
    'budo5uhr': {
      'es': 'Home',
      'en': '',
    },
  },
  // nplaya
  {
    'wna8oug0': {
      'es': 'Playa',
      'en': '',
    },
    'j7hc9psj': {
      'es': 'Home',
      'en': '',
    },
  },
  // condicional
  {
    'omprq07j': {
      'es': 'Sistolica',
      'en': '',
    },
    'dei15pb6': {
      'es': 'Diastolica',
      'en': '',
    },
    'vwzkjdyt': {
      'es': 'Calcular',
      'en': '',
    },
    'wj051a7b': {
      'es': 'Resultado:',
      'en': '',
    },
    'vp4xa76q': {
      'es': 'Condicional',
      'en': '',
    },
    'z78l3pvg': {
      'es': 'Home',
      'en': '',
    },
  },
  // megusta
  {
    '6g96pka6': {
      'es': 'Productos',
      'en': '',
    },
    'b2suyu1x': {
      'es': 'Favoritos',
      'en': '',
    },
    '5j9f3kap': {
      'es': 'Funcion Favoritos',
      'en': '',
    },
    'xuhp4iok': {
      'es': 'Home',
      'en': '',
    },
  },
  // buscador
  {
    '1ngqycuf': {
      'es': 'Buscar Producto',
      'en': '',
    },
    'h4n8186n': {
      'es': 'Buscador',
      'en': '',
    },
    'voxt2ksw': {
      'es': 'Home',
      'en': '',
    },
  },
  // testanancho
  {
    'qq01ulsv': {
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      'en': '',
    },
    '5no5o0yy': {
      'es': 'Page Title',
      'en': '',
    },
    'plhvre6s': {
      'es': 'Home',
      'en': '',
    },
  },
  // animacion
  {
    'a694xx8f': {
      'es': 'Page Title',
      'en': '',
    },
    'kk84v41c': {
      'es': 'Home',
      'en': '',
    },
  },
  // calendar
  {
    '8m18a77p': {
      'es': 'Page Title',
      'en': '',
    },
    'vff6veov': {
      'es': 'Home',
      'en': '',
    },
  },
  // SwitchList
  {
    '329zzcbt': {
      'es': 'Title',
      'en': '',
    },
    'zjoirzb0': {
      'es': 'Subtitle',
      'en': '',
    },
    'cgqotz7m': {
      'es': 'Switch List',
      'en': '',
    },
    'dax05xow': {
      'es': 'Home',
      'en': '',
    },
  },
  // logout
  {
    'gm3ju74g': {
      'es': 'Logout',
      'en': '',
    },
    'bkjl9hos': {
      'es': 'Your Phone Number',
      'en': '',
    },
    'b9jhb963': {
      'es': 'Please enter a valid number...',
      'en': '',
    },
    'dm2rbtgh': {
      'es': 'Log out',
      'en': '',
    },
    'ik89fwss': {
      'es': 'Home',
      'en': '',
    },
  },
  // Slidertest
  {
    '1e3i0t24': {
      'es': 'Slider test',
      'en': '',
    },
    'cr8gx6b2': {
      'es': 'Home',
      'en': '',
    },
  },
  // desdeGS
  {
    '75vf6fqx': {
      'es': 'Productos',
      'en': '',
    },
    'a286mm6d': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    'xfjeqw4s': {
      'es': 'Crear Producto',
      'en': '',
    },
    '36ei4s9q': {
      'es': 'Nombre',
      'en': '',
    },
    'z0k9aet3': {
      'es': 'Precio',
      'en': '',
    },
    'wawtuodo': {
      'es': 'Guardar',
      'en': '',
    },
    '7s2bls69': {
      'es': 'Mis productos',
      'en': '',
    },
    '8y9nse17': {
      'es': 'Home',
      'en': '',
    },
  },
  // DatosdesdeGS
  {
    '1sh096kb': {
      'es': 'Productos',
      'en': '',
    },
    'kubxkg05': {
      'es': 'Nuevo',
      'en': '',
    },
    'il7tdum3': {
      'es': 'Nombre',
      'en': '',
    },
    'j1u7zjw4': {
      'es': 'Precio',
      'en': '',
    },
    'yvosa9bc': {
      'es': 'Guardar',
      'en': '',
    },
    '0jbuovhw': {
      'es': 'Mis Datos',
      'en': '',
    },
    'wo6fp2oq': {
      'es': 'Home',
      'en': '',
    },
  },
  // inventarioqr
  {
    '7r6fbgyj': {
      'es': 'Escanner',
      'en': '',
    },
    '5okdskb8': {
      'es': 'Escanear',
      'en': '',
    },
    'hfjec14e': {
      'es': 'Cancelar',
      'en': '',
    },
    'p40z68bu': {
      'es': 'Home',
      'en': '',
    },
  },
  // qrdetalle
  {
    'cal4q8fs': {
      'es': 'Detalles',
      'en': '',
    },
    't8o7zk6w': {
      'es': 'Home',
      'en': '',
    },
  },
  // temporal
  {
    'jvqbsgjo': {
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'en': '',
    },
    'bz7rdmyz': {
      'es': 'Page Title',
      'en': '',
    },
    'wxc9ssyo': {
      'es': 'Home',
      'en': '',
    },
  },
  // locationpicker
  {
    '13rbijn5': {
      'es': 'Select Location',
      'en': '',
    },
    'qlfsrgph': {
      'es': 'Location',
      'en': '',
    },
    'merq5iky': {
      'es': 'Home',
      'en': '',
    },
  },
  // nuevoqr
  {
    '5c9wnfeq': {
      'es': 'Nuevo link',
      'en': '',
    },
    'uzqx0frr': {
      'es': 'ingrese link',
      'en': '',
    },
    'pal36ema': {
      'es': 'Crear',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'dgzu5wbo': {
      'es': '',
      'en': '',
    },
    'orov4b1y': {
      'es': '',
      'en': '',
    },
    'szev5zsb': {
      'es': '',
      'en': '',
    },
    'okbvc1nj': {
      'es': '',
      'en': '',
    },
    'njre64dj': {
      'es': '',
      'en': '',
    },
    'fyei40k8': {
      'es': '',
      'en': '',
    },
    '8eqnkxb7': {
      'es': '',
      'en': '',
    },
    't0s4w9zi': {
      'es': '',
      'en': '',
    },
    'fcdj9bh4': {
      'es': '',
      'en': '',
    },
    '4s36v27q': {
      'es': '',
      'en': '',
    },
    'oqxl6qwa': {
      'es': '',
      'en': '',
    },
    'kkgkrtpg': {
      'es': '',
      'en': '',
    },
    'x9ybrj65': {
      'es': '',
      'en': '',
    },
    'ainvjr3c': {
      'es': '',
      'en': '',
    },
    'vkmuw9b4': {
      'es': '',
      'en': '',
    },
    'is41cadm': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
