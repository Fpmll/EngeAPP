import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  double? varValorGeradoDia;

  double? varValorGeradoMes;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ValorMwh widget.
  FocusNode? valorMwhFocusNode;
  TextEditingController? valorMwhController;
  String? Function(BuildContext, String?)? valorMwhControllerValidator;
  // State field(s) for Cota widget.
  FocusNode? cotaFocusNode;
  TextEditingController? cotaController;
  String? Function(BuildContext, String?)? cotaControllerValidator;
  // State field(s) for Custo widget.
  FocusNode? custoFocusNode;
  TextEditingController? custoController;
  String? Function(BuildContext, String?)? custoControllerValidator;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    valorMwhFocusNode?.dispose();
    valorMwhController?.dispose();

    cotaFocusNode?.dispose();
    cotaController?.dispose();

    custoFocusNode?.dispose();
    custoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
