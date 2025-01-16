import 'package:flutter/material.dart';
import 'package:main/view/makanan.dart';

List<String> menu = <String>[
  'ALL',
  'FOOD',
  'BEVERAGES',
];

class ListNamaView extends StatefulWidget {
  const ListNamaView({super.key});

  @override
  _ListNamaViewState createState() => _ListNamaViewState();
}

class _ListNamaViewState extends State<ListNamaView> {
  String _selectedCategory = 'ALL';
  String _searchQuery = '';

  @override
  Widget build(BuildContext context){
    final filteredMenu = foodie.where((item){
      final isCategoryMatch = _selectedCategory == 'ALL' ||
                              (_selectedCategory == 'FOOD' && item.category == 'food') ||
                              (_selectedCategory == 'BEVERAGES' && item.category == 'beverage');
      final isSearchMatch = item.name.toLowerCase().contains(_searchQuery.toLowerCase());
      return isCategoryMatch && isSearchMatch;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 61, 41),
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Food',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.0,
                  ),
                ),
                Text(
                  '&',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(232, 213, 156, 1),
                    height: 1.0,
                  ),
                ),
                Text(
                  'Beverages',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.0,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  'images/appbarMenu/hand.png',
                  height: 50,
                ),
                Image.asset(
                  'images/appbarMenu/popcorn.png',
                  height: 50,
                ),
              ],
            ),
          ]
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: _selectedCategory,
                  items: menu.map((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue){
                    if(newValue != null){
                      setState(() {
                        _selectedCategory = newValue;
                      });
                    }
                  },
                ),
                SizedBox(
                  width: 150,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      suffixIcon: Icon(Icons.search),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.8,
              ),
              itemCount: filteredMenu.length,
              itemBuilder: (context, index) {
                final item = filteredMenu[index];
                return GestureDetector(
                  onTap: () => _showItemDetail(context, item),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            item.picture,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                item.harga,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showItemDetail(BuildContext context, Makanan item) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(item.picture),
              SizedBox(height: 16),
              Text(
                item.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                item.harga,
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class NarrowLayout extends StatelessWidget {
//   const NarrowLayout({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MakananList(
//       onFoodTap: (ciak) => Navigator.of(context).push(MaterialPageRoute(
//         builder: (context) => Scaffold(
//           appBar: AppBar(),
//           body: MakananDetail(ciak),
//           ),
//         ),),);
//   }
// }

// 

// class _WideLayoutState extends State<WideLayout> {
//   Makanan? _food;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         SizedBox(
//           width: 300,
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: MakananList(
//               onFoodTap: (ciak) => setState(() => _food = ciak),
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 3,
//           child: _food == null ? const Placeholder() : MakananDetail(_food!),
//         ),
//       ],
//     );
//   }
// }

