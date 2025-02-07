import 'package:flutter/material.dart';

class serialMonitor extends StatefulWidget {
  const serialMonitor({super.key});

  @override
  State<serialMonitor> createState() => _serialMonitorState();
}

class _serialMonitorState extends State<serialMonitor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 140, 207, 238),
        title: Text("Serial-Monitor"),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 100,
              child: Center(
                child: OscilloscopeSettings(),
              ),
            ),
            Expanded(
              flex: 30,
              child: Center(
                child: OscilloscopeMonitor(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OscilloscopeSettings extends StatefulWidget {
  const OscilloscopeSettings({super.key});

  @override
  State<OscilloscopeSettings> createState() => _OscilloscopeSettingsState();
}

class _OscilloscopeSettingsState extends State<OscilloscopeSettings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }
}

class OscilloscopeMonitor extends StatefulWidget {
  const OscilloscopeMonitor({super.key});

  @override
  State<OscilloscopeMonitor> createState() => _OscilloscopeMonitorState();
}

class _OscilloscopeMonitorState extends State<OscilloscopeMonitor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
