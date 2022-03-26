import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CarritoWidget extends StatefulWidget {
  const CarritoWidget({Key key}) : super(key: key);

  @override
  _CarritoWidgetState createState() => _CarritoWidgetState();
}

class _CarritoWidgetState extends State<CarritoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<SubproductosRecord>>(
      stream: querySubproductosRecord(),
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
        List<SubproductosRecord> carritoSubproductosRecordList = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: true,
            title: Text(
              FFLocalizations.of(context).getText(
                '8mh3vksn' /* Carrito */,
              ),
              style: FlutterFlowTheme.of(context).title3.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 4,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'emjarwq7' /* Listado de productos */,
                          ),
                          style: FlutterFlowTheme.of(context).subtitle1,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            StreamBuilder<List<SubproductosRecord>>(
                              stream: querySubproductosRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<SubproductosRecord>
                                    textSubproductosRecordList = snapshot.data;
                                return Text(
                                  FFLocalizations.of(context).getText(
                                    '280mhm5m' /* $ */,
                                  ),
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context).title3,
                                );
                              },
                            ),
                            StreamBuilder<List<SubproductosRecord>>(
                              stream: querySubproductosRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<SubproductosRecord>
                                    textSubproductosRecordList = snapshot.data;
                                return Text(
                                  functions
                                      .totalList(textSubproductosRecordList
                                          .map((e) => e.subtotal)
                                          .toList())
                                      .toString(),
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context).title3,
                                );
                              },
                            ),
                            StreamBuilder<List<SubproductosRecord>>(
                              stream: querySubproductosRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                List<SubproductosRecord>
                                    textSubproductosRecordList = snapshot.data;
                                return Text(
                                  FFLocalizations.of(context).getText(
                                    'ij3fvq3p' /* .00 */,
                                  ),
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context).title3,
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  if ((carritoSubproductosRecordList.length) == 0)
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: SvgPicture.asset(
                          'assets/images/Shopping_cart_Monochromatic.svg',
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 300,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                      child: StreamBuilder<List<SubproductosRecord>>(
                        stream: querySubproductosRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<SubproductosRecord>
                              listViewSubproductosRecordList = snapshot.data;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewSubproductosRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewSubproductosRecord =
                                  listViewSubproductosRecordList[listViewIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Color(0x40ABABAB),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 5, 5, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: StreamBuilder<
                                                    List<ProductosRecord>>(
                                                  stream: queryProductosRecord(
                                                    queryBuilder: (productosRecord) =>
                                                        productosRecord.where(
                                                            'id',
                                                            isEqualTo:
                                                                listViewSubproductosRecord
                                                                    .idProducto),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<ProductosRecord>
                                                        imageProductosRecordList =
                                                        snapshot.data;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot.data.isEmpty) {
                                                      return Container();
                                                    }
                                                    final imageProductosRecord =
                                                        imageProductosRecordList
                                                                .isNotEmpty
                                                            ? imageProductosRecordList
                                                                .first
                                                            : null;
                                                    return Hero(
                                                      tag: imageProductosRecord
                                                          .imagen,
                                                      transitionOnUserGestures:
                                                          true,
                                                      child: Image.network(
                                                        imageProductosRecord
                                                            .imagen,
                                                        width: 90,
                                                        height: 90,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              StreamBuilder<
                                                  List<ProductosRecord>>(
                                                stream: queryProductosRecord(
                                                  queryBuilder: (productosRecord) =>
                                                      productosRecord.where(
                                                          'id',
                                                          isEqualTo:
                                                              listViewSubproductosRecord
                                                                  .idProducto),
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<ProductosRecord>
                                                      textProductosRecordList =
                                                      snapshot.data;
                                                  // Return an empty Container when the document does not exist.
                                                  if (snapshot.data.isEmpty) {
                                                    return Container();
                                                  }
                                                  final textProductosRecord =
                                                      textProductosRecordList
                                                              .isNotEmpty
                                                          ? textProductosRecordList
                                                              .first
                                                          : null;
                                                  return Text(
                                                    textProductosRecord.nombre,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3,
                                                  );
                                                },
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  StreamBuilder<
                                                      List<ProductosRecord>>(
                                                    stream:
                                                        queryProductosRecord(
                                                      queryBuilder: (productosRecord) =>
                                                          productosRecord.where(
                                                              'id',
                                                              isEqualTo:
                                                                  listViewSubproductosRecord
                                                                      .idProducto),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ProductosRecord>
                                                          textProductosRecordList =
                                                          snapshot.data;
                                                      // Return an empty Container when the document does not exist.
                                                      if (snapshot
                                                          .data.isEmpty) {
                                                        return Container();
                                                      }
                                                      final textProductosRecord =
                                                          textProductosRecordList
                                                                  .isNotEmpty
                                                              ? textProductosRecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jhrsc33y' /* Precio:  */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      );
                                                    },
                                                  ),
                                                  StreamBuilder<
                                                      List<ProductosRecord>>(
                                                    stream:
                                                        queryProductosRecord(
                                                      queryBuilder: (productosRecord) =>
                                                          productosRecord.where(
                                                              'id',
                                                              isEqualTo:
                                                                  listViewSubproductosRecord
                                                                      .idProducto),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ProductosRecord>
                                                          textProductosRecordList =
                                                          snapshot.data;
                                                      // Return an empty Container when the document does not exist.
                                                      if (snapshot
                                                          .data.isEmpty) {
                                                        return Container();
                                                      }
                                                      final textProductosRecord =
                                                          textProductosRecordList
                                                                  .isNotEmpty
                                                              ? textProductosRecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        formatNumber(
                                                          textProductosRecord
                                                              .precio,
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '\$.00',
                                                          locale: '',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                              StreamBuilder<
                                                  List<ProductosRecord>>(
                                                stream: queryProductosRecord(
                                                  queryBuilder: (productosRecord) =>
                                                      productosRecord.where(
                                                          'id',
                                                          isEqualTo:
                                                              listViewSubproductosRecord
                                                                  .idProducto),
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<ProductosRecord>
                                                      textProductosRecordList =
                                                      snapshot.data;
                                                  // Return an empty Container when the document does not exist.
                                                  if (snapshot.data.isEmpty) {
                                                    return Container();
                                                  }
                                                  final textProductosRecord =
                                                      textProductosRecordList
                                                              .isNotEmpty
                                                          ? textProductosRecordList
                                                              .first
                                                          : null;
                                                  return Text(
                                                    functions
                                                        .calcularSubtotal(
                                                            textProductosRecord
                                                                .precio,
                                                            listViewSubproductosRecord
                                                                .cantidad)
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if ((listViewSubproductosRecord
                                                          .cantidad) ==
                                                      1)
                                                    StreamBuilder<
                                                        List<ProductosRecord>>(
                                                      stream:
                                                          queryProductosRecord(
                                                        queryBuilder: (productosRecord) =>
                                                            productosRecord.where(
                                                                'id',
                                                                isEqualTo:
                                                                    listViewSubproductosRecord
                                                                        .idProducto),
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<ProductosRecord>
                                                            iconProductosRecordList =
                                                            snapshot.data;
                                                        // Return an empty Container when the document does not exist.
                                                        if (snapshot
                                                            .data.isEmpty) {
                                                          return Container();
                                                        }
                                                        final iconProductosRecord =
                                                            iconProductosRecordList
                                                                    .isNotEmpty
                                                                ? iconProductosRecordList
                                                                    .first
                                                                : null;
                                                        return InkWell(
                                                          onTap: () async {
                                                            await listViewSubproductosRecord
                                                                .reference
                                                                .delete();
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .delete_forever,
                                                            color: Color(
                                                                0xFFCA1B1B),
                                                            size: 32,
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  if ((listViewSubproductosRecord
                                                          .cantidad) >
                                                      1)
                                                    StreamBuilder<
                                                        List<ProductosRecord>>(
                                                      stream:
                                                          queryProductosRecord(
                                                        queryBuilder: (productosRecord) =>
                                                            productosRecord.where(
                                                                'id',
                                                                isEqualTo:
                                                                    listViewSubproductosRecord
                                                                        .idProducto),
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<ProductosRecord>
                                                            iconProductosRecordList =
                                                            snapshot.data;
                                                        // Return an empty Container when the document does not exist.
                                                        if (snapshot
                                                            .data.isEmpty) {
                                                          return Container();
                                                        }
                                                        final iconProductosRecord =
                                                            iconProductosRecordList
                                                                    .isNotEmpty
                                                                ? iconProductosRecordList
                                                                    .first
                                                                : null;
                                                        return InkWell(
                                                          onTap: () async {
                                                            final subproductosUpdateData =
                                                                {
                                                              ...createSubproductosRecordData(
                                                                subtotal: functions.restarSubtotal(
                                                                    listViewSubproductosRecord
                                                                        .subtotal,
                                                                    iconProductosRecord
                                                                        .precio),
                                                              ),
                                                              'cantidad':
                                                                  FieldValue
                                                                      .increment(
                                                                          -1),
                                                            };
                                                            await listViewSubproductosRecord
                                                                .reference
                                                                .update(
                                                                    subproductosUpdateData);
                                                          },
                                                          child: Icon(
                                                            Icons.remove_circle,
                                                            color: Color(
                                                                0xFF6B6B6F),
                                                            size: 32,
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 0, 5, 0),
                                                    child: Text(
                                                      formatNumber(
                                                        listViewSubproductosRecord
                                                            .cantidad,
                                                        formatType:
                                                            FormatType.custom,
                                                        format: '',
                                                        locale: '',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                  StreamBuilder<
                                                      List<ProductosRecord>>(
                                                    stream:
                                                        queryProductosRecord(
                                                      queryBuilder: (productosRecord) =>
                                                          productosRecord.where(
                                                              'id',
                                                              isEqualTo:
                                                                  listViewSubproductosRecord
                                                                      .idProducto),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ProductosRecord>
                                                          iconProductosRecordList =
                                                          snapshot.data;
                                                      // Return an empty Container when the document does not exist.
                                                      if (snapshot
                                                          .data.isEmpty) {
                                                        return Container();
                                                      }
                                                      final iconProductosRecord =
                                                          iconProductosRecordList
                                                                  .isNotEmpty
                                                              ? iconProductosRecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        onTap: () async {
                                                          final subproductosUpdateData =
                                                              {
                                                            ...createSubproductosRecordData(
                                                              subtotal: functions.sumarSubtotal(
                                                                  listViewSubproductosRecord
                                                                      .subtotal,
                                                                  iconProductosRecord
                                                                      .precio),
                                                            ),
                                                            'cantidad':
                                                                FieldValue
                                                                    .increment(
                                                                        1),
                                                          };
                                                          await listViewSubproductosRecord
                                                              .reference
                                                              .update(
                                                                  subproductosUpdateData);
                                                        },
                                                        child: Icon(
                                                          Icons.add_circle,
                                                          color: Colors.black,
                                                          size: 32,
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
