import 'package:get/get.dart';

import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/cart_edit/bindings/cart_edit_binding.dart';
import '../modules/cart_edit/views/cart_edit_view.dart';
import '../modules/chat_room/bindings/chat_room_binding.dart';
import '../modules/chat_room/views/chat_room_view.dart';
import '../modules/dataGuru/bindings/data_guru_binding.dart';
import '../modules/dataGuru/views/data_guru_view.dart';
import '../modules/detailGuru/bindings/detail_guru_binding.dart';
import '../modules/detailGuru/views/detail_guru_view.dart';
import '../modules/favoriteGuru/bindings/favorite_guru_binding.dart';
import '../modules/favoriteGuru/views/favorite_guru_view.dart';
import '../modules/help/bindings/help_binding.dart';
import '../modules/help/views/help_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/information/bindings/information_binding.dart';
import '../modules/information/views/information_view.dart';
import '../modules/introduction/bindings/introduction_binding.dart';
import '../modules/introduction/views/introduction_view.dart';
import '../modules/location/bindings/location_binding.dart';
import '../modules/location/views/location_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/message/bindings/message_binding.dart';
import '../modules/message/views/message_view.dart';
import '../modules/payment/bindings/payment_binding.dart';
import '../modules/payment/views/payment_view.dart';
import '../modules/phone/bindings/phone_binding.dart';
import '../modules/phone/views/phone_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/schedule/bindings/schedule_binding.dart';
import '../modules/schedule/views/schedule_view.dart';
import '../modules/search/bindings/search_binding.dart';
import '../modules/search/views/search_view.dart';
import '../modules/search_message/bindings/search_message_binding.dart';
import '../modules/search_message/views/search_message_view.dart';
import '../modules/setting/bindings/setting_binding.dart';
import '../modules/setting/views/setting_view.dart';
import '../modules/sign/bindings/sign_binding.dart';
import '../modules/sign/views/sign_view.dart';
import '../modules/storyGuru/bindings/story_guru_binding.dart';
import '../modules/storyGuru/views/story_guru_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.SIGN,
      page: () => SignView(),
      binding: SignBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGE,
      page: () => MessageView(),
      binding: MessageBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_GURU,
      page: () => DetailGuruView(),
      binding: DetailGuruBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => const IntroductionView(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_ROOM,
      page: () => const ChatRoomView(),
      binding: ChatRoomBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_MESSAGE,
      page: () => SearchMessageView(),
      binding: SearchMessageBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE,
      page: () => const ScheduleView(),
      binding: ScheduleBinding(),
    ),
    GetPage(
      name: _Paths.INFORMATION,
      page: () => const InformationView(),
      binding: InformationBinding(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => const HelpView(),
      binding: HelpBinding(),
    ),
    GetPage(
      name: _Paths.PHONE,
      page: () => const PhoneView(),
      binding: PhoneBinding(),
    ),
    GetPage(
      name: _Paths.LOCATION,
      page: () => const LocationView(),
      binding: LocationBinding(),
    ),
    GetPage(
      name: _Paths.DATA_GURU,
      page: () => const DataGuruView(),
      binding: DataGuruBinding(),
    ),
    GetPage(
      name: _Paths.CART_EDIT,
      page: () => const CartEditView(),
      binding: CartEditBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => const PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE_GURU,
      page: () => const FavoriteGuruView(),
      binding: FavoriteGuruBinding(),
    ),
    GetPage(
      name: _Paths.STORY_GURU,
      page: () => const StoryGuruView(),
      binding: StoryGuruBinding(),
    ),
  ];
}
