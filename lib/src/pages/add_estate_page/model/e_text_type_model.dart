enum TextType {
  normalText,
  boldText;
}

class TextTypeModel {
  const TextTypeModel({
    required this.textType,
    required this.text,
    this.fontSize = 32,
  });

  final TextType textType;
  final String text;
  final double fontSize;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextTypeModel &&
          runtimeType == other.runtimeType &&
          textType == other.textType &&
          text == other.text &&
          fontSize == other.fontSize;

  @override
  int get hashCode => textType.hashCode ^ text.hashCode ^ fontSize.hashCode;

  @override
  String toString() {
    return 'TextTypeModel{textType: $textType, text: $text, fontSize: $fontSize}';
  }
}
