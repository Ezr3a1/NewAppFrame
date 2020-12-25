
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

/// 网络图片缓存
class PacteraCachedNetworkImage extends StatefulWidget {
  String image;
  BoxFit fit;
  double height;
  double width;
  String error;

  @override
  State<StatefulWidget> createState() {
    return _PacteraCachedNetworkImageState();
  }

  PacteraCachedNetworkImage({
    this.image,
    this.fit,
    this.height,
    this.width,
    this.error,
  });
}

class _PacteraCachedNetworkImageState extends State<PacteraCachedNetworkImage> {
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: widget.image ?? "　",
      height: widget.height,
      width: widget.width,
      placeholder: (context, url) => Container(
        width: widget.width,
        height: widget.height,
        child: Image.asset("images/img_loding1.png"),
      ),
      errorWidget: (context, str, a) {
        return Container(
          width: widget.width,
          height: widget.height,
          child: Image.asset("images/img_Loadfailed.png"),
        );
      },
      fit: widget.fit,
    );
  }
}
