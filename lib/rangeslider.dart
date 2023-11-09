import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: MyApp(),)));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderExample(),
    );
  }
}

class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  RangeValues _rangeValues = RangeValues(3, 8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Range Slider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Range Values: ${_rangeValues.start} - ${_rangeValues.end}'),
            RangeSlider(
              values: _rangeValues,
              onChanged: (newRange) {
                setState(() {
                  _rangeValues = newRange;
                });
              },
              min: 0.0,
              max: 10.0,
              divisions: 20, // Optional, for discrete values
              labels: RangeLabels('${_rangeValues.start}', '${_rangeValues.end}'), // Optional, displays current range
            ),
          ],
        ),
      ),
    );
  }
}
