import 'package:flutter/material.dart';

// A function to return a BoxDecoration based on screen width
BoxDecoration getContainerDecoration(BuildContext context) {
  var width = MediaQuery.of(context).size.width;

  if (width > 600) {
    return BoxDecoration(
      color: Colors.green,
    );
  } else {
    return BoxDecoration(
      color: Colors.red, // Provide a default decoration for smaller widths
    );
  }
}
