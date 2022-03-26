import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocalStateCopyWidget extends StatefulWidget {
  const LocalStateCopyWidget({Key key}) : super(key: key);

  @override
  _LocalStateCopyWidgetState createState() => _LocalStateCopyWidgetState();
}

class _LocalStateCopyWidgetState extends State<LocalStateCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.1, 0),
              child: Text(
                FFAppState().numeropersistente.toString(),
                style: FlutterFlowTheme.of(context).title1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
