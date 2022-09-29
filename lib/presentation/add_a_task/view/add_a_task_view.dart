import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:m_todo_app_tutorial/app/components/my_elevated_button.dart';
import 'package:m_todo_app_tutorial/app/constant/constant.dart';
import 'package:m_todo_app_tutorial/app/cubit/app_cubit.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_build_context.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_date_time.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_global_key.dart';
import 'package:m_todo_app_tutorial/domain/models/reminder_model.dart';
import '../../../app/components/my_form_field.dart';
import '../../../app/components/my_text.dart';
import '../../../app/constant/constant.dart';

class AddATaskView extends StatefulWidget {
  const AddATaskView({Key? key}) : super(key: key);

  @override
  State<AddATaskView> createState() => _AddATaskViewState();
}

class _AddATaskViewState extends State<AddATaskView> {
  late final TextEditingController dateController;
  late final TextEditingController startTimeController;
  late final TextEditingController endTimeController;
  late final GlobalKey<FormState> keyForm;
  @override
  void initState() {
    keyForm = GlobalKey<FormState>();
    dateController = TextEditingController();
    startTimeController = TextEditingController();
    endTimeController = TextEditingController();

    AppCubit appCubit = AppCubit.get(context);

    dateController.text = Constant.originalDateFormat.format(DateTime.now());
    appCubit.addDate(dateController.text);

    startTimeController.text =
        Constant.originalTimeFormat.format(DateTime.now());
    appCubit.addStartTime(startTimeController.text);

    endTimeController.text = Constant.originalTimeFormat
        .format(DateTime.now().add(const Duration(minutes: 10)));
    appCubit.addendTime(endTimeController.text);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppCubit appCubit = AppCubit.get(context);
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
                key: keyForm,
                child: Column(
                  children: [
                    MyFormField(
                      title: "Title",
                      onSaved: (title) {
                        appCubit.addTitle(title ?? "");
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Required";
                        } else if (value.length < 5) {
                          return "Character length < 5";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    MyFormField(
                      title: "Description",
                      isMultiLine: true,
                      onSaved: (desc) {
                        appCubit.addDescription(desc ?? "");
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Required";
                        } else if (value.length < 5) {
                          return "Character length < 5";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    MyFormField(
                      controller: dateController,
                      title: "Date",
                      onTap: () async {
                        DateTime? dateSelected =
                            await context.showMyDatePicker();
                        // send dateSelected Cubit
                        if (dateSelected != null) {
                          dateController.text = dateSelected.dateToString();
                        }
                        appCubit.addDate(dateController.text);
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: MyFormField(
                            controller: startTimeController,
                            title: "Start Time",
                            onTap: () async {
                              TimeOfDay? selectTime =
                                  await context.showMyTimePicker();
                              if (selectTime != null) {
                                if (!mounted) {
                                  return;
                                }
                                startTimeController.text =
                                    selectTime.format(context);

                                appCubit.addStartTime(startTimeController.text);
                              }
                            },
                            validator: (value) {
                              return appCubit.startTimeValidation();
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: MyFormField(
                            controller: endTimeController,
                            title: "End Time",
                            onTap: () async {
                              TimeOfDay? selectTime =
                                  await context.showMyTimePicker();
                              if (selectTime != null) {
                                if (!mounted) {
                                  return;
                                }
                                endTimeController.text =
                                    selectTime.format(context);

                                appCubit.addendTime(endTimeController.text);
                              }
                            },
                            validator: (value) {
                              return appCubit.endTimeValidation();
                            },
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
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
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
                                  .map((e) => DropdownMenuItem<int>(
                                      value: e.reminder,
                                      child: MyText(
                                        title: e.title,
                                      )))
                                  .toList()
                            ],
                            onChanged: (int? value) {
                              appCubit.addRemind(value ?? 0);
                            })
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyText(
                          title: "Select Your Color",
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 16),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Select Your Color"),
                                  content: SingleChildScrollView(
                                      child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                context.back();
                                              },
                                              icon: const Icon(
                                                Icons.arrow_back,
                                                size: 30,
                                              )),
                                        ],
                                      ),
                                      const SizedBox(height: 16),
                                      ColorPicker(
                                        pickerColor: Colors.red,
                                        onColorChanged: (value) {
                                          appCubit.addColor(value.toString());
                                        },
                                      ),
                                    ],
                                  )),
                                  actions: [
                                    MyElevatedButton(
                                      title: "Save",
                                      onPressed: () {
                                        // logic to save color
                                        context.back();
                                      },
                                    )
                                  ],
                                );
                              },
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
                      onPressed: () {
                        if (keyForm.isValid()) {
                          keyForm.save();
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                  ],
                ))
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
