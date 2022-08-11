import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class help_petss extends StatefulWidget {
  const help_petss({Key? key}) : super(key: key);

  @override
  State<help_petss> createState() => _help_petssState();
}

class _help_petssState extends State<help_petss> {
  File? _image;
  Future getImage(ImageSource) async {
    try{
      final image = await ImagePicker().pickImage(source: ImageSource);
      if (image == null) return;

      final Imgtemp = await saveFilePar(image.path);

      setState(() {
        this._image = Imgtemp;
      });
    } catch(e)
    {
      print('failed to pick image $e');
    }
  }
  Future<File> saveFilePar(String imagePath)async{
    final directory=await getApplicationDocumentsDirectory();
    final name=basename(imagePath);
    final image=File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }
  int _activeStepIndex = 0;
  TextEditingController Animal_type = TextEditingController();
  TextEditingController Contact_No = TextEditingController();
  TextEditingController addressOfIncident = TextEditingController();


  List<Step> stepList() =>
      [
        Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,

          title: const Text('Emergency'),

          content: Container(

            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: Animal_type,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Animal',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: Contact_No,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contact No.',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: addressOfIncident,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Location',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),

              ],
            ),
          ),
        ),
        Step(
            state:
            _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 1,
            title: const Text('image'),
            content: Container(
              child: Column(
                children: [
                  _image!=null?Image.file(
                    _image!,
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ):
                  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjmwiCk_e2Yd44kGjRVlJpi6e2Z8r0Y59pRQ&usqp=CAU'),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomButton
                    (
                    title: 'Gallery',
                    icon: Icons.image_outlined,
                      onClick:()=> getImage(ImageSource.gallery),

                    ),
                  CustomButton(

                    title: 'Camera',
                    icon: Icons.camera,
                      onClick:()=> getImage(ImageSource.camera),

                    ),
                  const SizedBox(
                    height: 8,
                  ),
                ],

              ),

            )),
        Step(
            state: StepState.complete,
            isActive: _activeStepIndex >= 2,
            title: const Text('Confirm'),
            content: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Animal type : ${Animal_type.text}'),
                    Text('Contact No : ${Contact_No.text}'),
                    Text('Location : ${addressOfIncident.text}'),

                    _image!=null?Image.file(
                      _image!,
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    ):
                    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjmwiCk_e2Yd44kGjRVlJpi6e2Z8r0Y59pRQ&usqp=CAU'),

                  ],
                )))
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: const Text(
            'Peto',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,

            )

        ),
        backgroundColor: Color.fromRGBO(196, 135, 198, 1),
      ),

      body: Stepper(
        type: StepperType.vertical,
        currentStep: _activeStepIndex,
        steps: stepList(),
        onStepContinue: () {
          if (_activeStepIndex < (stepList().length - 1)) {
            setState(() {
              _activeStepIndex += 1;
            });
          } else {
            print('Submited');
          }
        },
        onStepCancel: () {
          if (_activeStepIndex == 0) {
            return;
          }
          setState(() {
            _activeStepIndex -= 1;
          });
        },
        onStepTapped: (int index) {
          setState(() {
            _activeStepIndex = index;
          });
        },
        controlsBuilder: (context,ControlsDetails controls){
          final isLastStep = _activeStepIndex == stepList().length - 1;
          return Container(
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: controls.onStepContinue,
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(49, 39, 79, 1), // Background color
                    ),
                    child: (isLastStep)
                        ? const Text('Submit')
                        : const Text('Next'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                if (_activeStepIndex > 0)
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(49, 39, 79, 1), // Background color
                      ),
                      onPressed: controls.onStepCancel,
                      child: const Text('Back'),
                    ),
                  )
              ],
            ),
          );
        },
      ),
    );
  }
}
Widget CustomButton({
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}){
  return Container(
    width: 150,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom( primary: Color.fromRGBO(49, 39, 79, 1),),
      onPressed: onClick,
      child: Row(
        children:  [
          Icon(icon),
          SizedBox(
            width: 15,
          ),
          Text(title)
        ],
      ),
    ),
  );
}