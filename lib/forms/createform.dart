import 'package:flutter/material.dart';

class CreateJournalForm extends StatefulWidget {
  @override
  _CreateJournalFormState createState() => _CreateJournalFormState();
}

class _CreateJournalFormState extends State<CreateJournalForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Journal'),
      ),
      body: Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;

            }
          ), 
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            }
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            }, 
            child:Text('Submit')),
        ],
      ),
      )
      
    );
  }
}