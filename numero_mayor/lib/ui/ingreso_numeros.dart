import 'package:flutter/material.dart';
import '../controllers/controlador_numero.dart';

class NumberInputScreen extends StatefulWidget {
  @override
  _NumberInputScreenState createState() => _NumberInputScreenState();
}

class _NumberInputScreenState extends State<NumberInputScreen> {
  final _controller = NumberController();
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  final TextEditingController _num3Controller = TextEditingController();
  String _result = '';

  void _calculateMax() {
    int num1 = int.tryParse(_num1Controller.text) ?? 0;
    int num2 = int.tryParse(_num2Controller.text) ?? 0;
    int num3 = int.tryParse(_num3Controller.text) ?? 0;

    _controller.setNumbers(num1, num2, num3);
    setState(() {
      _result = 'El número mayor es: ${_controller.getMaxNumber()}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cálculo del Número Mayor'),
        backgroundColor: const Color(0xFFEF9A9A), // Pastel rojo claro
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTextField(_num1Controller, 'Número 1', Icons.looks_one),
            SizedBox(height: 10),
            _buildTextField(_num2Controller, 'Número 2', Icons.looks_two),
            SizedBox(height: 10),
            _buildTextField(_num3Controller, 'Número 3', Icons.looks_3),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _calculateMax,
              icon: Icon(Icons.calculate),
              label: Text('Calcular Mayor'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF80CBC4), // Pastel verde agua
              ),
            ),
            SizedBox(height: 20),
            if (_result.isNotEmpty)
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Text(
                  _result,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF004D40), // Verde oscuro
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, IconData icon) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: const Color(0xFF004D40)), // Verde oscuro
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
