import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget inputBox(String hint){
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Flex(
      direction: Axis.horizontal,
      children: [
        const SizedBox(height: 50,),
        SizedBox(
          width: 312.w,
          height: 35.h,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.white,fontSize: 15),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white
                  )
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class PhoneInputBox extends StatefulWidget {
  const PhoneInputBox({Key? key}) : super(key: key);

  @override
  State<PhoneInputBox> createState() => _PhoneInputBoxState();
}

class _PhoneInputBoxState extends State<PhoneInputBox> {
  String dropdownValue = '+86';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 310.w,
            height: 26.h,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration:  InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white
                    )
                ),
                prefixIcon: Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: Colors.black45,
                  ),
                  child: DropdownButton(
                    value: dropdownValue,
                    icon: Image.asset('assets/images/log/drop-down arrow.png',height: 10.h,width: 10.w,),
                    style: const TextStyle(color: Colors.white),
                    underline: Container(
                      height: 0,
                      color: Colors.white,
                    ),
                    items: <String>['One', '+86', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },

                  ),
                ),
              ),
            )
        ),
        const SizedBox(
          height: 20,
        ),

      ],
    );
  }
}
