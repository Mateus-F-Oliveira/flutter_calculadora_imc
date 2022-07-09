import 'package:calculadora_imc/view/widgets/buttons/open_link_in_new_window.dart';
import 'package:calculadora_imc/view/widgets/texts/infos_text.dart';
import 'package:calculadora_imc/view/widgets/texts/infos_title.dart';
import 'package:calculadora_imc/view/widgets/texts/item_list_infos.dart';
import 'package:calculadora_imc/view/widgets/ui_components/footer.dart';
import 'package:calculadora_imc/view/widgets/ui_components/header.dart';
import 'package:calculadora_imc/view/global/global.dart';
import 'package:flutter/material.dart';
import 'dart:core';

class Infos extends StatelessWidget
{
  const Infos({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: header(title: "Sobre o IMC"),
      bottomNavigationBar: footer(size: size, context: context),
      backgroundColor: global.getPrimary(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(
            top: size*0.05,
            left: size*0.03,
            right: size*0.03,
            bottom: size*0.05
          ),
          child: SizedBox(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  infosTitle(title: "O que é IMC"),
                  infosText(text: "O IMC é um índice que mede se você está abaixo, dentro ou acima do peso, de acordo com a relação entre seu peso e altura. Descubra como calcular esse índice, quais os valores ideais, as exceções da tabela padrão, a especificidade do IMC para crianças e jovens e muito mais neste artigo completo."),
                  infosTitle(title: "Cálculo do Índice de Massa Corporal"),
                  infosText(text: "Para a sua posição na tabela do Índice de Massa Corporal, você precisa de dois valores: seu peso e altura. É só dividir o peso (em quilos) pelo quadrado da altura (em metros), que é obtido pela multiplicação da altura por ela mesma."),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(text: "Então, a fórmula fica assim: "),
                        TextSpan(text: "IMC = Peso / Altura².")
                      ]
                    ) 
                  ),
                  infosText(text: "Se matemática não for o seu forte, você pode usar calculadoras de Índice de Massa Corporal disponíveis na internet."),
                  infosTitle(title: "Exceções do IMC"),
                  infosText(text: "Vários grupos possuem características específicas e não se encaixam na tabela do IMC tradicional, como atletas e grávidas. Os primeiros possuem alta quantidade de massa muscular, o que resulta em um IMC acima do considerado normal, mas não significa que eles estejam acima do peso. As gestantes também podem possuir um IMC elevado, devido ao peso do bebê."),
                  infosTitle(title: "Limitações do IMC"),
                  infosText(text: "Apesar de ser um dos parâmetros mais utilizados para se calcular o peso ideal, a tabela do IMC não considera diversas variáveis importantes no que diz respeito a uma vida saudável – como porcentagem de gordura visceral, o teor de massa magra e a prática de atividades físicas. Então, o ideal é utilizar outros índices e parâmetros juntamente com a tabela do IMC para obter uma avaliação adequada."),
                  infosTitle(title: "Como baixar o IMC?"),
                  infosText(text: "Por mais que não seja 100% confiável, o IMC continua sendo um índice interessante para verificar seu peso em relação à altura. Assim, se você está acima do peso, algumas dicas para diminuir o IMC são:"),
                  const SizedBox(height: 10),
                  itemListInfos(text: " - Consultar um nutricionista para fazer o planejamento das refeições;"),
                  itemListInfos(text: " - Aumentar o gasto calórico, por meio da prática regular de exercícios;"),
                  itemListInfos(text: " - Evitar consumo de alimentos ricos em gordura, açúcar e muito industrializados, como os ultraprocessados;"),
                  itemListInfos(text: " - Ter uma alimentação balanceada, que inclua todos os grupos alimentares."),
                  const SizedBox(height: 10),
                  infosText(text: "Para emagrecer com saúde, é fundamental que você faça acompanhamento com um médico e um nutricionista. E se busca fazer grandes mudanças em seus hábitos alimentares ou de exercícios físicos, consulte os devidos especialistas."),
                  infosTitle(title: "Como aumentar o IMC?"),
                  infosText(text: "Para aqueles que estão abaixo do peso segundo a tabela do índice de massa corporal, algumas dicas são:"),
                  const SizedBox(height: 10),
                  itemListInfos(text: " - Aumentar a massa muscular por meio de atividades físicas, para que as calorias sejam transformadas em músculos, e não em gordura;"),
                  itemListInfos(text: " - Beber pelo menos 2 litros de água por dia – essa quantidade pode variar de acordo com seu peso;"),
                  itemListInfos(text: " - Aumentar o consumo de alimentos ricos em proteínas, vitaminas e minerais, de acordo com um cardápio elaborado pelo nutricionista;"),
                  itemListInfos(text: " - Incluir pelo menos 3 frutas em sua alimentação diária;"),
                  itemListInfos(text: " - Comer a cada 3 horas."),
                  const SizedBox(height: 10),
                  infosText(text: "Assim como para a perda de peso, para o ganho de massa também é fundamental o acompanhamento médico."),
                  infosTitle(title: "IMC de crianças e adolescentes"),
                  infosText(text: "Como esses grupos etários estão em fase de crescimento, existem tabelas e cálculos específicos para eles, que levam suas necessidades em consideração. Para acompanhar o desenvolvimento dos seus pequenos, consulte o pediatra ou hebiatra – médico especializado em adolescentes – com regularidade."),
                  openLinkInNewWindow(
                    link: "https://qbemqfaz.com.br/vida-equilibrada/tabela-imc?gclid=CjwKCAjwq5-WBhB7EiwAl-HEkmjO9h7NkfDZBiG64BrJgRKdEiK955ANCVaoRO-r53mz-QJqcRFXxBoCvbcQAvD_BwE",
                    size: size
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );  
  }
}