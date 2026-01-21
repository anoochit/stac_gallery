import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: "hello_world")
StacWidget helloWorld() {
  return StacScaffold(
    extendBodyBehindAppBar: true,
    body: StacDynamicView(
      request: StacNetworkRequest(
        url: 'https://picsum.photos/v2/list?page=3&limit=10',
      ),
      template: StacWidget.fromJson(template),
    ),
  );
}

const template = {
  "type": "gridView",
  "crossAxisCount": 2,
  "childAspectRatio": 1,
  "itemTemplate": {
    "type": "card",
    "clipBehavior": "antiAliasWithSaveLayer",
    "child": {"src": "{{download_url}}", "fit": "cover", "type": "image"},
  },
};
