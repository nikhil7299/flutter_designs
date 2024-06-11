import 'package:flutter/material.dart';

extension UIThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  //textTheme
  TextStyle? get bl =>
      theme.textTheme.bodyLarge?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get bm =>
      theme.textTheme.bodyMedium?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get bs =>
      theme.textTheme.bodySmall?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get dl =>
      theme.textTheme.displayLarge?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get dm =>
      theme.textTheme.displayMedium?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get ds =>
      theme.textTheme.displaySmall?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get hl =>
      theme.textTheme.headlineLarge?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get hm =>
      theme.textTheme.headlineMedium?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get hs =>
      theme.textTheme.headlineSmall?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get ll =>
      theme.textTheme.labelLarge?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get lm =>
      theme.textTheme.labelMedium?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get ls =>
      theme.textTheme.labelSmall?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get tl =>
      theme.textTheme.titleLarge?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get tm =>
      theme.textTheme.titleMedium?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get ts =>
      theme.textTheme.titleSmall?.copyWith(overflow: TextOverflow.ellipsis);
  //primaryTextTheme
  TextStyle? get pbl => theme.primaryTextTheme.bodyLarge
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get pbm => theme.primaryTextTheme.bodyMedium
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get pbs => theme.primaryTextTheme.bodySmall
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get pdl => theme.primaryTextTheme.displayLarge
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get pdm => theme.primaryTextTheme.displayMedium
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get pds => theme.primaryTextTheme.displaySmall
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get phl => theme.primaryTextTheme.headlineLarge
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get phm => theme.primaryTextTheme.headlineMedium
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get phs => theme.primaryTextTheme.headlineSmall
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get pll => theme.primaryTextTheme.labelLarge
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get plm => theme.primaryTextTheme.labelMedium
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get pls => theme.primaryTextTheme.labelSmall
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get ptl => theme.primaryTextTheme.titleLarge
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get ptm => theme.primaryTextTheme.titleMedium
      ?.copyWith(overflow: TextOverflow.ellipsis);
  TextStyle? get pts => theme.primaryTextTheme.titleSmall
      ?.copyWith(overflow: TextOverflow.ellipsis);
}
