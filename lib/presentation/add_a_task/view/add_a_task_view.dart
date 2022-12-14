import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_build_context.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_date_time.dart';
import 'package:m_todo_app_tutorial/domain/models/reminder_model.dart';
import '../../../app/components/my_elevated_button.dart';
import '../../../app/components/my_form_field.dart';
import '../../../app/components/my_text.dart';

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
    dateController.text = DateFormat("yyyy-MM-dd").format(DateTime.now());
    startTimeController.text = DateFormat("hh:mm a").format(DateTime.now());
    endTimeController.text = DateFormat("hh:mm a").format(DateTime.now());

    dateController.text = DateFormat("yyyy-MM-dd").format(DateTime.now());
    startTimeController.text = DateFormat("hh:mm a").format(DateTime.now());
    endTimeController.text = DateFormat("hh:mm a")
        .format(DateTime.now().add(const Duration(minutes: 10)));

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
                    DateTime? dateSelected = await context.showMyDatePicker();
                    // send dateSelected Cubit
                    if (dateSelected != null) {
                      dateController.text = dateSelected.dateToString();
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
                          TimeOfDay? timeSelected =
                              await context.showMyTimePicker();

                          // send time selected to cubit
                          if (!mounted) {
                            return;
                          }
                          if (timeSelected != null) {
                            startTimeController.text =
                                timeSelected.format(context);
                          }
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
                          TimeOfDay? timeSelected =
                              await context.showMyTimePicker();

                          // send time selected to cubit
                          if (!mounted) {
                            return;
                          }
                          if (timeSelected != null) {
                            endTimeController.text =
                                timeSelected.format(context);
                          }
                        },
                        onSaved: (newValue) {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MyText(
                      title: "Reminder",
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<int>(
                        value: 0,
                        decoration: InputDecoration(
                          fillColor: Colors.grey[200],
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                  color: Colors.green, width: 2)),
                        ),
                        items: [
                          ...reminderList
                              .map((value) => DropdownMenuItem(
                                    value: value.reminder,
                                    child: Text(value.title),
                                  ))
                              .toList()
                        ],
                        onChanged: (int? value) {
                          debugPrint(value.toString());
                        }),
                  ],
                ),
              ],
            )),
            const SizedBox(height: 16),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyText(
                  title: "Select Color",
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      useRootNavigator: true,
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Center(child: Text("Select Color")),
                        content: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        context.back();
                                      },
                                      icon: const Icon(Icons.arrow_back)),
                                ],
                              ),
                              ColorPicker(
                                pickerColor: Colors.red,
                                onColorChanged: (color) {
                                  debugPrint(color.toString());
                                },
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          MyElevatedButton(
                            title: "Save",
                            onPressed: () {
                              context.back();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                  child: Container(
                    width: context.width,
                    height: 10,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            MyElevatedButton(
              title: 'Add A Task',
              onPressed: () {},
            ),
            const SizedBox(height: 16),
          ],
        ),
      )),
    );
  }

  List<ReminderModel> reminderList = [
    ReminderModel(reminder: 0, title: "None"),
    ReminderModel(reminder: 30, title: "30 Minute Before"),
    ReminderModel(reminder: 60, title: "60 Minute Before"),
    ReminderModel(reminder: 60 * 24, title: "1 Day"),
  ];
}
