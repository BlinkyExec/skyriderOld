import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../enum.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import '../../../size_config.dart';

class FlightFormState extends StatefulWidget {
  @override
  //const MapScreen({Key? key}) : super(key: key);
  _FlightFormState createState() => _FlightFormState();
}

class _FlightFormState extends State<FlightFormState> {
  int currentStep = 0;
  bool isCompleted = false;

  final teamName = TextEditingController();
  final locationCode = TextEditingController();

  final format = DateFormat("yyyy-MM-dd HH:mm");

  SingingCharacter? _character = SingingCharacter.pilot1;
  ComponentState? _item = ComponentState.proper;
  CheckBool? _checkConf = CheckBool.no;

  List<Step> getSteps() => [
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: Text('פרטים'),
          content: Column(
            children: <Widget>[
              TextFormField(
                controller: teamName,
                decoration: InputDecoration(labelText: 'שם צוות', hintText: 'הכנס שם צוות'),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              TextFormField(
                controller: locationCode,
                decoration: InputDecoration(labelText: 'קוד מיקום', hintText: '---'),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              DateTimeField(
                decoration: InputDecoration(labelText: 'המראה'),
                format: format,
                onShowPicker: (context, currentValue) async {
                  final date = await showDatePicker(context: context, firstDate: DateTime(1900), initialDate: currentValue ?? DateTime.now(), lastDate: DateTime(2100));
                  if (date != null) {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                    );
                    return DateTimeField.combine(date, time);
                  } else {
                    return currentValue;
                  }
                },
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              DateTimeField(
                decoration: InputDecoration(labelText: 'נחיתה'),
                format: format,
                onShowPicker: (context, currentValue) async {
                  final date = await showDatePicker(context: context, firstDate: DateTime(1900), initialDate: currentValue ?? DateTime.now(), lastDate: DateTime(2100));
                  if (date != null) {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                    );
                    return DateTimeField.combine(date, time);
                  } else {
                    return currentValue;
                  }
                },
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              Text('מי מטיס?'),
              //Row(
              //mainAxisSize: MainAxisSize.min,
              //children: <Widget>[
              ListTile(
                title: const Text('מפעיל I'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.pilot1,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('מפעיל II'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.pilot2,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              //],
              //),
              //Row(
              //mainAxisSize: MainAxisSize.min,
              //children: <Widget>[
              ListTile(
                title: const Text('משגר'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.launchHandler,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('מפקד המנ"ח'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.mefakedAmnah,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              //],
              //),
              SizedBox(height: getProportionateScreenWidth(20)),
              TextFormField(
                controller: locationCode,
                minLines: 5,
                maxLines: 15,
                decoration: InputDecoration(
                  labelText: 'תיאור פריסה',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
                ),
              ),
            ],
          ),
        ),
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: Text('רכיבים'),
          content: Column(
            children: <Widget>[
              TextFormField(
                controller: teamName,
                decoration: InputDecoration(labelText: 'ד. ימין', hintText: 'הכנס מס"ד'),
              ),
              ListTile(
                title: const Text('תקין'),
                leading: Radio<ComponentState>(
                  value: ComponentState.proper,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('תקול'),
                leading: Radio<ComponentState>(
                  value: ComponentState.faulty,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              TextFormField(
                controller: teamName,
                decoration: InputDecoration(labelText: 'ד. שמאל', hintText: 'הכנס מס"ד'),
              ),
              ListTile(
                title: const Text('תקין'),
                leading: Radio<ComponentState>(
                  value: ComponentState.proper,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('תקול'),
                leading: Radio<ComponentState>(
                  value: ComponentState.faulty,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              TextFormField(
                controller: teamName,
                decoration: InputDecoration(labelText: 'כנפ"ם', hintText: 'הכנס מס"ד'),
              ),
              ListTile(
                title: const Text('תקין'),
                leading: Radio<ComponentState>(
                  value: ComponentState.proper,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('תקול'),
                leading: Radio<ComponentState>(
                  value: ComponentState.faulty,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              TextFormField(
                controller: teamName,
                decoration: InputDecoration(labelText: 'מתעד', hintText: 'הכנס מס"ד'),
              ),
              ListTile(
                title: const Text('תקין'),
                leading: Radio<ComponentState>(
                  value: ComponentState.proper,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('תקול'),
                leading: Radio<ComponentState>(
                  value: ComponentState.faulty,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              TextFormField(
                controller: teamName,
                decoration: InputDecoration(labelText: 'פוד', hintText: 'הכנס מס"ד'),
              ),
              ListTile(
                title: const Text('תקין'),
                leading: Radio<ComponentState>(
                  value: ComponentState.proper,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('תקול'),
                leading: Radio<ComponentState>(
                  value: ComponentState.faulty,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              TextFormField(
                controller: teamName,
                decoration: InputDecoration(labelText: 'אנטנה', hintText: 'הכנס מס"ד'),
              ),
              ListTile(
                title: const Text('תקין'),
                leading: Radio<ComponentState>(
                  value: ComponentState.proper,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('תקול'),
                leading: Radio<ComponentState>(
                  value: ComponentState.faulty,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              TextFormField(
                controller: teamName,
                decoration: InputDecoration(labelText: 'בו"ם זנב', hintText: 'הכנס מס"ד'),
              ),
              ListTile(
                title: const Text('תקין'),
                leading: Radio<ComponentState>(
                  value: ComponentState.proper,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('תקול'),
                leading: Radio<ComponentState>(
                  value: ComponentState.faulty,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              TextFormField(
                controller: teamName,
                decoration: InputDecoration(labelText: 'הגה גובה', hintText: 'הכנס מס"ד'),
              ),
              ListTile(
                title: const Text('תקין'),
                leading: Radio<ComponentState>(
                  value: ComponentState.proper,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('תקול'),
                leading: Radio<ComponentState>(
                  value: ComponentState.faulty,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              TextFormField(
                controller: teamName,
                decoration: InputDecoration(labelText: 'הגה כיוון', hintText: 'הכנס מס"ד'),
              ),
              ListTile(
                title: const Text('תקין'),
                leading: Radio<ComponentState>(
                  value: ComponentState.proper,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('תקול'),
                leading: Radio<ComponentState>(
                  value: ComponentState.faulty,
                  groupValue: _item,
                  onChanged: (ComponentState? value) {
                    setState(() {
                      _item = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Step(
          isActive: currentStep >= 0,
          title: Text('אירוע חריג'),
          content: Column(
            children: <Widget>[
              TextFormField(
                controller: teamName,
                decoration: InputDecoration(labelText: 'קוד אירוע', hintText: 'הכנס מספר אירוע'),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              ListTile(
                title: const Text('לא'),
                leading: Radio<CheckBool>(
                  value: CheckBool.no,
                  groupValue: _checkConf,
                  onChanged: (CheckBool? value) {
                    setState(() {
                      _checkConf = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('כן'),
                leading: Radio<CheckBool>(
                  value: CheckBool.yes,
                  groupValue: _checkConf,
                  onChanged: (CheckBool? value) {
                    setState(() {
                      _checkConf = value;
                    });
                  },
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              TextFormField(
                controller: locationCode,
                minLines: 8,
                maxLines: 20,
                decoration: InputDecoration(
                  labelText: 'תיאור אירוע',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
                ),
              ),
            ],
          ),
        )
      ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(colorScheme: ColorScheme.light(primary: kPrimaryLightColor)),
      child: Stepper(
        type: StepperType.horizontal,
        steps: getSteps(),
        currentStep: currentStep,
        onStepContinue: () {
          final isLastStep = currentStep == getSteps().length - 1;

          if (isLastStep) {
            setState(() => isCompleted = true);
            print('טיסה דווחה בהצלחה');

            // send data to server
          } else {
            setState(() => currentStep++);
          }
        },
        onStepTapped: (step) => setState(() => currentStep = step),
        onStepCancel: currentStep == 0 ? null : () => setState(() => currentStep--),
        controlsBuilder: (context, {onStepContinue, onStepCancel}) {
          final isLastStep = currentStep == getSteps().length - 1;

          return Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: Text(isLastStep ? 'שלח' : 'הבא'),
                      onPressed: onStepContinue,
                    ),
                  ),
                  const SizedBox(width: 12),
                  if (currentStep != 0)
                    Expanded(
                      child: ElevatedButton(
                        child: Text('חזור'),
                        onPressed: onStepCancel,
                      ),
                    )
                ],
              ));
        },
      ),
    );
  }
}
