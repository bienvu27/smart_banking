import 'package:flutter/material.dart';


class AppBarComponent extends StatelessWidget with PreferredSizeWidget {
  const AppBarComponent({
    super.key, required this.title, required this.callback,
  });
  final String title;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.w600, fontSize: 18, color: Colors.red),
      ),
      leading: InkWell(
        onTap: () => callback(),
        child: const Icon(
          Icons.arrow_back_ios_new_outlined,
          size: 20,
          color: Colors.black,
        ),
      ),
      elevation: 0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
