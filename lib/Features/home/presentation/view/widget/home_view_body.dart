import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/view/widget/app_bar_home.dart';
import 'package:bookly/Features/home/presentation/view/widget/horizontal_listView.dart';
import 'package:bookly/Features/home/presentation/view/widget/vertical_listView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                HorizontalListView(),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: VerticalListView(),
          ),
        ],
      ),
    );
  }
}
