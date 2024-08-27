import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const HomePageWidget() : const LogginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const HomePageWidget() : const LogginWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'Signup',
          path: '/signup',
          builder: (context, params) => const SignupWidget(),
        ),
        FFRoute(
          name: 'RestorPassword',
          path: '/restorPassword',
          builder: (context, params) => const RestorPasswordWidget(),
        ),
        FFRoute(
          name: 'MenuAdmin',
          path: '/menuAdmin',
          builder: (context, params) => const MenuAdminWidget(),
        ),
        FFRoute(
          name: 'Loggin',
          path: '/loggin',
          builder: (context, params) => const LogginWidget(),
        ),
        FFRoute(
          name: 'MenuClient',
          path: '/menuClient',
          builder: (context, params) => const MenuClientWidget(),
        ),
        FFRoute(
          name: 'NewProduct',
          path: '/newProduct',
          builder: (context, params) => const NewProductWidget(),
        ),
        FFRoute(
          name: 'SingleProduct',
          path: '/singleProduct',
          builder: (context, params) => const SingleProductWidget(),
        ),
        FFRoute(
          name: 'ProductList',
          path: '/productList',
          builder: (context, params) => const ProductListWidget(),
        ),
        FFRoute(
          name: 'EditProduct',
          path: '/editProduct',
          builder: (context, params) => const EditProductWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => const ProfileWidget(),
        ),
        FFRoute(
          name: 'PreBuildPC',
          path: '/preBuildPC',
          builder: (context, params) => const PreBuildPCWidget(),
        ),
        FFRoute(
          name: 'SaveBuildPC',
          path: '/saveBuildPC',
          builder: (context, params) => const SaveBuildPCWidget(),
        ),
        FFRoute(
          name: 'MyBuilds',
          path: '/myBuilds',
          builder: (context, params) => const MyBuildsWidget(),
        ),
        FFRoute(
          name: 'prueba',
          path: '/prueba',
          builder: (context, params) => const PruebaWidget(),
        ),
        FFRoute(
          name: 'RYZEN7700',
          path: '/ryzen7700',
          builder: (context, params) => const Ryzen7700Widget(),
        ),
        FFRoute(
          name: 'PreBuildPCCopy',
          path: '/preBuildPCCopy',
          builder: (context, params) => const PreBuildPCCopyWidget(),
        ),
        FFRoute(
          name: 'vistaProceAM5',
          path: '/vistaProceAM5',
          builder: (context, params) => const VistaProceAM5Widget(),
        ),
        FFRoute(
          name: 'vistaTarjetaMadreAM5',
          path: '/vistaTarjetaMadreAM5',
          builder: (context, params) => const VistaTarjetaMadreAM5Widget(),
        ),
        FFRoute(
          name: 'vistaProceAM4',
          path: '/vistaProceAM4',
          builder: (context, params) => const VistaProceAM4Widget(),
        ),
        FFRoute(
          name: 'vistaTarjetaMadreAM4',
          path: '/vistaTarjetaMadreAM4',
          builder: (context, params) => const VistaTarjetaMadreAM4Widget(),
        ),
        FFRoute(
          name: 'vistaCasesAM5',
          path: '/vistaCasesAM5',
          builder: (context, params) => const VistaCasesAM5Widget(),
        ),
        FFRoute(
          name: 'vistaCasesAM4',
          path: '/vistaCasesAM4',
          builder: (context, params) => const VistaCasesAM4Widget(),
        ),
        FFRoute(
          name: 'editProfile',
          path: '/editProfile',
          builder: (context, params) => const EditProfileWidget(),
        ),
        FFRoute(
          name: 'ProcessorNew',
          path: '/processorNew',
          builder: (context, params) => const ProcessorNewWidget(),
        ),
        FFRoute(
          name: 'ProcessorEdit',
          path: '/processorEdit',
          asyncParams: {
            'processor': getDoc(['procesador'], ProcesadorRecord.fromSnapshot),
          },
          builder: (context, params) => ProcessorEditWidget(
            processor: params.getParam(
              'processor',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'GpuNew',
          path: '/gpuNew',
          builder: (context, params) => const GpuNewWidget(),
        ),
        FFRoute(
          name: 'RamNew',
          path: '/ramNew',
          builder: (context, params) => const RamNewWidget(),
        ),
        FFRoute(
          name: 'CaseNew',
          path: '/caseNew',
          builder: (context, params) => const CaseNewWidget(),
        ),
        FFRoute(
          name: 'MotherboardNew',
          path: '/motherboardNew',
          builder: (context, params) => const MotherboardNewWidget(),
        ),
        FFRoute(
          name: 'PsuNew',
          path: '/psuNew',
          builder: (context, params) => const PsuNewWidget(),
        ),
        FFRoute(
          name: 'StorageNew',
          path: '/storageNew',
          builder: (context, params) => const StorageNewWidget(),
        ),
        FFRoute(
          name: 'ProcessorList',
          path: '/processorList',
          builder: (context, params) => const ProcessorListWidget(),
        ),
        FFRoute(
          name: 'RamList',
          path: '/ramList',
          builder: (context, params) => const RamListWidget(),
        ),
        FFRoute(
          name: 'StorageList',
          path: '/storageList',
          builder: (context, params) => const StorageListWidget(),
        ),
        FFRoute(
          name: 'PsuList',
          path: '/psuList',
          builder: (context, params) => const PsuListWidget(),
        ),
        FFRoute(
          name: 'GpuList',
          path: '/gpuList',
          builder: (context, params) => const GpuListWidget(),
        ),
        FFRoute(
          name: 'MotherboardList',
          path: '/motherboardList',
          builder: (context, params) => const MotherboardListWidget(),
        ),
        FFRoute(
          name: 'PsuEdit',
          path: '/psuEdit',
          asyncParams: {
            'psu': getDoc(['psu'], PsuRecord.fromSnapshot),
          },
          builder: (context, params) => PsuEditWidget(
            psu: params.getParam(
              'psu',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'RamEdit',
          path: '/ramEdit',
          asyncParams: {
            'ram': getDoc(['ram'], RamRecord.fromSnapshot),
          },
          builder: (context, params) => RamEditWidget(
            ram: params.getParam(
              'ram',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'StorageEdit',
          path: '/storageEdit',
          asyncParams: {
            'storage': getDoc(['storage'], StorageRecord.fromSnapshot),
          },
          builder: (context, params) => StorageEditWidget(
            storage: params.getParam(
              'storage',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'MotherboardEdit',
          path: '/motherboardEdit',
          asyncParams: {
            'motherboard': getDoc(['mother'], MotherRecord.fromSnapshot),
          },
          builder: (context, params) => MotherboardEditWidget(
            motherboard: params.getParam(
              'motherboard',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'GpuEdit',
          path: '/gpuEdit',
          asyncParams: {
            'gpu': getDoc(['gpu'], GpuRecord.fromSnapshot),
          },
          builder: (context, params) => GpuEditWidget(
            gpu: params.getParam(
              'gpu',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'CaseEdit',
          path: '/caseEdit',
          asyncParams: {
            'pcCase': getDoc(['casepc'], CasepcRecord.fromSnapshot),
          },
          builder: (context, params) => CaseEditWidget(
            pcCase: params.getParam(
              'pcCase',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'CaseList',
          path: '/caseList',
          builder: (context, params) => const CaseListWidget(),
        ),
        FFRoute(
          name: 'OurRecomendations',
          path: '/ourRecomendations',
          builder: (context, params) => const OurRecomendationsWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/loggin';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
