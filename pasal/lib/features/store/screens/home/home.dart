import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:pasal/features/store/screens/home/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PPrimaryHeaderContainer(
                child: Column(
              children: [PHomeAppBar()],
            )),
          ],
        ),
      ),
    );
  }
}
