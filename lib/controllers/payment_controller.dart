import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:patterns_getx/model/post_model.dart';
import 'package:patterns_getx/services/http_service.dart';

class PaymentController extends GetxController {
  var isLoading = false;
  var items = [];

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