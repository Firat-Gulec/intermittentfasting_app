import 'package:flutter/material.dart';
import 'package:intermittentfasting_app/features/onboard/view/splash_screen.dart';

import 'package:intermittentfasting_app/features/questionnaire/view/questionnaire_view.dart';
import '../../../features/onboard/view/onboarding_page.dart';

import 'navigation_constants.dart';


class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.DEFAULT:
        return normalNavigate(
            // const SplashScreen(title: 'Splash Screen'), NavigationConstants.DEFAULT);
            //SplashScreen(title: 'RXS'),
            SplashScreen(title: 'RXS'),
            NavigationConstants.DEFAULT);
            
      case NavigationConstants.ON_BOARD:
        return normalNavigate(Onboarding_View(), NavigationConstants.ON_BOARD);

    case NavigationConstants.QUESTIONNAIRE:
        return normalNavigate(
            const QuestionnaireView(), NavigationConstants.QUESTIONNAIRE);
 /* 
            case NavigationConstants.PROFILE_SIGNUP:
        return normalNavigate(
            const RegisterForm(), NavigationConstants.PROFILE_SIGNUP);
       
      case NavigationConstants.ON_BOARD:
        return normalNavigate(
            const WelcomeView(), NavigationConstants.ON_BOARD);
 
      case NavigationConstants.QUESTIONNAIRE:
        return normalNavigate(
            const WelcomeSurveyView(), NavigationConstants.QUESTIONNAIRE);

      case NavigationConstants.HOME_VIEW:
        return normalNavigate(const HomeView(), NavigationConstants.HOME_VIEW);

      case NavigationConstants.CALENDAR:
        return normalNavigate(
            const CalendarView(), NavigationConstants.CALENDAR);

      case NavigationConstants.ADDTASKVIEW:
        return normalNavigate(
          AddTaskView(model: args.arguments as String),
          NavigationConstants.ADDTASKVIEW,
        );*/

      default:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(title: 'test',),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
        builder: (context) => widget,
        //??????
        settings: RouteSettings(name: pageName));
  }
}
