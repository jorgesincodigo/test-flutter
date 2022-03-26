import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaBWidget extends StatefulWidget {
  const PaginaBWidget({
    Key key,
    this.message,
  }) : super(key: key);

  final String message;

  @override
  _PaginaBWidgetState createState() => _PaginaBWidgetState();
}

class _PaginaBWidgetState extends State<PaginaBWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            widget.message,
            style: FlutterFlowTheme.of(context).title1,
          ),
        ),
      ),
    );
  }
}
