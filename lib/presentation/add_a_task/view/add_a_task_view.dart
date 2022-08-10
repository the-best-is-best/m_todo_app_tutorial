import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../app/components/my_form_field.dart';

class AddATaskView extends StatefulWidget {
  const AddATaskView({Key? key}) : super(key: key);

  @override
  State<AddATaskView> createState() => _AddATaskViewState();
}

class _AddATaskViewState extends State<AddATaskView> {
  late final TextEditingController dateController;
  late final TextEditingController startTimeController;
  late final TextEditingController endTimeController;

  @override
  void initState() {
    dateController = TextEditingController();
    startTimeController = TextEditingController();
    endTimeController = TextEditingController();
<<<<<<< HEAD
    dateController.text = DateFormat("yyyy-MM-dd").format(DateTime.now());
    startTimeController.text = DateFormat("hh:mm a").format(DateTime.now());
    endTimeController.text = DateFormat("hh:mm a").format(DateTime.now());
=======

    dateController.text = DateFormat("yyyy-MM-dd").format(DateTime.now());
    startTimeController.text = DateFormat("hh:mm a").format(DateTime.now());
    endTimeController.text = DateFormat("hh:mm a")
        .format(DateTime.now().add(const Duration(minutes: 10)));

>>>>>>> episode-6-select-time-date
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add A Task"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 20) +
            const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Form(
                child: Column(
              children: [
                MyFormField(
                  title: "Title",
                  onSaved: (newValue) {},
                ),
                const SizedBox(height: 16),
                MyFormField(
                  title: "Description",
                  isMultiLine: true,
                  onSaved: (newValue) {},
                ),
                const SizedBox(height: 16),
                MyFormField(
                  controller: dateController,
                  title: "Date",
                  onTap: () async {
                    DateTime? dateSelected = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),

                        lastDate: DateTime(
                          DateTime.now().year + 10,
                        ));

                    // send dateSelected Cubit
                    if (dateSelected != null) {
                      dateController.text =
                          DateFormat("yyyy-MM-dd").format(dateSelected);
                    }
                  },
                  onSaved: (newValue) {},
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: MyFormField(
                        controller: startTimeController,
                        title: "Start Time",
                        onTap: () async {
                          TimeOfDay? timeSelected = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());

                          // send time selected to cubit
                          if (!mounted) {
                            return;
                          }
                          if (timeSelected != null) {
                            startTimeController.text =
                                timeSelected.format(context);
                          TimeOfDay? selectTime = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());
                          if (selectTime != null) {
                            if (!mounted) {
                              return;
                            }
                            startTimeController.text =
                                selectTime.format(context);
                          }}
                        },
                        onSaved: (newValue) {},
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: MyFormField(
                        controller: endTimeController,
                        title: "End Time",
                        onTap: () async {
                          TimeOfDay? timeSelected = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());

                          // send time selected to cubit
                          if (!mounted) {
                            return;
                          }
                          if (timeSelected != null) {
                            endTimeController.text =
                                timeSelected.format(context);
                          TimeOfDay? selectTime = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());
                          if (selectTime != null) {
                            if (!mounted) {
                              return;
                            }
                            endTimeController.text = selectTime.format(context);
                                                    }                          }
                        },
                        onSaved: (newValue) {},
                      ),
                    ),
                  ],
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
