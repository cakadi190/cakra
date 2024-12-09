class NavigationTapModel {
  final String label;
  final String image;
  final Function() onTapTarget;
  final bool? isUnknown;

  NavigationTapModel({
    required this.label,
    required this.image,
    required this.onTapTarget,
    this.isUnknown,
  });
}

