class ItemData {
  ItemData(
    this.title,
    this.imgUrl,
  );

  final String title;
  final String imgUrl;
}

final List<ItemData> items = [
  ItemData("Kotlin",
      "https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/58132f9ec9484a5ba728a5c04071cad3~tplv-k3u1fbpfcp-watermark.image?"),
  ItemData("Jetpack",
      "https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/592b53c532ef458c945d3400a612d7dc~tplv-k3u1fbpfcp-watermark.image?"),
  ItemData("Flutter",
      "https://p9-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/04d31e46137f4981b7aaa6f6c83f1cc1~tplv-k3u1fbpfcp-watermark.image?")
];
