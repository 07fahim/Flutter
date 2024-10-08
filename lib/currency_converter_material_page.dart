import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    int result = 0;
    final TextEditingController textEditingController = TextEditingController();
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
            width: 2,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: BorderRadius.circular(5));
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: const Text(
            "Cureency Convertor",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "0",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      hintText: "Please enter the amount in USD",
                      hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      prefixIcon: const Icon(
                        Icons.monetization_on_outlined,
                        size: 24,
                      ),
                      prefixIconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: border,
                      enabledBorder: border),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    print(textEditingController.text);
                    print(double.parse(textEditingController.text) * 119);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      elevation: 15,
                      shape: (const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ))),
                      minimumSize: const Size(double.infinity, 50)),
                  child: const Text("Convert"),
                ),
              )
            ],
          ),
        ));
  }
}
