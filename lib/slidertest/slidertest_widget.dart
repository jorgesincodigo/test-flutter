import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../iniciosesion/iniciosesion_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlidertestWidget extends StatefulWidget {
  const SlidertestWidget({Key key}) : super(key: key);

  @override
  _SlidertestWidgetState createState() => _SlidertestWidgetState();
}

class _SlidertestWidgetState extends State<SlidertestWidget> {
  double sliderValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Slider test',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
            child: InkWell(
              onTap: () async {
                await signOut();
                await Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IniciosesionWidget(),
                  ),
                  (r) => false,
                );
              },
              child: Icon(
                Icons.login,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 24,
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Slider(
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  inactiveColor: Color(0xFF9E9E9E),
                  min: 0,
                  max: 100,
                  value: sliderValue ??= 0,
                  divisions: 10,
                  onChanged: (newValue) {
                    setState(() => sliderValue = newValue);
                  },
                ),
              ),
              Text(
                'Valor: ${sliderValue.toString()}',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
