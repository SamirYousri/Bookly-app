// ignore_for_file: file_names

import 'package:bookly/Core/utils/app_router.dart';
import 'package:bookly/Core/utils/asset_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        bottom: 20,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            height: 19,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(
                AppRouter.kSearchView,
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
