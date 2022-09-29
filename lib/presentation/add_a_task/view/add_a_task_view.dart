import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
<<<<<<< HEAD
import 'package:m_todo_app_tutorial/app/cubit/app_cubit.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_build_context.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_date_time.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_form_state.dart';
import 'package:m_todo_app_tutorial/domain/models/reminder_model.dart';
import '../../../app/components/my_elevated_button.dart';
=======
import 'package:m_todo_app_tutorial/app/components/my_elevated_button.dart';
import 'package:m_todo_app_tutorial/app/constant/constant.dart';
import 'package:m_todo_app_tutorial/app/cubit/app_cubit.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_build_context.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_date_time.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_global_key.dart';
>>>>>>> episode-15-validation-3
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
<<<<<<< HEAD
  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
=======
  late final GlobalKey<FormState> keyForm;
  @override
  void initState() {
    keyForm = GlobalKey<FormState>();
>>>>>>> episode-15-validation-3
    dateController = TextEditingController();
    startTimeController = TextEditingController();
    endTimeController = TextEditingController();

    AppCubit appCubit = AppCubit.get(context);

    dateController.text = Constant.originalDateFormat.format(DateTime.now());
    appCubit.addDate(dateController.text);

<<<<<<< HEAD
    startTimeController.text = DateFormat("hh:mm a").format(DateTime.now());
    appCubit.addStartTime(startTimeController.text);

    endTimeController.text = DateFormat("hh:mm a")
=======
    startTimeController.text =
        Constant.originalTimeFormat.format(DateTime.now());
    appCubit.addStartTime(startTimeController.text);

    endTimeController.text = Constant.originalTimeFormat
>>>>>>> episode-15-validation-3
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
<<<<<<< HEAD
                key: formKey,
=======
                key: keyForm,
>>>>>>> episode-15-validation-3
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
<<<<<<< HEAD
                      onSaved: (newValue) {
                        appCubit.addDescription(newValue ?? "");
=======
                      onSaved: (desc) {
                        appCubit.addDescription(desc ?? "");
>>>>>>> episode-15-validation-3
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Required";
<<<<<<< HEAD
                        }
                        if (value.length < 5) {
                          return "length of character less than 5";
=======
                        } else if (value.length < 5) {
                          return "Character length < 5";
>>>>>>> episode-15-validation-3
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
<<<<<<< HEAD
                      },
                      onSaved: (newValue) {
                        appCubit.addDate(newValue ?? "");
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Required";
                        }

                        return null;
=======
                        appCubit.addDate(dateController.text);
>>>>>>> episode-15-validation-3
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
<<<<<<< HEAD
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
                            onSaved: (newValue) {
                              appCubit.addendTime(newValue ?? "");
=======
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
>>>>>>> episode-15-validation-3
                            },
                          ),
                        ),
                      ],
<<<<<<< HEAD
=======
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
>>>>>>> episode-15-validation-3
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyText(
<<<<<<< HEAD
                          title: "Reminder",
=======
                          title: "Select Your Color",
>>>>>>> episode-15-validation-3
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 16),
<<<<<<< HEAD
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
                              appCubit.addReminder(value ?? 0);
                            }),
                      ],
=======
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
>>>>>>> episode-15-validation-3
                    ),
                    const SizedBox(height: 16),
                  ],
<<<<<<< HEAD
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
                                  appCubit.addColor(color.toString());
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
              onPressed: () {
                if (formKey.isValid()) {
                  formKey.save();
                }
              },
            ),
            const SizedBox(height: 16),
=======
                ))
>>>>>>> episode-15-validation-3
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
