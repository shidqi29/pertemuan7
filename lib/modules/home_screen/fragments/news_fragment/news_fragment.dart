import 'package:flutter/material.dart';
import '../../../../models/news.dart';
import '../news_fragment/news_fragment_widget.dart';
import '../../../../data/news_data.dart';

class NewsFragment extends StatelessWidget {
  const NewsFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const ListTile(
            title: Text("News Article",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
        Column(
            children: newsList
                .map((News news) => NewsFragmentWidget(news: news))
                .toList())
      ],
    );
  }
}


// class NewsFragmentWidget{
//   static latestNewsCard(Size size, int i) {
//     return NewsFragment(size: size, i: i);
//   }

//   static latestNewsSection(Size size) {
//     return LatestNewsSection(size: size);
//   }
// }

// class NewsFragment extends StatelessWidget {
//   const NewsFragment({
//     super.key,
//     required this.size,
//     required this.i,
//   });

//   final Size size;
//   final int i;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(
//               8,
//             ),
//             color: Colors.white,
//             boxShadow: const [
//               BoxShadow(
//                 spreadRadius: 1,
//                 color: Colors.black12,
//               ),
//             ],
//           ),
//           child: InkWell(
//             onTap: () {
//               GoRouter.of(context).goNamed(
//                 AppRoutes.newsDetail,
//                 params: {
//                   "id": i.toString(),
//                 },
//               );
//             },
//             child: Row(
//               children: [
//                 SizedBox(
//                   width: size.width * 0.25,
//                   child: ClipRRect(
//                     borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(8),
//                       bottomLeft: Radius.circular(8),
//                     ),
//                     child: AspectRatio(
//                       aspectRatio: 1 / 1,
//                       child: Image.network(
//                         "https://picsum.photos/200",
//                       ),
//                     ),
//                   ),
//                 ),
//                 Flexible(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       "${i + 1}. Laboris fugiat eiusmod consequat aliqua eiusmod.",
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 4,
//         ),
//       ],
//     );
//   }
// }

// class LatestNewsSection extends StatelessWidget {
//   const LatestNewsSection({
//     super.key,
//     required this.size,
//   });

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         for (int i = 0; i < 10; i++)
//           NewsFragment(
//             size: size,
//             i: i,
//           ),
//       ],
//     );
//   }
// }

// class NewsFragment extends StatelessWidget {
//   const NewsFragment({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text("News Fragment"),
//       ),
//     );
//   }
// }
