import 'package:flutter/material.dart';

class CreateTransaction extends StatelessWidget {
  final Function addtx;
  final titlecontroller = TextEditingController();
  final amountController = TextEditingController();

  CreateTransaction(this.addtx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titlecontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            FlatButton(
              onPressed: () {
                // print(titleInput);
                // print(amountInput);
                addtx(
                    titlecontroller.text, double.parse(amountController.text));
              },
              child: Text(
                'Add Transaction',
              ),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
