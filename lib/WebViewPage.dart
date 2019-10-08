import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'CustomScaffoldAppBar.dart';
void main() => runApp(MaterialApp(home: WebViewPage("12","https://hiker-src.oss-cn-beijing.aliyuncs.com/course-test/%E9%98%BF%E9%87%8C%E5%B7%B4%E5%B7%B4Java%E5%BC%80%E5%8F%91%E6%89%8B%E5%86%8C%28%E7%BB%88%E6%9E%81%E7%89%88%29.pdf?Expires=1569323327&OSSAccessKeyId=TMP.hXEMYAo6h4ryQw3DgLEPWK6QrTxEnqFhEWX2e73tXf9NnTXA2sGr4irQ7p3TG9nKfftWcXS84fXHPe33NCWnU1CaABCbQRem3kFKuTV3pcLQDWvWdJUSnwFNBqhefA.tmp&Signature=uslFRxfpas9JkkJEbXhpu%2Fbls6Y%3D")));
class WebViewPage extends StatefulWidget {
  final String title;
  final String url;
  WebViewPage(this.title,this.url);
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();

  launchUrl() {
    setState(() {
      flutterWebviewPlugin.reloadUrl(widget.url);
    });
  }

  @override
  void initState() {
    super.initState();

    flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged wvs) {
      print(wvs.type);
    });
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: CustomScaffoldAppBar(widget.title),
      url: widget.url,
      withZoom: true,
      withJavascript: true,
        debuggingEnabled: true,
        bottomNavigationBar:InkWell(
          child: Text("anniu"),
          onTap: (){
            print("e11111111111111111111");
            flutterWebviewPlugin.evalJavascript('editor.getValue()').then((onValue){
              print(onValue);
            });
          },
        )
    );
  }
}