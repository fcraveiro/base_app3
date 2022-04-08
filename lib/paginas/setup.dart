import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import '../services/tema.dart';

class Setup extends StatefulWidget {
  const Setup({Key? key}) : super(key: key);

  @override
  State<Setup> createState() => _SetupState();
}

List<bool> _selecteds = [false, false, true];

class _SetupState extends State<Setup> {
  @override
  void initState() {
    GetStorage.init();
    if (box.read('colunas') == null) {
      box.write('colunas', 1);
    }
    box.write('colunas', 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          heightFactor: 1,
          child: Column(
            children: [
              const SizedBox(
                height: 55,
              ),
              const Text(
                'Configurações',
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width / 3) * 2,
                    height: 35,
                    alignment: AlignmentDirectional.centerStart,
                    margin: const EdgeInsets.only(left: 15),
                    child: const Text('Modo Escuro/Claro'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3 - 50,
                    margin: const EdgeInsets.only(right: 25),
                    height: 35,
                    alignment: AlignmentDirectional.centerEnd,
                    padding: const EdgeInsets.only(right: 7),
                    child: InkWell(
                      onTap: () => tema(),
                      child: Tooltip(
                        message: 'Mudar o Tema para Modo Claro ou Escuro',
                        child: Icon(
                          Icons.lightbulb_outline,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width / 3) * 2 - 50,
                    height: 35,
                    alignment: AlignmentDirectional.centerStart,
                    margin: const EdgeInsets.only(left: 15),
                    child: const Text('Colunas na Visualização'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    margin: const EdgeInsets.only(right: 25),
                    alignment: AlignmentDirectional.centerEnd,
                    height: 35,
                    child: escolher(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  escolher() {
    return SizedBox(
      width: 110,
      height: 30,
      child: ToggleButtons(
        isSelected: _selecteds,
        color: Colors.black,
        disabledColor: Colors.amber,
        selectedColor: Colors.white,
        fillColor: const Color(0xff2F8965),
        focusColor: Colors.black,
        highlightColor: Colors.black,
        constraints: const BoxConstraints(
          maxHeight: 25,
          minHeight: 25,
          maxWidth: 35,
          minWidth: 35,
        ),
        children: const <Widget>[
          Tooltip(
            message: '1 Coluna na Visualização',
            child: Text(
              '1',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Tooltip(
            message: '2 Colunas na Visualização',
            child: Text(
              '2',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Tooltip(
            message: '3 Colunas na Visualização',
            child: Text(
              '3',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
        onPressed: (index) {
          _selecteds[0] = false;
          _selecteds[1] = false;
          _selecteds[2] = false;
          var escolha = index + 1;
          box.write('colunas', escolha);
          setState(() {
            _selecteds[index] = true;
          });
        },
      ),
    );
  }
}
