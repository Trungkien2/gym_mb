import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:riverpod_tour/presentations/home/home_viewmodel.dart';
import 'package:riverpod_tour/presentations/home/widgets/expansion_widget.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  TextEditingController workoutController = TextEditingController();
  late final controller = SlidableController(this);
  TextEditingController exerciseTitleController = TextEditingController();
  TextEditingController excercisePreludeController = TextEditingController();
  TextEditingController excerciseDurationController = TextEditingController();
  TextEditingController excerciseLinkController = TextEditingController();

  @override
  void dispose() {
    workoutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final watch = ref.watch(homeViewModelProvider.call(context.hashCode));
    final read =
        ref.read(homeViewModelProvider.call(context.hashCode).notifier);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('App Fitness'),
        actions: const [],
      ),
      body: Center(
        child: watch.when(
            data: (data) => ListView.builder(
                  itemBuilder: (context, index) => Slidable(
                    endActionPane:
                        ActionPane(motion: const ScrollMotion(), children: [
                      SlidableAction(
                        flex: 1,
                        onPressed: (_) {
                          final id = data.workouts!.rows![index].id!;
                          read.onDeleteWorkout(id);
                          // controller.openEndActionPane();
                        },
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Xoá',
                      ),
                    ]),
                    child: ExpansionWidget(
                      workout: data.workouts!.rows![index],
                    ),
                  ),
                  itemCount: data.workouts?.rows?.length ?? 0,
                ),
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const CircularProgressIndicator()),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              heroTag: null,
              child: const Icon(Icons.add),
              onPressed: () {
                showCreateDialog(context, onCreate: (value) async {
                  read.onCreateWorkout(workoutController.text);
                  workoutController.clear();
                  await context.popRoute();
                  await showExerciseDialog(onCreate: () async {
                    await read.onCreateExercise(
                        exerciseTitleController.text,
                        int.parse(excercisePreludeController.text),
                        excerciseLinkController.text,
                        int.parse(excerciseDurationController.text));
                    clearExerciseFields();
                  });
                  read.onClear();
                });
              }),
        ],
      ),
    );
  }

  void clearExerciseFields() {
    exerciseTitleController.clear();
    excercisePreludeController.clear();
    excerciseLinkController.clear();
    excerciseDurationController.clear();
    FocusScope.of(context).unfocus();
  }

  Future<void> showCreateDialog(BuildContext context,
      {required Function(String) onCreate}) {
    return showDialog(
        context: context,
        builder: (context) => Dialog(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  TextFormField(
                    controller: workoutController,
                    decoration:
                        const InputDecoration(label: Text("Tên workout")),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                      onPressed: () => onCreate(workoutController.text),
                      child: const Text("Tạo"))
                ]),
              ),
            ));
  }

  Future<void> showExerciseDialog({required Function() onCreate}) {
    return showDialog(
        context: context,
        builder: (context) => Dialog(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: exerciseTitleController,
                      decoration:
                          const InputDecoration(label: Text("Tên bài tập")),
                    ),
                    TextFormField(
                      controller: excercisePreludeController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(label: Text("Prelude")),
                    ),
                    TextFormField(
                      controller: excerciseDurationController,
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(label: Text("Thời gian")),
                    ),
                    TextFormField(
                      controller: excerciseLinkController,
                      decoration: const InputDecoration(
                        label: Text("Hướng dẫn"),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                        onPressed: () => onCreate(), child: const Text("Tạo"))
                  ],
                ),
              ),
            ));
  }
}
