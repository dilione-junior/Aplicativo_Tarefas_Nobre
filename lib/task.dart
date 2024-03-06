
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String nome;
  final String imagem;

  const Task(this.nome,this.imagem,{super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Container(
        child: Stack(
          children: [
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue), height: 140,),
            Column(
              children: [
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,), height: 100, child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white,), width: 75,height: 100, child: ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.network(widget.imagem,)),),
                    SizedBox(
                        width: 185,
                        child: Text(widget.nome, style: const TextStyle(fontSize: 18, color: Colors.black87, overflow: TextOverflow.ellipsis),
                        )),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(onPressed: (){setState(() {
                        nivel++; });}, child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.keyboard_double_arrow_up,),
                          Text('Lvl UP', style: TextStyle(fontSize: 13),),
                        ],
                      )),
                    )
                  ],
                ) ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: SizedBox(child: LinearProgressIndicator(color: Colors.amberAccent, value: nivel/31,), width: 250,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text('Nivel $nivel', style: const TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ],
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
