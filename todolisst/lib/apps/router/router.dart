
import 'package:baitap1/apps/router/router_name.dart';
import 'package:baitap1/pages/tuan2/bai_tap2.dart';
import 'package:baitap1/pages/tuan2/bai_th2.dart';
import 'package:baitap1/pages/tuan3/baitap_3.dart';
import 'package:baitap1/pages/tuan3/baitap_ui.dart';
import 'package:baitap1/pages/tuan3/btvn3.dart';
import 'package:baitap1/pages/tuan4/baitap_4.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class RouterCustum{
  static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: RouterName.baith1,
      builder: (BuildContext context, GoRouterState state) {
        return const Baitap4();
      },
      // routes: <RouteBase>[
      //   GoRoute(
      //     path: 'login',
      //     name: RouterName.login,
      //     builder: (BuildContext context, GoRouterState state) {
      //       return const LoginPage();
      //     },
      //     routes: [
      //       GoRoute(
      //         path: 'register',
      //         name: RouterName.register,
      //         builder: (BuildContext context, GoRouterState state) {
      //           return const RegisterPage();
      //         },
      //       ),
      //     ]
      //   ),
      // ],
    ),
  ],
);
}