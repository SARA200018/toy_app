import 'package:flutter/material.dart';
import 'package:toyaapp/modules/drawer/modules/CommonQuestion/model/questions_model.dart';

class ExpandList extends StatefulWidget {
  const ExpandList({Key? key}) : super(key: key);
  @override
  State<ExpandList> createState() => _ExpandListState();
}

class _ExpandListState extends State<ExpandList> {
  final List<CommonQustionModel> _commonQuestion = getCommonQustion();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _renderQuestion(),
      ),
    );
  }
  Widget _renderQuestion() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _commonQuestion[index].isExpanded = !isExpanded;
        });
      },
      children: _commonQuestion.map<ExpansionPanel>((CommonQustionModel commonQustionModel) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(commonQustionModel.title),
            );
          },
          body: ListTile(
            title: Text(commonQustionModel.body),
          ),
          isExpanded: commonQustionModel.isExpanded,
        );
      }).toList(),
    );
  }
}