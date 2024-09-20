import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class PageviewItem extends StatelessWidget {
  const PageviewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title,
  });

  final String image, backgroundImage;
  final String subtitle;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('تخط'),
              ),
              title,
              Text(
                subtitle,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ],
    );
  }
}
