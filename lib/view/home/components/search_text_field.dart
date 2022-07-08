import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../../../../core/remote/api/viewmodels/word_viewmodels.dart';
import '../../../../feature/components/textfields.dart';
import '../../view_search_result.dart';
import '../controller/text_controller.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextController textController = TextController();
    final WordViewModelAPI _wordViewModel = WordViewModelAPI();
    return Expanded(
      child: CustomTextField(
        controller: textController.search,
        icon: const Icon(Icons.search),
        onTap: () => {
          if (textController.search.text == "" ||
              textController.search.text == " ")
            {
              debugPrint("ahaaaaaaaaaaa!"),
            }
          else
            {
              wordInfo = _wordViewModel.fetchData(textController.search.text),
              Get.to(const SearchResultView()),
              textController.search.clear(),
            },
        },
      ),
    );
  }
}