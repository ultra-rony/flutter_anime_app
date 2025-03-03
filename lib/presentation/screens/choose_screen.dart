import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_app/generated/l10n.dart';
import 'package:flutter_anime_app/presentation/cubits/anime_long_cubit.dart';
import 'package:flutter_anime_app/presentation/widgets/media_details_widget.dart';
import 'package:flutter_anime_app/presentation/widgets/screenshots_widget.dart';
import 'package:flutter_anime_app/presentation/widgets/title_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ChooseScreen extends StatefulWidget {
  final String animeId;

  const ChooseScreen({
    super.key,
    required this.animeId,
  });

  @override
  State<StatefulWidget> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  void initState() {
    context.read<AnimeLongCubit>().onAnimeLong(widget.animeId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AnimeLongCubit>().state;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("№${widget.animeId}")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (state is AnimeLongDataState)
              Column(
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.6,
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: CachedNetworkImage(
                            imageUrl: state.anime.img ?? "",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            color: Colors.black45,
                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            margin: const EdgeInsets.all(30),
                            child: CachedNetworkImage(
                              imageUrl: state.anime.img ?? "",
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 16),
                      TitleWidget(title: state.anime.headers?.ru ?? ""),
                      const SizedBox(height: 8),
                      TitleWidget(title: state.anime.headers?.en ?? ""),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(S.of(context).rating_text),
                              Row(
                                children: [
                                  const Icon(Icons.star),
                                  const SizedBox(width: 8),
                                  Text(
                                    "${state.anime.ratings!.rating!} (${state.anime.ratings!.votes!})",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          MediaDetailsWidget(
                            title: S.of(context).episode_text,
                            value: state.anime.sOption ?? "",
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MediaDetailsWidget(
                            title: S.of(context).type_text,
                            value: state.anime.type ?? "",
                          ),
                          const SizedBox(width: 20),
                          MediaDetailsWidget(
                            title: S.of(context).producer_text,
                            value: state.anime.producer ?? "",
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ScreenshotsWidget(
                          screenshots: state.anime.screenshots ?? []),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(18),
                        child: Text(
                          state.anime.description ?? "",
                          style: const TextStyle(height: 1.9),
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
