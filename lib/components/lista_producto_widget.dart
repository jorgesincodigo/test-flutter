import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListaProductoWidget extends StatefulWidget {
  const ListaProductoWidget({Key key}) : super(key: key);

  @override
  _ListaProductoWidgetState createState() => _ListaProductoWidgetState();
}

class _ListaProductoWidgetState extends State<ListaProductoWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ProductosRecord>>(
      stream: queryProductosRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<ProductosRecord> listViewProductosRecordList = snapshot.data;
        return ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemCount: listViewProductosRecordList.length,
          itemBuilder: (context, listViewIndex) {
            final listViewProductosRecord =
                listViewProductosRecordList[listViewIndex];
            return ListTile(
              title: Text(
                listViewProductosRecord.nombre,
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFAA1010),
                    ),
              ),
              subtitle: Text(
                listViewProductosRecord.precio.toString(),
                style: FlutterFlowTheme.of(context).subtitle2,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF303030),
                size: 20,
              ),
              dense: false,
            );
          },
        );
      },
    );
  }
}
