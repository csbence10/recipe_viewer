import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_viewer/data/common/theme_provider.dart';
import 'package:recipe_viewer/ui/recipes/utils/app_colors.dart';
import 'package:recipe_viewer/ui/recipes/utils/text_styles.dart';

class DetailsAppBar extends StatefulWidget {
  final ScrollController? scrollController;
  final String title;
  final String imageUrl;
  const DetailsAppBar(
      {Key? key,
      required this.title,
      required this.imageUrl,
      this.scrollController})
      : super(key: key);

  @override
  _DetailsAppBarState createState() => _DetailsAppBarState();
}

class _DetailsAppBarState extends State<DetailsAppBar> {
  bool _shouldChangeToDark = true;
  @override
  void initState() {
    super.initState();
    final controller = widget.scrollController;
    controller?.addListener(() {
      if (controller.offset > 250 && _shouldChangeToDark) {
        setState(() => _shouldChangeToDark = false);
        print(controller.offset);
      } else if (controller.offset < 250 && !_shouldChangeToDark) {
        setState(() => _shouldChangeToDark = true);
        print(controller.offset);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Consumer(
      builder: (context, ref, child) {
        final isDarkMode = ref.watch(appThemeProvider).isDark;
        final brightnessIfDark =
            _shouldChangeToDark ? Brightness.dark : Brightness.light;
        final lightStyle = TextStyles.appBar.copyWith(color: AppColors.white);
        final styleIfDark =
            _shouldChangeToDark ? lightStyle : TextStyles.appBar;
        return SliverAppBar(
          brightness: isDarkMode ? Brightness.dark : brightnessIfDark,
          leadingWidth: 56,
          title:
              Text(widget.title, style: isDarkMode ? lightStyle : styleIfDark),
          leading: Container(
            margin: const EdgeInsets.only(left: 16),
            child: RawMaterialButton(
              onPressed: Navigator.of(context).pop,
              elevation: 0,
              fillColor: theme.backgroundColor,
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
      },
    );
  }
}
