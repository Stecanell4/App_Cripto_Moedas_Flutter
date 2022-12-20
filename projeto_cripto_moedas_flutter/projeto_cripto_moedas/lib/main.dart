import 'dart:js';

import 'package:flutter/material.dart';
import 'package:projeto_cripto_moedas/meuaplicativo.dart';
import 'package:projeto_cripto_moedas/repositories/favoritas_repository.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => FavoritasRepository(),
    child: MeuAplicativo(),
  ));
}
