

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'styles.dart';


///検索
class SearchBar extends StatelessWidget {
  const SearchBar({
    @required this.controller,
    @required this.focusNode,
});

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          color: Styles.searchBackground,
          borderRadius: BorderRadius.circular(10),
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 8,
        ),
        child: Row(
          children: [
            const Icon(
              CupertinoIcons.search,
              color: Styles.searchCursorColor,
            ),
            Expanded(
                child: CupertinoTextField(
                  controller: controller,
                  focusNode: focusNode,
                  style: Styles.searchText,
                  cursorColor: Styles.searchCursorColor,
                ),
            ),
            GestureDetector(///ジェスターの検索
              onTap: controller.clear,
              child: const Icon(
                CupertinoIcons.clear_thick_circled,
                color: Styles.searchIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
