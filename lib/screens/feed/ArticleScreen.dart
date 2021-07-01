import 'package:flutter/material.dart';
import 'package:qatar22/screens/feed/Data/data.dart';

class ArticleScreen extends StatefulWidget {
  final Article article;
  const ArticleScreen({Key? key, required this.article}) : super(key: key);
  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(widget.article.image),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.article.category,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            widget.article.time,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 5,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.article.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            widget.article.authorImg,
                            height: 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.article.description,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
//                      fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
