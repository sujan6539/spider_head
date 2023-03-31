class Pharma {
  String name;
  String tag;
  String codeName;
  PharmaType pharmaType;

  Pharma(this.name, this.tag, this.codeName, this.pharmaType);
}

enum PharmaType {
  G_46_LAFFODI,
  B_15_VERBALUCE,
  N_40_LUVACTIN,
  I_16_DARKENFLOXX,
  I_27_PHOBICA,
  B_6_OBEDIEX
}

List<Pharma> pharmaList = [
  Pharma("Verbaluce", "123223", "B-15", PharmaType.B_15_VERBALUCE),
  Pharma("Luvactin", "123234", "N-40", PharmaType.N_40_LUVACTIN),
  Pharma("Obediex", "456456", "B-6", PharmaType.B_6_OBEDIEX),
  Pharma("Phobica", "125674", "I-27", PharmaType.I_27_PHOBICA),
  Pharma("Darkenfloxx", "145645", "I-16", PharmaType.I_16_DARKENFLOXX),
];