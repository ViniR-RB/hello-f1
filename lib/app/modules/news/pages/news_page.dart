import 'package:flutter/material.dart';
import 'package:hello_f1/app/core/theme/theme.dart';
import 'package:hello_f1/app/modules/news/widgets/card_news_category.dart';
import 'package:hello_f1/app/modules/news/widgets/news_card.dart';
import 'package:hello_f1/app/modules/news/widgets/news_card_row.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
            title: const Text("Noticias"),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Wrap(
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 12,
                children: [
                  ...[
                    "Todos",
                    "Equipes",
                    "Pilotos",
                    "Circuitos",
                  ].map((title) => CardNewsCategory(title: title)),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(padding: EdgeInsets.all(16.0), child: NewsCard()),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 20,
                bottom: 12,
              ),
              child: Text(
                "Noticias Recentes",
                style: Theme.of(context).textStyles.displayLarge.copyWith(
                  color: Theme.of(context).colors.colorText,
                ),
              ),
            ),
          ),
          SliverPrototypeExtentList.builder(
            itemBuilder: (context, index) => NewsCardRow(),
            prototypeItem: NewsCardRow(),
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}
