import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##) ##### - ####');
  String? Function(BuildContext, String?)? telefoneControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaControllerValidator;
  // State field(s) for senhaConfirmar widget.
  FocusNode? senhaConfirmarFocusNode;
  TextEditingController? senhaConfirmarController;
  late bool senhaConfirmarVisibility;
  String? Function(BuildContext, String?)? senhaConfirmarControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
    senhaConfirmarVisibility = false;
  }

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    senhaFocusNode?.dispose();
    senhaController?.dispose();

    senhaConfirmarFocusNode?.dispose();
    senhaConfirmarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
