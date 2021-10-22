import 'package:flutter/material.dart';
import 'package:blog_app/models/blog_post.dart';
import 'package:intl/intl.dart';
import 'package:flutter_html/flutter_html.dart';

class BlogPostDetailsScreen extends StatefulWidget {
  final BlogPost blogPost;
  BlogPostDetailsScreen({this.blogPost});
  @override
  _BlogPostDetailsScreenState createState() => _BlogPostDetailsScreenState();
}

class _BlogPostDetailsScreenState extends State<BlogPostDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.blogPost.title),
      ),

      body: ListView(
        children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.network(this.widget.blogPost.feturedImageUrl),
              ),

              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(this.widget.blogPost.title),
              ),

              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  DateFormat("dd-MM-yyyy").format(
                    DateTime.parse(this.widget.blogPost.createdAt)),
                  style: TextStyle(
                    backgroundColor: Colors.black12, fontSize: 16.0),
                ),
              ),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Html(data: this.widget.blogPost.details,),), 
        ],
      ),
    );
  }
}