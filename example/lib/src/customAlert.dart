// ignore_for_file: camel_case_types, must_be_immutable

import 'package:dialog_alert_transition/dialog_alert_transition.dart';
import 'package:flutter/material.dart';

class customAlert extends StatefulWidget {
  const customAlert({super.key});

  @override
  State<customAlert> createState() => _customAlert();
}

class _customAlert extends State<customAlert> {
  String stas = 'texto anterior';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: ListView(
          children: [
            for (transitionType e in transitionType.values) ...[
              TextButton(
                onPressed: () {
                  int newToken = controlAlertGo.generate();
                  alertGo(
                    transitionType: e,
                    token: newToken,
                    context: context,
                    designer: true,
                    alertWd: customWidget(token: newToken),
                  );
                },
                child: Text(e.name),
              ),
            ]
          ],
        ),
      ),
    );
  }
}

class customWidget extends StatelessWidget {
  int token;
  customWidget({
    super.key,
    required this.token,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      height: MediaQuery.of(context).size.height - 20,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurStyle: BlurStyle.outer,
            blurRadius: 10,
          ),
        ],
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            height: 45,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    controlAlertGo.controll[token]!.reverse().then(
                      (_) {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  child: const Text('back'),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 45,
            bottom: 0,
            right: 0,
            left: 0,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    overflow: TextOverflow.clip,
                    '''Había una vez un pequeño pueblo enclavado entre las montañas. Sus calles empedradas estaban llenas de vida y color, y sus habitantes se conocían todos por sus nombres. En el centro del pueblo se alzaba una antigua iglesia de piedra, con un campanario que resonaba cada hora.
                      
                      Un día, llegó un forastero al pueblo. Era un hombre alto y delgado, con ojos cansados y una barba descuidada. Se llamaba Martín y venía en busca de algo que había perdido hacía mucho tiempo.
                      
                      Martín se instaló en una pequeña posada al borde del pueblo. Durante el día, recorría las calles con la mirada perdida, como si buscara algo que no podía encontrar. Los habitantes del pueblo lo miraban con curiosidad, pero nadie se atrevía a preguntarle qué le sucedía.
                      
                      Una tarde, Martín se acercó al campanario de la iglesia. Subió los escalones de piedra con dificultad y se detuvo en la plataforma de madera. Miró hacia el horizonte, donde las montañas se perdían en la bruma.
                      
                      —¿Qué buscas, forastero? —preguntó una voz detrás de él.
                      
                      Martín se giró y vio a un anciano con el rostro curtido por el sol. El anciano llevaba un sombrero de paja y una vara de madera en la mano.
                      
                      —Busco respuestas —respondió Martín—. He perdido algo muy importante y no sé dónde encontrarlo.
                      
                      El anciano sonrió y se sentó en un banco de piedra.
                      
                      —Las respuestas están en el viento —dijo—. Escucha su susurro y encontrarás lo que buscas.
                      
                      Martín se quedó perplejo. ¿Cómo podía el viento tener respuestas? Pero decidió seguir el consejo del anciano. Cerró los ojos y se dejó llevar por la brisa que acariciaba su rostro.
                      
                      Y entonces, Martín escuchó un murmullo. Era como si el viento le hablara en un idioma antiguo y olvidado. Las palabras flotaban en el aire, llevándolo hacia las montañas.
                      
                      Martín caminó durante días, siguiendo el susurro del viento. Cruzó ríos y bosques, sorteó rocas y precipicios. Finalmente, llegó a una cueva en lo más alto de una montaña.
                      
                      Dentro de la cueva, encontró lo que había estado buscando: un viejo libro de tapas desgastadas. Sus páginas estaban llenas de símbolos y palabras en una lengua desconocida. Martín sintió que había hallado un tesoro perdido.
                      
                      Regresó al pueblo con el libro bajo el brazo. El anciano lo esperaba en el campanario.
                      
                      —Has encontrado lo que buscabas —dijo el anciano—. Ahora, descifra las palabras del viento y encontrarás la verdad.
                      
                      Martín pasó años estudiando el libro. Aprendió su idioma y descubrió que contenía secretos ancestrales sobre la vida y la muerte, el amor y el destino. Compartió su sabiduría con los habitantes del pueblo, y todos se maravillaron de sus enseñanzas.
                      
                      Y así, Martín encontró su lugar en el mundo. Ya no era un forastero perdido, sino un guardián de la sabiduría ancestral. Y cada vez que el viento soplaba entre las montañas, Martín escuchaba su susurro y sonreía, porque sabía que las respuestas estaban allí, esperando a ser descubiertas12.'''),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
