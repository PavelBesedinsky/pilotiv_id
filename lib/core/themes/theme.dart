import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4287965440),
      surfaceTint: Color(4289606144),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292099840),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4288953369),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294938476),
      onSecondaryContainer: Color(4282781440),
      tertiary: Color(4285815552),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4291667754),
      onTertiaryContainer: Color(4280950528),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294965494),
      onBackground: Color(4280817426),
      surface: Color(4294965494),
      onSurface: Color(4280817426),
      surfaceVariant: Color(4294958032),
      onSurfaceVariant: Color(4284235831),
      outline: Color(4287721317),
      outlineVariant: Color(4293312178),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4282330150),
      inverseOnSurface: Color(4294962664),
      inversePrimary: Color(4294948254),
      primaryFixed: Color(4294958032),
      onPrimaryFixed: Color(4281993984),
      primaryFixedDim: Color(4294948254),
      onPrimaryFixedVariant: Color(4286915584),
      secondaryFixed: Color(4294958032),
      onSecondaryFixed: Color(4281993984),
      secondaryFixedDim: Color(4294948254),
      onSecondaryFixedVariant: Color(4286850306),
      tertiaryFixed: Color(4294959242),
      onTertiaryFixed: Color(4280556032),
      tertiaryFixedDim: Color(4293640772),
      onTertiaryFixedVariant: Color(4283909120),
      surfaceDim: Color(4294169546),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963693),
      surfaceContainer: Color(4294961635),
      surfaceContainerHigh: Color(4294959834),
      surfaceContainerHighest: Color(4294761683),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4286456320),
      surfaceTint: Color(4289606144),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292099840),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4286456320),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4290924845),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283646208),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287525120),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294965494),
      onBackground: Color(4280817426),
      surface: Color(4294965494),
      onSurface: Color(4280817426),
      surfaceVariant: Color(4294958032),
      onSurfaceVariant: Color(4283972660),
      outline: Color(4286011471),
      outlineVariant: Color(4287984489),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4282330150),
      inverseOnSurface: Color(4294962664),
      inversePrimary: Color(4294948254),
      primaryFixed: Color(4292099840),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4289343488),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4290924845),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4288756247),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287525120),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285618432),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4294169546),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963693),
      surfaceContainer: Color(4294961635),
      surfaceContainerHigh: Color(4294959834),
      surfaceContainerHighest: Color(4294761683),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4282715648),
      surfaceTint: Color(4289606144),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4286456320),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282715648),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286456320),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281082112),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283646208),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294965494),
      onBackground: Color(4280817426),
      surface: Color(4294965494),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4294958032),
      onSurfaceVariant: Color(4281671191),
      outline: Color(4283972660),
      outlineVariant: Color(4283972660),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4282330150),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4294961120),
      primaryFixed: Color(4286456320),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283962624),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4286456320),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283962624),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283646208),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281871104),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4294169546),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963693),
      surfaceContainer: Color(4294961635),
      surfaceContainerHigh: Color(4294959834),
      surfaceContainerHighest: Color(4294761683),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294948254),
      surfaceTint: Color(4294948254),
      onPrimary: Color(4284356352),
      primaryContainer: Color(4292099840),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4294948254),
      onSecondary: Color(4284356352),
      secondaryContainer: Color(4285865728),
      onSecondaryContainer: Color(4294952114),
      tertiary: Color(4294627409),
      onTertiary: Color(4282199808),
      tertiaryContainer: Color(4291667754),
      onTertiaryContainer: Color(4280950528),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4280225547),
      onBackground: Color(4294761683),
      surface: Color(4280225547),
      onSurface: Color(4294761683),
      surfaceVariant: Color(4284235831),
      onSurfaceVariant: Color(4293312178),
      outline: Color(4289563006),
      outlineVariant: Color(4284235831),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294761683),
      inverseOnSurface: Color(4282330150),
      inversePrimary: Color(4289606144),
      primaryFixed: Color(4294958032),
      onPrimaryFixed: Color(4281993984),
      primaryFixedDim: Color(4294948254),
      onPrimaryFixedVariant: Color(4286915584),
      secondaryFixed: Color(4294958032),
      onSecondaryFixed: Color(4281993984),
      secondaryFixedDim: Color(4294948254),
      onSecondaryFixedVariant: Color(4286850306),
      tertiaryFixed: Color(4294959242),
      onTertiaryFixed: Color(4280556032),
      tertiaryFixedDim: Color(4293640772),
      onTertiaryFixedVariant: Color(4283909120),
      surfaceDim: Color(4280225547),
      surfaceBright: Color(4282987566),
      surfaceContainerLowest: Color(4279831046),
      surfaceContainerLow: Color(4280817426),
      surfaceContainer: Color(4281146134),
      surfaceContainerHigh: Color(4281869856),
      surfaceContainerHighest: Color(4282658858),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294949798),
      surfaceTint: Color(4294948254),
      onPrimary: Color(4281403392),
      primaryContainer: Color(4294924058),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294949798),
      onSecondary: Color(4281403392),
      secondaryContainer: Color(4293291077),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294627409),
      onTertiary: Color(4280884736),
      tertiaryContainer: Color(4291667754),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4280225547),
      onBackground: Color(4294761683),
      surface: Color(4280225547),
      onSurface: Color(4294965752),
      surfaceVariant: Color(4284235831),
      onSurfaceVariant: Color(4293575350),
      outline: Color(4290812816),
      outlineVariant: Color(4288576369),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294761683),
      inverseOnSurface: Color(4281869856),
      inversePrimary: Color(4287046912),
      primaryFixed: Color(4294958032),
      onPrimaryFixed: Color(4280812800),
      primaryFixedDim: Color(4294948254),
      onPrimaryFixedVariant: Color(4285012480),
      secondaryFixed: Color(4294958032),
      onSecondaryFixed: Color(4280812800),
      secondaryFixedDim: Color(4294948254),
      onSecondaryFixedVariant: Color(4285012480),
      tertiaryFixed: Color(4294959242),
      onTertiaryFixed: Color(4279701504),
      tertiaryFixedDim: Color(4293640772),
      onTertiaryFixedVariant: Color(4282659840),
      surfaceDim: Color(4280225547),
      surfaceBright: Color(4282987566),
      surfaceContainerLowest: Color(4279831046),
      surfaceContainerLow: Color(4280817426),
      surfaceContainer: Color(4281146134),
      surfaceContainerHigh: Color(4281869856),
      surfaceContainerHighest: Color(4282658858),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294965752),
      surfaceTint: Color(4294948254),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949798),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965752),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294949798),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966006),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293903944),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4280225547),
      onBackground: Color(4294761683),
      surface: Color(4280225547),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4284235831),
      onSurfaceVariant: Color(4294965752),
      outline: Color(4293575350),
      outlineVariant: Color(4293575350),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294761683),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4283634432),
      primaryFixed: Color(4294959320),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294949798),
      onPrimaryFixedVariant: Color(4281403392),
      secondaryFixed: Color(4294959320),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294949798),
      onSecondaryFixedVariant: Color(4281403392),
      tertiaryFixed: Color(4294960544),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293903944),
      onTertiaryFixedVariant: Color(4280096000),
      surfaceDim: Color(4280225547),
      surfaceBright: Color(4282987566),
      surfaceContainerLowest: Color(4279831046),
      surfaceContainerLow: Color(4280817426),
      surfaceContainer: Color(4281146134),
      surfaceContainerHigh: Color(4281869856),
      surfaceContainerHighest: Color(4282658858),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  /// VK Theme
  static const vKTheme = ExtendedColor(
    seed: Color(4278220799),
    value: Color(4278220799),
    light: ColorFamily(
      color: Color(4278209704),
      onColor: Color(4294967295),
      colorContainer: Color(4278218735),
      onColorContainer: Color(4294967295),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(4278209704),
      onColor: Color(4294967295),
      colorContainer: Color(4278218735),
      onColorContainer: Color(4294967295),
    ),
    lightHighContrast: ColorFamily(
      color: Color(4278209704),
      onColor: Color(4294967295),
      colorContainer: Color(4278218735),
      onColorContainer: Color(4294967295),
    ),
    dark: ColorFamily(
      color: Color(4289644287),
      onColor: Color(4278201962),
      colorContainer: Color(4278218734),
      onColorContainer: Color(4294967295),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(4289644287),
      onColor: Color(4278201962),
      colorContainer: Color(4278218734),
      onColorContainer: Color(4294967295),
    ),
    darkHighContrast: ColorFamily(
      color: Color(4289644287),
      onColor: Color(4278201962),
      colorContainer: Color(4278218734),
      onColorContainer: Color(4294967295),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        vKTheme,
      ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
