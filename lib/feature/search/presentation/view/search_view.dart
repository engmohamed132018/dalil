import 'package:dalil/core/functions/function.dart';
import 'package:dalil/feature/home/presentation/widgets/custom_title_widget.dart';
import 'package:dalil/feature/search/presentation/cubit/search_cubit.dart';
import 'package:dalil/feature/search/presentation/cubit/search_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utilits/app_size.dart';
import '../widgets/search_bar.dart';
import '../widgets/search_list_view_item.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSize.setWidth(16)),
      child: BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {},
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: customSizedBoxFromHieght(36),
              ),
              SliverToBoxAdapter(
                child: SeaechRowWidget(
                  onChanged: (value) {
                    context.read<SearchCubit>().searchData(valus: value);
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: customSizedBoxFromHieght(16),
              ),
              //!text recent
              SliverToBoxAdapter(
                child: CustomHeaderText(text: 'recent'),
              ),
              SliverToBoxAdapter(
                child: customSizedBoxFromHieght(16),
              ),
              SliverToBoxAdapter(
                child: Wrap(
                  children: state is SearchScusessValue
                      ? state.list.map(
                          (e) {
                            return SearchLIstViewItem(text: e);
                          },
                        ).toList()
                      : [
                          Container(),
                        ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
