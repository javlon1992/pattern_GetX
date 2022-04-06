import 'package:get/get.dart';
import 'package:patterns_getx/model/post_model.dart';
import 'package:patterns_getx/services/http_service.dart';

class Home2Controller extends GetxController {
  var isLoading = false.obs;
  var items = [].obs;

  @override
  void onInit() {
    super.onInit();
    apiPostList();
  }

  void apiPostList() async {
    isLoading.value = true;
    var response = await Network.GET(Network.API_LIST, Network.paramsEmpty());
    if (response != null) {
      items.value = Network.parsePostList(response);
    } else {
      items.value = [];
    }
    isLoading.value = false;
  }

  void apiPostDelete(Post post) async {
    isLoading.value = true;
    var response = await Network.DEL(Network.API_DELETE + post.id.toString(), Network.paramsEmpty());
    if (response != null) {
      apiPostList();
    }
  }
}