import 'package:house_trade/house_trade_library.dart';
import 'package:google_fonts/google_fonts.dart';

final kColorSchema = ColorScheme.fromSeed(
  seedColor: const Color(0xFF252B5C),
);

abstract class ThemeConfig {
  static ThemeData theme = ThemeData().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: kColorSchema.background,
    colorScheme: kColorSchema,
    textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
      titleSmall: GoogleFonts.ubuntuCondensed(
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.ubuntuCondensed(
        fontWeight: FontWeight.bold,
      ),
      titleLarge: GoogleFonts.ubuntuCondensed(
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
