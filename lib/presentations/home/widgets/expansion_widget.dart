import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_tour/injection.dart';
import 'package:riverpod_tour/models/exercise.dart';
import 'package:riverpod_tour/models/workout.dart';
import 'package:riverpod_tour/presentations/home/widgets/youtube_widget.dart';
import 'package:riverpod_tour/repositories/iapp_repository.dart';

class ExpansionWidget extends StatefulWidget {
  const ExpansionWidget({super.key, required this.workout, this.onStart});
  final Workout workout;
  final Function()? onStart;
  @override
  State<ExpansionWidget> createState() => _ExpansionWidgetState();
}

class _ExpansionWidgetState extends State<ExpansionWidget>
    with AutomaticKeepAliveClientMixin {
  final IAppRepository _appRepository = getIt<IAppRepository>();
  List<Exercise>? excerciseList;
  Timer? _timer;
  int _duration = 0;
  Future<List<Exercise>> fetchExcercise() async {
    final data = await _appRepository.getExerciseByWorkout(widget.workout.id!);
    return data.rows?.toList() ?? <Exercise>[];
  }

  Future<void> onPrepare() async {
    excerciseList = await fetchExcercise();

    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ExpansionTile(
      title: Text("${widget.workout.title}"),
      expandedAlignment: Alignment.topLeft,
      onExpansionChanged: (value) => onPrepare(),
      children: [
        if (excerciseList == null)
          const Center(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularProgressIndicator(),
          )),
        ...?excerciseList?.map((e) => _buildItem(e)),
      ],
    );
  }

  Widget _buildItem(Exercise item) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Bài tập: ${item.title ?? "aaa"}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              GestureDetector(
                  onTap: () async {
                    await showDialogCounter(item.duration ?? 30);
                    _timer?.cancel();
                  },
                  child: const Icon(Icons.play_circle_outline, size: 40))
            ],
          ),
          Text("Prelude: ${item.prelude ?? ""}",
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
          Text("Thời gian: ${item.duration ?? ""}",
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
          item.link != null && item.link!.isNotEmpty
              ? YoutubeWidget(
                  link: item.link ??
                      "https://www.youtube.com/watch?v=bNKXxwOQYB8")
              : const Text("Chưa có video cho bài tập này")
        ],
      )),
    );
  }

  Future<void> showDialogCounter(int duration) {
    _duration = duration;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => StatefulBuilder(builder: (context, setState) {
        return Dialog(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height * .3,
            child: Stack(
              children: [
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: CircularProgressIndicator(
                            value: _duration / duration,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "${(_duration ~/ 60).round()} : ${(_duration % 60)}",
                            style: const TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _timer?.cancel();
                              _timer = timerHandler(setState);
                            },
                            child: const Text("Bắt đầu")),
                        const SizedBox(width: 16),
                        ElevatedButton(
                            onPressed: () {
                              print("click dung ne" + _duration.toString());
                              if (_duration != 0) return;
                              if (_timer != null) {
                                _timer?.cancel();
                                _timer = null;
                              }
                              _duration = duration;
                              _timer = timerHandler(setState);
                            },
                            child: const Text("Dừng lại"))
                      ],
                    ),
                  ],
                )),
                GestureDetector(
                    onTap: context.popRoute,
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.close)),
                    ))
              ],
            ),
          ),
        );
      }),
    );
  }

  Timer timerHandler(void Function(void Function()) setState) {
    return Timer.periodic(const Duration(seconds: 1), (value) {
      if (_duration == 0) {
        _timer?.cancel();
        Navigator.pop(context);
      }
      setState(() {
        _duration--;
      });
    });
  }

  @override
  bool get wantKeepAlive => true;
}
