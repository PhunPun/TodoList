
import 'package:baitap1/apps/router/router_name.dart';
import 'package:baitap1/pages/libary_system/manager_page.dart';
import 'package:baitap1/pages/libary_system/system_manager.dart';
import 'package:baitap1/pages/verify_password/forgot_password_page.dart';
import 'package:baitap1/pages/welcome/splash_page.dart';
import 'package:baitap1/pages/welcome/get_started.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class RouterCustum{
  static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: RouterName.splash,
      builder: (BuildContext context, GoRouterState state) {
        return ForgotPasswordPage();
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
    GoRoute(
      path: '/getstarted',
      name: RouterName.getstarted,
      builder: (BuildContext context, GoRouterState state) {
        return const GetStarted();
      },
    ),
    GoRoute(
      path: '/systemmanager',
      name: RouterName.systemmanager,
      builder: (BuildContext context, GoRouterState state) {
        return const SystemManager();
      },
    ),
    GoRoute(
      path: '/manager',
      name: RouterName.manager,
      builder: (BuildContext context, GoRouterState state) {
        return const ManagerPage();
      },
    ),
  ],
);
}