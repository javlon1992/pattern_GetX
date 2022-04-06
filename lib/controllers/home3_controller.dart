import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http_package/http_package.dart';

class Home3Controller extends GetxController {
  var isLoading = false;
  var items = [];

  @override
  void onInit() {
    super.onInit();
    apiPostList();
  }

  void apiPostList() async {
    isLoading = true;
    update();

    var response = await Network.GET(Network.API_LIST, Network.paramsEmpty());
    if (response != null) {
      items = Network.parsePostList(response);
    } else {
      items = [];
    }
    isLoading = false;
    update();
  }

  void apiPostDelete(Post post) async {
    isLoading = true;
    update();

    var response = await Network.DEL(Network.API_DELETE + post.id.toString(), Network.paramsEmpty());
    if (response != null) {
      apiPostList();
    }
  }
}