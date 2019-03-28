import 'package:flutter/material.dart';
import 'module/products_repository.dart';
import 'module/product.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FENGKEYI'),
        leading: IconButton(
            icon: Icon(Icons.menu,
                semanticLabel: 'menu',),
            onPressed: (){
              print('menu button');
            }
            ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search button',
            ),
            onPressed: (){
              print('search buttom');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: (){
              print('filter button');
            },
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0/9.0,
        children: _buildGridCards(context),
      )
    );
  }

  List<Card> _buildGridCards(BuildContext context)
 {

   List<Product> products = ProductsRepository.loadProducts(Category.all);

   if(products==null || products.isEmpty) {
     return const <Card>[];
   }

   final ThemeData theme = Theme.of(context);
   final NumberFormat format = NumberFormat.currency(
      locale: Localizations.localeOf(context).toString()
   );

   return products.map((Product p){
      return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 18.0/11.0,
                  child: Image.asset(p.assetsName,
                  package: p.packagesName,
                  fit: BoxFit.fitWidth,),
                ),
                Expanded(
                child:Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(p.name,
                        maxLines: 1,
                          style: theme.textTheme.title,
                        ),
                        SizedBox(height: 12.0,),
                        Text(format.format(p.price),
                          style: theme.textTheme.body2,
                        ),
                      ],
                  ),
                ),
                ),
              ],
            ),
      );
   }).toList();

  }
}