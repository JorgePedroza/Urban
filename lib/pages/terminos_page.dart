import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class TerminosPage extends StatefulWidget {
  

  @override
  _TerminosPageState createState() => _TerminosPageState();
}

class _TerminosPageState extends State<TerminosPage> {
  
  bool _isLoading = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/sample.pdf');
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
            debugShowCheckedModeBanner: false,
          home: Scaffold(
          appBar: AppBar(
            title: const Text('Terminos y condiciones'),
          ),
          body: Center(
              child: _isLoading
                  ? Center(child: CircularProgressIndicator())
                  : PDFViewer(document: document, showPicker: false)),
        
      ),
    );
  }
}