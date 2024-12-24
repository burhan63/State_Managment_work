import 'package:class_works/home/home_view.dart';
import 'package:class_works/profile/profile_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: ProfileView)
  ],
  dependencies: [Singleton(classType: NavigationService)],
)
class App {}
