import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_anime_app/presentation/cubits/anime_long_cubit.dart';
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
    super.initState();
    context.read<AnimeLongCubit>().onAnimeLong(widget.animeId);
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
                    height: 640,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 30,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: CachedNetworkImage(
                            imageUrl: state.anime.img!,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            color: Colors.black45,
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: CachedNetworkImage(
                            imageUrl: state.anime.img!,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(state.anime.headers!.ru!,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                            textAlign: TextAlign.center),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(state.anime.headers!.en!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                              textAlign: TextAlign.center)),
                      const SizedBox(height: 16),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 8),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Рейтинг"),
                                  Row(children: [
                                    const Icon(Icons.star),
                                    const SizedBox(width: 8),
                                    Text(
                                        "${state.anime.ratings!.rating!} (${state.anime.ratings!.votes!})",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1)
                                  ])
                                ]),
                            const SizedBox(width: 20),
                            Column(children: [
                              Text("Эпизод"),
                              Text(state.anime.sOption!),
                            ]),
                          ]),
                      const SizedBox(height: 20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Тип"),
                                  Text(state.anime.type!,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1)
                                ]),
                            const SizedBox(width: 20),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Продюсер"),
                                  InkWell(
                                    onTap: () => {},
                                    child: Text(state.anime.producer!,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1),
                                  )
                                ]),
                          ]),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.anime.screenshots!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: CachedNetworkImage(
                                    imageUrl: state.anime.screenshots![index],
                                    fit: BoxFit.fill,
                                  ));
                            }),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                          padding: const EdgeInsets.all(18),
                          child: Text(state.anime.description!,
                              style: const TextStyle(height: 1.9))),
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
