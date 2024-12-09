class NavigationTapModel {
  final String label;
  final String image;
  final Function() onTapTarget;

  NavigationTapModel({
    required this.label,
    required this.image,
    required this.onTapTarget,
  });
}
