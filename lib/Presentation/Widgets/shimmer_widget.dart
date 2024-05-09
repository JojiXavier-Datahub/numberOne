import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? baseColor;
  final Color? highlightColor;

  const ShimmerWidget(
      {Key? key, this.height, this.width, this.baseColor, this.highlightColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? Colors.white,
      highlightColor: highlightColor ?? Colors.grey.shade300,
      enabled: true,
      child: Container(
        color: Colors.white,
        height: height ?? MediaQuery.of(context).size.height,
        width: width ?? MediaQuery.of(context).size.width,
      ),
    );
  }
}
class ShimmerCardList extends StatelessWidget {
  final int itemCount;
  final double? cardHeight;

  const ShimmerCardList({super.key, required this.itemCount,  this.cardHeight});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection:Axis.vertical ,

      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height:cardHeight ?? 200,
            width: MediaQuery.sizeOf(context).width,
            child: Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.grey[100]!,
              enabled: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    title: Container(
                      height: 12, // Customize the height of the shimmer
                      color: Colors.white, // Customize the shimmer color
                    ),
                    subtitle: Container(
                      height: 12, // Customize the height of the shimmer
                      color: Colors.white, // Customize the shimmer color
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}