// import 'package:flutter/material.dart';

// class MyListView extends StatelessWidget {
//   final List<String> items = List.generate(20, (index) => 'Item $index');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ListView Builder Example'),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           if (index.isOdd) {
//             // For odd indices, return a single row
//             return ListTile(
//               title: Text(items[index]),
//             );
//           } else {
//             // For even indices, return two rows in a Column
//             return Column(
//               children: [
//                 ListTile(
//                   title: Text(items[index]),
//                 ),
//                 ListTile(
//                   title: Text('Second Row'),
//                 ),
//               ],
//             );
//           }
//         },
//       ),
//     );
//   }
// }


// // https://cdn.myanimelist.net/images/anime/4/19644.jpg
// // https://cdn.myanimelist.net/images/anime/6/73245.jpg