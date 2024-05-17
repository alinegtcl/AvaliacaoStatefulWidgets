import 'package:flutter/material.dart';

class AverageForm extends StatefulWidget {
  const AverageForm({super.key});

  @override
  State<StatefulWidget> createState() => _AverageFormState();
}

class _AverageFormState extends State<AverageForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Média'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'eMail'),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Nota 1'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Nota 2'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'Nota 3'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                child: Text('Calcula Média'),
              ),
              SizedBox(height: 16.0),
              Text('Resultado:'),
              Text('Nome: '),
              Text('eMail: '),
              Text('Notas: '),
              Text('Média: '),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                child: Text('Apaga os Campos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
