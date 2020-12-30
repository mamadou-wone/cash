import 'package:fayma_cash/modals/onboard_info.dart';
import 'package:fayma_cash/views/start_page.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardController extends GetxController {
  final selectedIndex = 0.obs;
  final pageControler = PageController();

  bool get isLastPage => selectedIndex.value == onboard.length - 1;

  nextPage() {
    if (isLastPage) {
    } else {
      pageControler.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  start() {}

  List<OnboardInfo> onboard = [
    OnboardInfo("asstes/logo.png", "assets/femme.jpg",
        "Epargner,Envoyer et retier de l'agent  Partout dans le monde!"),
    OnboardInfo("asstes/logo.png", "assets/banco.jpg",
        "Gagner de l'argent Où que vous soyer !"),
    OnboardInfo("asstes/logo.png", "assets/bank.png",
        "Retirer vos gains, N'importe où , N'importe quand..."),
    OnboardInfo(
        "asstes/logo.png", "assets/cash.png", "Fayma Cash, Fayeeku Flash !"),
  ];
}
