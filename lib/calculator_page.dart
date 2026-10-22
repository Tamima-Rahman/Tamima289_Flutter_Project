import 'package:flutter/material.dart';
import 'package:tamima_289/widgets/input_field.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  double result = 0;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 243, 252),

      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 33, 20, 181),
        foregroundColor: const Color.fromARGB(255, 253, 253, 253),
      ),

      body: Center(
        child: SizedBox(
          width: 330,
          child: Card(
            color: const Color.fromARGB(255, 247, 247, 248),
            elevation: 10,
            shadowColor: const Color.fromARGB(255, 33, 20, 181),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Form(
                key: _formKey,

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Calculate Your Numbers",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 33, 20, 181),
                      ),
                    ),

                    SizedBox(height: 25),

                    InputField(
                      controller: controller1,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      labelText: "Number 1",
                      hintText: "Enter first number",
                      prefixIcon: Icon(Icons.numbers),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Field is empty!";
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 20),

                    InputField(
                      controller: controller2,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      labelText: "Number 2",
                      hintText: "Enter second number",
                      prefixIcon: Icon(Icons.numbers),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Field is empty!";
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            String num1 = controller1.text;
                            String num2 = controller2.text;

                            result = double.parse(num1) + double.parse(num2);

                            setState(() {});
                          }
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            33,
                            20,
                            181,
                          ),
                          foregroundColor: const Color.fromARGB(255, 243, 240, 240),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),

                        child: Text("Calculate"),
                      ),
                    ),

                    SizedBox(height: 25),

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 232, 229, 246),
                        borderRadius: BorderRadius.circular(12),
                      ),

                      child: Column(
                        children: [
                          Text(
                            "YOUR ANSWER",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 33, 20, 181),
                              fontSize: 13,
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            "$result",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 33, 20, 181),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
