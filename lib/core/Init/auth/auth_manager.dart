import 'package:flutter/material.dart';

import '../cache/cache_manager.dart';






class AuthenticationManager extends CacheManager {
  BuildContext context;
  AuthenticationManager({
    required this.context,
  }) {
    fetchUserLogin();
  }
  bool isLogin = false;


  Future<void> fetchUserLogin() async {
    final token = await getUserLogin();
    if (token != null) {
      isLogin = true;
    }
  }
}
