import 'package:auto_route/annotations.dart';
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
    if (state is AnimeLongDataState) {
      print(state.anime.description);
    }
    return Scaffold(
      body: Center(
        child: Text("ChooseScreen"),
      ),
    );
  }
}
