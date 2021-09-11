import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipe_viewer/ui/recipes/utils/app_colors.dart';
import 'package:recipe_viewer/ui/recipes/utils/text_styles.dart';

class DetailsAppBar extends StatefulWidget {
  final ScrollController scrollController;
  final String title;
  final String imageUrl;
  const DetailsAppBar(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.scrollController})
      : super(key: key);

  @override
  _DetailsAppBarState createState() => _DetailsAppBarState();
}

class _DetailsAppBarState extends State<DetailsAppBar> {
  bool _isDark = true;
  @override
  void initState() {
    super.initState();
    final controller = widget.scrollController;
    controller.addListener(() {
      if (controller.offset > 250 && _isDark) {
        setState(() => _isDark = false);
        print(controller.offset);
      } else if (controller.offset < 250 && !_isDark) {
        setState(() => _isDark = true);
        print(controller.offset);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      brightness: _isDark ? Brightness.dark : Brightness.light,
      leadingWidth: 56,
      title: Text(
        widget.title,
        style: _isDark
            ? TextStyles.title
            : TextStyles.title.copyWith(color: AppColors.black),
      ),
      leading: Container(
        margin: const EdgeInsets.only(left: 16),
        child: RawMaterialButton(
          onPressed: Navigator.of(context).pop,
          elevation: 0,
          fillColor: AppColors.backgroundGrey,
          child: Icon(Icons.arrow_back),
          shape: CircleBorder(),
        ),
      ),
      floating: true,
      pinned: true,
      expandedHeight: 350,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: widget.imageUrl,
              fit: BoxFit.fitHeight,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.15, 0.4],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
