import 'package:flutter/material.dart';
import 'package:booky/screens/main_screens/cart_screen/sub_screens/add_new_address_screen.dart';
import 'package:booky/screens/main_screens/cart_screen/sub_screens/select_payment_method_screen.dart';
import 'package:booky/screens/main_screens/cart_screen/sub_screens/shipping_address_screen.dart';
import 'package:booky/screens/main_screens/home_screen/sub_screens/add_to_cart_screen.dart';
import 'package:booky/screens/authentication_screens/forgot_password_screen/create_new_password.dart';
import 'package:booky/screens/authentication_screens/forgot_password_screen/enter_code_screen.dart';
import 'package:booky/screens/authentication_screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:booky/screens/authentication_screens/sign_in_screen.dart';
import 'package:booky/screens/authentication_screens/sign_up_screen.dart';
import 'package:booky/screens/main_screens/home_screen/sub_screens/fav_products_screen.dart';
import 'package:booky/screens/main_screens/home_screen/sub_screens/notification_screen.dart';
import 'package:booky/screens/main_screens/home_screen/sub_screens/products_by_category_screen.dart';
import 'package:booky/screens/main_screens/home_screen/sub_screens/see_all_offers_screen.dart';
import 'package:booky/screens/main_screens/main_app_screen.dart';
import 'package:booky/screens/main_screens/orders_screen/sub_screens/view_order_screen.dart';
import 'package:booky/screens/splash_screen.dart';
import 'package:booky/screens/welcome_screens/welcome_screen1.dart';
import 'package:booky/screens/welcome_screens/welcome_screen2.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arg = settings.arguments;

    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case WelcomeScreen1.routeName:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen1());

      case WelcomeScreen2.routeName:
        return MaterialPageRoute(builder: (context) => WelcomeScreen2());

      case SignInScreen.routeName:
        return MaterialPageRoute(builder: (context) => const SignInScreen());

      case SignUpScreen.routeName:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());

      case ForgotPasswordScreen.routeName:
        return MaterialPageRoute(
            builder: (context) => const ForgotPasswordScreen());

      case EnterCodeScreen.routeName:
        return MaterialPageRoute(builder: (context) => const EnterCodeScreen());

      case CreateNewPassword.routeName:
        return MaterialPageRoute(
            builder: (context) => const CreateNewPassword());

      case '/home':
        return MaterialPageRoute(
          builder: (context) => MainAppScreen(initialTabIndex: 0),
        );

      case MainAppScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => MainAppScreen(
            initialTabIndex: settings.arguments as int? ?? 0,
          ),
        );

      case SeeAllOffersScreen.routeName:
        return MaterialPageRoute(
            builder: (context) =>
                SeeAllOffersScreen(specialOffersImagesList: arg as List));

      case AddToCartScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => AddToCartScreen(product: arg),
        );

      case ProductsByCategoryScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => ProductsByCategoryScreen(),
          settings: settings,
        );

      case FavProductsScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const FavProductsScreen(),
        );

      case NotificationScreen.routeName:
        return MaterialPageRoute(
            builder: (context) => const NotificationScreen());

      case ShippingAddressScreen.routeName:
        return MaterialPageRoute(
            builder: (context) => const ShippingAddressScreen());

      case AddNewAddressScreen.routeName:
        return MaterialPageRoute(builder: (context) => AddNewAddressScreen());

      case SelectPaymentMethodScreen.routeName:
        return MaterialPageRoute(
            builder: (context) => const SelectPaymentMethodScreen());

      case ViewOrderScreen.routeName:
        return MaterialPageRoute(builder: (context) {
          Map<String, dynamic> args =
              settings.arguments as Map<String, dynamic>;
          return ViewOrderScreen(
            orderData: args,
          );
        });

      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
