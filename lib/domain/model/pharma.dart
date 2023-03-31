import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pharma.freezed.dart';

// class Pharma {
//   String name;
//   String tag;
//   String codeName;
//   PharmaType pharmaType;
//
//   Pharma(this.name, this.tag, this.codeName, this.pharmaType);
// }

@freezed
class PharmaZ with _$PharmaZ {
  const factory PharmaZ({
    required String name,
    required String tag,
    required String codeName,
    required PharmaType pharmaType,
  }) = _PharmaZ;
}

enum PharmaType {
  G_46_LAFFODI,
  B_15_VERBALUCE,
  N_40_LUVACTIN,
  I_16_DARKENFLOXX,
  I_27_PHOBICA,
  B_6_OBEDIEX
}

List<PharmaZ> pharmaZList = [
  const PharmaZ(
      name: "Verbaluce",
      tag: "123223",
      codeName: "B-15",
      pharmaType: PharmaType.B_15_VERBALUCE),
  const PharmaZ(
      name: "Luvactin",
      tag: "123234",
      codeName: "N-40",
      pharmaType: PharmaType.N_40_LUVACTIN),
  const PharmaZ(
      name: "Obediex",
      tag: "456456",
      codeName: "B-6",
      pharmaType: PharmaType.B_6_OBEDIEX),
  const PharmaZ(
      name: "Phobica",
      tag: "125674",
      codeName: "I-27",
      pharmaType: PharmaType.I_27_PHOBICA),
  const PharmaZ(
      name: "Darkenfloxx",
      tag: "145645",
      codeName: "I-16",
      pharmaType: PharmaType.I_16_DARKENFLOXX),
];
