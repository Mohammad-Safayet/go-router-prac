import 'package:flutter/material.dart';
import 'package:go_router_prac/widgets/app_bar.dart';

class ProductsDetailsPage extends StatelessWidget {
  const ProductsDetailsPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  final String content =
      "Morbi a sem aliquet, laoreet sem eget, ultrices augue. Vivamus vitae molestie metus, a placerat lorem. Maecenas ultricies quam porta libero feugiat tincidunt. Curabitur feugiat ligula eget eros sodales luctus. Nam nisl sapien, sagittis commodo lacus et, porta tempus enim. Maecenas nisl ante, fermentum quis eleifend nec, fermentum id enim. Nunc congue quam elit, in egestas urna ultrices non. Nullam tincidunt, diam eu porta egestas, felis purus ullamcorper dui, in ullamcorper purus ante in eros. Aenean vel bibendum ex. Morbi pharetra sem a odio pretium ornare. Sed et purus velit. Pellentesque aliquet neque lobortis volutpat iaculis.\nSed elementum massa non congue efficitur. Vivamus viverra sollicitudin finibus. Curabitur gravida metus in interdum convallis. Phasellus malesuada magna ut felis aliquam porta. Fusce finibus nec urna sed eleifend. Nulla placerat nisi elementum gravida ultrices. Integer mattis bibendum dignissim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pretium eros a augue pharetra, ac tempus risus lacinia. Phasellus dolor sem, tincidunt in sapien et, condimentum cursus est. Aenean metus nisl, suscipit vitae mattis vitae, malesuada vitae ex. Duis eu massa eu lorem tincidunt ornare. Nunc dictum ante orci, non maximus orci interdum et.\nPellentesque non urna in sem rutrum elementum vitae et turpis. Phasellus rutrum magna et elit ultricies, sit amet rutrum sem mollis. Etiam tincidunt ex eget velit consectetur faucibus. Nam pellentesque faucibus vestibulum. Etiam volutpat ipsum augue, in pretium erat posuere at. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam vel mauris libero. Sed ac eros ante. Curabitur vitae aliquam neque. Ut ac efficitur sapien, et aliquet lorem. Mauris vulputate libero a tortor dapibus, vel pharetra sem pretium. Morbi vel sagittis massa, vel commodo odio. Aenean sit amet porta dui, vitae varius dolor.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationBar(
        child: Text(title),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16.0),
          color: Theme.of(context).colorScheme.background,
          child: Text(
            content,
          ),
        ),
      ),
    );
  }
}
