import 'dart:js';

import 'package:flutter/material.dart';
import 'package:projeto_cripto_moedas/configs/app_settings.dart';
import 'package:projeto_cripto_moedas/meuaplicativo.dart';
import 'package:projeto_cripto_moedas/repositories/favoritas_repository.dart';
import 'package:provider/provider.dart';

import 'hive_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.start();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => AppSettings(),
      ),
      ChangeNotifierProvider(
        create: (context) => FavoritasRepository(),
      ),
    ],
    child: MeuAplicativo(),
  ));
}
