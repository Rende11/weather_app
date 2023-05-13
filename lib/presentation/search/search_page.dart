import 'package:flutter/material.dart';
import 'package:weather_app/presentation/home/widgets/current_location.dart';
import 'package:weather_app/presentation/search/widgets/past_search_block.dart';

import './widgets/search_text_field.dart';
import '../../navigation/app_router.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  final _pastSearchCities = ["London", "Moscow", "Paris"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: () => appRouter.goBack(context),
        icon: const Icon(Icons.close, color: Color.fromRGBO(122, 122, 122, 1)),
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Get Weather', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 32),
          SearchTextField(
            controller: _controller,
            focusNode: _focusNode,
            onTap: () => setState(() {}),
            onCloseTap: () => setState(() {
              _controller.clear();
              _focusNode.unfocus();
            }),
          ),
          const SizedBox(height: 32),
          const CurrentLocationWidget(),
          const SizedBox(height: 24),
          const Divider(
            thickness: 1,
          ),
          PastSearchBlock(
              pastSearchCities: _pastSearchCities,
              onClearAllTap: () {
                print("CLEAR ALL");
              })
        ]),
      ),
    );
  }
}
