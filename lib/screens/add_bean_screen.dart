import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddBeanScreen extends StatefulWidget {
  const AddBeanScreen({super.key});
  
  @override
  State<AddBeanScreen> createState() => _AddBeanScreenState();
}

class _AddBeanScreenState extends State<AddBeanScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('원두 추가'),
        centerTitle: true,
        actions: <Widget>[
          TextButton(
            onPressed: null, // 저장 함수 정의 안됨
            child: const Text(
              '저장',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            )
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text('원두명'),
                  TextFormField(),
                ]
              ),
              Row(
                children: [
                  Text('생산지'),
                  TextFormField(),
                ]
              ),
              Row(
                children: [
                  Text('생산고도'), // 숫자입력
                  TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ]
              ),
              Row(
                children: [
                  Text('로스터리'),
                  TextFormField(),
                ]
              ),
              Row(
                children: [
                  Text('기록일'), // 날짜자동입력
                  TextFormField(),
                ]
              ),
              Row(
                children: [
                  Text('컵노트'), // 다중선택
                  TextFormField(),
                ]
              ), 
              Row(
                children: [
                  Text('가공방식'), 
                  TextFormField(),
                ]
              ), 
              Row(
                children: [
                  Text('한줄평'),
                  TextFormField(
                    maxLines: 5,
                  ),
                ]
              )
            ],
          )
        ),
      )
    );
  }
}