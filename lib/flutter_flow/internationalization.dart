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
    'kr3xtjv9': {
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
    '17ywx8a2': {
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
    '44xmap7l': {
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
    'rhnn369n': {
      'es': 'Home',
      'en': '',
    },
  },
  // PaginaB
  {
    'xc671l00': {
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
    '1yyhhl3t': {
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
    'h2v4v873': {
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
    '1jk2zv65': {
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
    '0zjlbfcw': {
      'es': 'Actualizar',
      'en': '',
    },
    'e8x3rsl5': {
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
    'hrcwck44': {
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
    '1mkxr22s': {
      'es': 'Home',
      'en': '',
    },
  },
  // LocalStateCopy
  {
    'iv7ussvu': {
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
    'xskl3ewb': {
      'es': 'Share',
      'en': '',
    },
    '8lyc9ge9': {
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
    '91x338e0': {
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
    '50exjih3': {
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
    'n4t9i7ss': {
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
    'bvvfuos4': {
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
    'dquio449': {
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
    'tmy2e3at': {
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
    'c91nvi74': {
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
    'ym0u1wbp': {
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
    'uc9dkjaq': {
      'es': 'Home',
      'en': '',
    },
  },
  // blurpage
  {
    'ry01lji7': {
      'es': 'Home',
      'en': '',
    },
  },
  // formulario
  {
    'kd1hxp49': {
      'es': 'Search events here...',
      'en': '',
    },
    'mhzyqpze': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'x5f170aw': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'u2ly4nok': {
      'es': '1.7mi',
      'en': '',
    },
    '9ag8ehq7': {
      'es': 'Store/Location Name',
      'en': '',
    },
    '8mkd8gbf': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'oqgxe6jj': {
      'es': '1.7mi',
      'en': '',
    },
    '7e2szx4o': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'joiw2cpz': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'hqnb8rsj': {
      'es': '1.7mi',
      'en': '',
    },
    'z16haalz': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'i9w7b0l0': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'fi4vgsaj': {
      'es': '1.7mi',
      'en': '',
    },
    'dbe6f83d': {
      'es': 'Store/Location Name',
      'en': '',
    },
    'essucsyp': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'x8sty12s': {
      'es': '1.7mi',
      'en': '',
    },
    'i1bwfpn7': {
      'es': 'Store/Location Name',
      'en': '',
    },
    '27vbfrj2': {
      'es': '123 Address St, City, ST',
      'en': '',
    },
    'h6nzfqyj': {
      'es': '1.7mi',
      'en': '',
    },
    'etdqo320': {
      'es': 'Map View',
      'en': '',
    },
    '7v4uwdbn': {
      'es': 'Shop',
      'en': '',
    },
  },
  // misItems
  {
    'a1k863nq': {
      'es': 'Items',
      'en': '',
    },
    'fb6mc4cl': {
      'es': 'Nuevo Item',
      'en': '',
    },
    'ajhlfihe': {
      'es': 'Ingresa Nombre',
      'en': '',
    },
    '59t9ynva': {
      'es': 'Nombre',
      'en': '',
    },
    '7r320bsm': {
      'es': 'Ingresa Precio',
      'en': '',
    },
    'w85sbkaa': {
      'es': 'Precio',
      'en': '',
    },
    'wiy3gcez': {
      'es': 'Guardar',
      'en': '',
    },
    '0gqg47j3': {
      'es': 'Home',
      'en': '',
    },
  },
  // listaproductos
  {
    'hf1r3nrq': {
      'es': 'Lista de Productos',
      'en': '',
    },
    'vpwenxrl': {
      'es': 'Home',
      'en': '',
    },
  },
  // detallesProducto
  {
    'vz9kcg2i': {
      'es': 'Precio:',
      'en': '',
    },
    'pteqnwfh': {
      'es': 'Home',
      'en': '',
    },
  },
  // CrearDatos
  {
    '0o6v01cr': {
      'es': 'Crear Articulo',
      'en': '',
    },
    'ond67c0j': {
      'es': 'Nuevo articulo',
      'en': '',
    },
    'ooeicax8': {
      'es': 'Nombre',
      'en': '',
    },
    '985ajlue': {
      'es': 'Ingrese un nombre',
      'en': '',
    },
    '1gdqe6uf': {
      'es': 'Descripcion',
      'en': '',
    },
    '0t7nktw1': {
      'es': 'Ingrese una descripcion',
      'en': '',
    },
    's1cqyqcn': {
      'es': 'Subir Imagen',
      'en': '',
    },
    'tdyv0qhs': {
      'es': 'Subir Producto',
      'en': '',
    },
    'vy6x8d0g': {
      'es': 'Home',
      'en': '',
    },
  },
  // qrscan
  {
    'sfkftnbq': {
      'es': 'qr scan',
      'en': '',
    },
    'wsfy89wg': {
      'es': 'Cancelar',
      'en': '',
    },
    'xgnulguc': {
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
    '3iuht6ab': {
      'es': 'Home',
      'en': '',
    },
  },
  // filepicker
  {
    '86bvxqk9': {
      'es': 'Home',
      'en': '',
    },
  },
  // lecturaqr
  {
    'qmxcg939': {
      'es': 'QR',
      'en': '',
    },
    'lhsygexs': {
      'es': 'Button',
      'en': '',
    },
    'n8rinll2': {
      'es': 'Cancelar',
      'en': '',
    },
    'kz4vevky': {
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
    '60335aix': {
      'es': 'Home',
      'en': '',
    },
  },
  // Playas
  {
    'kz42f81f': {
      'es': 'Playa',
      'en': '',
    },
    'lf253ucc': {
      'es': 'Home',
      'en': '',
    },
  },
  // nuevaPlaya
  {
    'pz1o1tsd': {
      'es': 'Nueva playa',
      'en': '',
    },
    'xxz22p5r': {
      'es': 'Nombre',
      'en': '',
    },
    '7zwow7og': {
      'es': 'Guardar',
      'en': '',
    },
    'qow6wqzd': {
      'es': 'Field is required',
      'en': '',
    },
    '6vm7mlgp': {
      'es': 'Home',
      'en': '',
    },
  },
  // nplaya
  {
    'rf7a52cc': {
      'es': 'Playa',
      'en': '',
    },
    'zs2xy7ar': {
      'es': 'Home',
      'en': '',
    },
  },
  // condicional
  {
    '0xpeo3pn': {
      'es': 'Sistolica',
      'en': '',
    },
    'os02uz6f': {
      'es': 'Diastolica',
      'en': '',
    },
    'bj72hgba': {
      'es': 'Calcular',
      'en': '',
    },
    'n5vrzo2b': {
      'es': 'Resultado:',
      'en': '',
    },
    'gwd6noke': {
      'es': 'Condicional',
      'en': '',
    },
    '8um353sg': {
      'es': 'Home',
      'en': '',
    },
  },
  // megusta
  {
    'nwscilxq': {
      'es': 'Productos',
      'en': '',
    },
    'g10l6boh': {
      'es': 'Favoritos',
      'en': '',
    },
    'dgknpo0p': {
      'es': 'Funcion Favoritos',
      'en': '',
    },
    '75lacgqb': {
      'es': 'Home',
      'en': '',
    },
  },
  // buscador
  {
    'vb55fydx': {
      'es': 'Buscar Producto',
      'en': '',
    },
    'roq230bq': {
      'es': 'Buscador',
      'en': '',
    },
    'ta934j4u': {
      'es': 'Home',
      'en': '',
    },
  },
  // testanancho
  {
    '03j32fxv': {
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
      'en': '',
    },
    'v56zhkzd': {
      'es': 'Page Title',
      'en': '',
    },
    'appat6ru': {
      'es': 'Home',
      'en': '',
    },
  },
  // animacion
  {
    'a16814hc': {
      'es': 'Page Title',
      'en': '',
    },
    'q6rgye1r': {
      'es': 'Home',
      'en': '',
    },
  },
  // calendar
  {
    '1t37etph': {
      'es': 'Page Title',
      'en': '',
    },
    'ovz6dp9a': {
      'es': 'Home',
      'en': '',
    },
  },
  // SwitchList
  {
    '22c5oy1b': {
      'es': 'Title',
      'en': '',
    },
    'zyphysek': {
      'es': 'Subtitle',
      'en': '',
    },
    'r3l8pp76': {
      'es': 'Switch List',
      'en': '',
    },
    'fr5pjgxe': {
      'es': 'Home',
      'en': '',
    },
  },
  // logout
  {
    'afa5repm': {
      'es': 'Logout',
      'en': '',
    },
    'wd7toxpw': {
      'es': 'Your Phone Number',
      'en': '',
    },
    'ralpl6nh': {
      'es': 'Please enter a valid number...',
      'en': '',
    },
    'zwlb6k8b': {
      'es': 'Log out',
      'en': '',
    },
    '2dpwxkoc': {
      'es': 'Home',
      'en': '',
    },
  },
  // Slidertest
  {
    'i6n2mbn8': {
      'es': 'Slider test',
      'en': '',
    },
    '0soggt4p': {
      'es': 'Home',
      'en': '',
    },
  },
  // desdeGS
  {
    'ghnftcx0': {
      'es': 'Productos',
      'en': '',
    },
    'c0c1wuio': {
      'es': 'Lorem ipsum dolor...',
      'en': '',
    },
    'rnawxeyr': {
      'es': 'Crear Producto',
      'en': '',
    },
    'mtd3gx90': {
      'es': 'Nombre',
      'en': '',
    },
    'bq6dev7v': {
      'es': 'Precio',
      'en': '',
    },
    'jzq5mbrq': {
      'es': 'Guardar',
      'en': '',
    },
    '68abfemm': {
      'es': 'Mis productos',
      'en': '',
    },
    '8e5iwwoz': {
      'es': 'Home',
      'en': '',
    },
  },
  // DatosdesdeGS
  {
    '2fcqfsqg': {
      'es': 'Productos',
      'en': '',
    },
    '8u9qd2u2': {
      'es': 'Nuevo',
      'en': '',
    },
    'ggp5kx12': {
      'es': 'Nombre',
      'en': '',
    },
    'yep563rl': {
      'es': 'Precio',
      'en': '',
    },
    'yhcl0ex6': {
      'es': 'Guardar',
      'en': '',
    },
    'ejd98eta': {
      'es': 'Mis Datos',
      'en': '',
    },
    '5lo0xtwm': {
      'es': 'Home',
      'en': '',
    },
  },
  // inventarioqr
  {
    'gxk06ysx': {
      'es': 'Escanner',
      'en': '',
    },
    'zj2f6hwh': {
      'es': 'Escanear',
      'en': '',
    },
    '6oezej7h': {
      'es': 'Cancelar',
      'en': '',
    },
    'xxw3us0l': {
      'es': 'Home',
      'en': '',
    },
  },
  // qrdetalle
  {
    'n2da7j6s': {
      'es': 'Detalles',
      'en': '',
    },
    'ha4g57yq': {
      'es': 'Home',
      'en': '',
    },
  },
  // temporal
  {
    'ys5clzen': {
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'en': '',
    },
    'e4x29vbw': {
      'es': 'Page Title',
      'en': '',
    },
    'nt8qovbw': {
      'es': 'Home',
      'en': '',
    },
  },
  // locationpicker
  {
    '9gkp4e9l': {
      'es': 'Select Location',
      'en': '',
    },
    'eii3g8m1': {
      'es': 'Location',
      'en': '',
    },
    'kgtmfxv0': {
      'es': 'Home',
      'en': '',
    },
  },
  // nuevoqr
  {
    'bnamimuv': {
      'es': 'Nuevo link',
      'en': '',
    },
    'ar2t95or': {
      'es': 'ingrese link',
      'en': '',
    },
    '9kmxt4n5': {
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
