

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'model/app_state_model.dart';
import 'product_row_item.dart';

///製品リスト
class ProductListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///providerパッケージ、状態管理を支援
    return Consumer<AppStateModel>(///再ビルドしたい物だけにConsumerをつける
      builder: (context, model, child){
        final products = model.getProducts();
        return  CustomScrollView(
          semanticChildCount: products.length,
          slivers: <Widget>[
            const CupertinoSliverNavigationBar(
              largeTitle: Text('Cupertino Store'),
            ),
            SliverSafeArea(
                top: false,
                minimum: const EdgeInsets.only(top: 8),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index < products.length) {
                        return ProductRowItem(
                          index: index,
                          product: products[index],
                          lastItem: index == products.length - 1,
                        );
                      }
                      return null;
                    },
                ),
            ),
            )
          ],
        );
      },
    );
  }
}
