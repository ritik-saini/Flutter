import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'quote.dart';
void main()=>runApp(MaterialApp(home: QuoteList(),));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes=[
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken.'),
    Quote(author: 'Paulo Coelho', text: 'Impossible is just an opinion.'),
    Quote(author: 'Margaret Atwood', text: "In the end, we'll all become stories.")
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(14.0, 18.0, 14.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black38
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
