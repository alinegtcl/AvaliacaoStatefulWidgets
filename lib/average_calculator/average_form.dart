import 'package:flutter/material.dart';

class AverageForm extends StatefulWidget {
  const AverageForm({super.key});

  @override
  State<StatefulWidget> createState() => _AverageFormState();
}

class _AverageFormState extends State<AverageForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _grade1Controller = TextEditingController();
  final _grade2Controller = TextEditingController();
  final _grade3Controller = TextEditingController();

  String _name = '';
  String _email = '';
  String _grades = '';
  double _average = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULADOR DE MÉDIA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Nome'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira um nome';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'eMail'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira um e-mail';
                    }
                    return null;
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _grade1Controller,
                        decoration: const InputDecoration(labelText: 'Nota 1'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insira a nota 1';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: TextFormField(
                        controller: _grade2Controller,
                        decoration: const InputDecoration(labelText: 'Nota 2'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insira a nota 2';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: TextFormField(
                        controller: _grade3Controller,
                        decoration: const InputDecoration(labelText: 'Nota 3'),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Insira a nota 3';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _calculateAverage,
                  child: const Text('Calcula Média'),
                ),
                const SizedBox(height: 16.0),
                const Text('Resultado:'),
                Text('Nome: $_name'),
                Text('eMail: $_email'),
                Text('Notas: $_grades'),
                Text('Média: $_average'),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Apaga os Campos'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _calculateAverage() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _name = _nameController.text;
        _email = _emailController.text;
        double grade1 = double.parse(_grade1Controller.text);
        double grade2 = double.parse(_grade2Controller.text);
        double grade3 = double.parse(_grade3Controller.text);
        _grades =
            '${_grade1Controller.text} - ${_grade2Controller.text} - ${_grade3Controller.text}';
        _average = (grade1 + grade2 + grade3) / 3;
      });
    }
  }
}
