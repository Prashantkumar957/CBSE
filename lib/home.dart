import 'package:flutter/material.dart';
import 'pdf.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> chapters = [
    {"title": "Chapter 1", "path": "assets/pdf1.pdf"},
    {"title": "Chapter 2", "path": "assets/pdf2.pdf"},
    {"title": "Chapter 3", "path": "assets/pdf3.pdf"},
    {"title": "Chapter 4", "path": "assets/pdf4.pdf"},
    {"title": "Chapter 5", "path": "assets/pdf5.pdf"},
    {"title": "Chapter 6", "path": "assets/pdf6.pdf"},
    {"title": "Chapter 7", "path": "assets/pdf7.pdf"},
    {"title": "Chapter 8", "path": "assets/pdf8.pdf"},
    {"title": "Chapter 9", "path": "assets/pdf9.pdf"},
    {"title": "Chapter 10", "path": "assets/pdf10.pdf"},
    {"title": "Chapter 11", "path": "assets/pdf11.pdf"},
    {"title": "Chapter 12", "path": "assets/pdf12.pdf"},
    {"title": "Chapter 13", "path": "assets/pdf13.pdf"},
    {"title": "Chapter 14", "path": "assets/pdf14.pdf"},
    {"title": "Chapter 15", "path": "assets/pdf15.pdf"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CBSE Class 10",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        elevation: 10,
      ),
      body: Container(

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.grey[200]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(16.0),
          itemCount: chapters.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                title: Text(
                  chapters[index]["title"]!,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800],
                  ),
                ),
                trailing: Icon(
                  Icons.picture_as_pdf,
                  color: Colors.red,
                  size: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PdfViewerScreen(pdfPath: chapters[index]["path"]!),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}