import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EngUsinasRecord extends FirestoreRecord {
  EngUsinasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Localizacao" field.
  String? _localizacao;
  String get localizacao => _localizacao ?? '';
  bool hasLocalizacao() => _localizacao != null;

  // "Nome_Usina" field.
  String? _nomeUsina;
  String get nomeUsina => _nomeUsina ?? '';
  bool hasNomeUsina() => _nomeUsina != null;

  // "Numero_Turbinas" field.
  int? _numeroTurbinas;
  int get numeroTurbinas => _numeroTurbinas ?? 0;
  bool hasNumeroTurbinas() => _numeroTurbinas != null;

  // "Potencia_usina" field.
  double? _potenciaUsina;
  double get potenciaUsina => _potenciaUsina ?? 0.0;
  bool hasPotenciaUsina() => _potenciaUsina != null;

  // "usuRef" field.
  List<DocumentReference>? _usuRef;
  List<DocumentReference> get usuRef => _usuRef ?? const [];
  bool hasUsuRef() => _usuRef != null;

  void _initializeFields() {
    _localizacao = snapshotData['Localizacao'] as String?;
    _nomeUsina = snapshotData['Nome_Usina'] as String?;
    _numeroTurbinas = castToType<int>(snapshotData['Numero_Turbinas']);
    _potenciaUsina = castToType<double>(snapshotData['Potencia_usina']);
    _usuRef = getDataList(snapshotData['usuRef']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Eng_Usinas');

  static Stream<EngUsinasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EngUsinasRecord.fromSnapshot(s));

  static Future<EngUsinasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EngUsinasRecord.fromSnapshot(s));

  static EngUsinasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EngUsinasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EngUsinasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EngUsinasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EngUsinasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EngUsinasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEngUsinasRecordData({
  String? localizacao,
  String? nomeUsina,
  int? numeroTurbinas,
  double? potenciaUsina,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Localizacao': localizacao,
      'Nome_Usina': nomeUsina,
      'Numero_Turbinas': numeroTurbinas,
      'Potencia_usina': potenciaUsina,
    }.withoutNulls,
  );

  return firestoreData;
}

class EngUsinasRecordDocumentEquality implements Equality<EngUsinasRecord> {
  const EngUsinasRecordDocumentEquality();

  @override
  bool equals(EngUsinasRecord? e1, EngUsinasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.localizacao == e2?.localizacao &&
        e1?.nomeUsina == e2?.nomeUsina &&
        e1?.numeroTurbinas == e2?.numeroTurbinas &&
        e1?.potenciaUsina == e2?.potenciaUsina &&
        listEquality.equals(e1?.usuRef, e2?.usuRef);
  }

  @override
  int hash(EngUsinasRecord? e) => const ListEquality().hash([
        e?.localizacao,
        e?.nomeUsina,
        e?.numeroTurbinas,
        e?.potenciaUsina,
        e?.usuRef
      ]);

  @override
  bool isValidKey(Object? o) => o is EngUsinasRecord;
}
