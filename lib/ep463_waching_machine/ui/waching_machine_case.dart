
import 'package:flutter/material.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/service_locator.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/washing_machine_controller.dart';

class WashingMachineCase extends StatefulWidget {

  final double width;
  final double height;

  WashingMachineCase({this.width, this.height});

  @override
  _WashingMachineCaseState createState() => _WashingMachineCaseState();
}

class _WashingMachineCaseState extends State<WashingMachineCase> {
  WashingMachineController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = ServiceLocator.get<WashingMachineController>();
    _controller.initialize(radius: widget.width /2 - 64);
  }
  @override
  Widget build(BuildContext context) {
    const circularBorder = const BorderRadius.all(Radius.circular(200));
    const ring1Offset = 35;
    const ring2Offset = 70;
    const ring3Offset = 28;

    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.3, 0.07),
          end: Alignment(0.35, 1),
        )
      ),
    );
  }
}































