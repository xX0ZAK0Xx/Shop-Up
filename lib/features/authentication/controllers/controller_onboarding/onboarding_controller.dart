import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopup/features/authentication/screens/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //Variables
  final pageController = PageController();
  Rx<int> currentPage = 0.obs;

  //Update Current Index when page scroll
  void updatePageIndicator(index) => currentPage.value = index;

  //Jump to the specific dot selected Page
  void dotNavigationClick(index) {
    currentPage.value = index;
    pageController.jumpTo(index);
  }

  //Update Current Index and Jump to previous page
  void previousPage() {
    if (currentPage.value != 0) {
      int page = currentPage.value - 1;
      currentPage.value = page;
      pageController.jumpToPage(page);
    }
  }
  //Update Current Index and Jump to next page
  void nextPage() {
    if (currentPage.value == 2) {
      Get.offAll(()=>const LoginScreen());
    }else {
      int page = currentPage.value + 1;
      currentPage.value = page;
      pageController.jumpToPage(page);
    }
  }

  //Update Current Index and Jump to last page
  void skipPage() {
    currentPage.value = 2;
    pageController.jumpToPage(2);
  }
}
