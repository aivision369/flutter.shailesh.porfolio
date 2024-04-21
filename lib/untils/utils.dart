import "dart:js" as js;

class Utils{

  static void launchWebPage(String url){
    js.context.callMethod('open', [url,'_new']);
  }
}