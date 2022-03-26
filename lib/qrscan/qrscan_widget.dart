import '../components/nuevoqr_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class QrscanWidget extends StatefulWidget {
  const QrscanWidget({Key key}) : super(key: key);

  @override
  _QrscanWidgetState createState() => _QrscanWidgetState();
}

class _QrscanWidgetState extends State<QrscanWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var qrcode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'qr scan',
          style: FlutterFlowTheme.of(context).title3.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).tertiaryColor,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
            barrierColor: Color(0x1A000000),
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: 300,
                  child: NuevoqrWidget(),
                ),
              );
            },
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add,
          color: FlutterFlowTheme.of(context).tertiaryColor,
          size: 24,
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Align(
          alignment: AlignmentDirectional(0, -0.1),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 150, 0, 0),
                child: InkWell(
                  onTap: () async {
                    qrcode = await FlutterBarcodeScanner.scanBarcode(
                      '#C62828', // scanning line color
                      'Cancelar', // cancel button text
                      true, // whether to show the flash icon
                      ScanMode.QR,
                    );

                    setState(() {});
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: SvgPicture.network(
                      'https://www.qrcode.es/wp-content/themes/Divi-child/qrcdr/images/placeholder.svg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 50),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        qrcode,
                        'Presione la imagen',
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Divider(
                height: 50,
                thickness: 2,
                color: Color(0xBB000000),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(),
                child: custom_widgets.Qr(
                  width: double.infinity,
                  height: 100,
                  data: FFAppState().dataqr,
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xD8ABABAB),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
