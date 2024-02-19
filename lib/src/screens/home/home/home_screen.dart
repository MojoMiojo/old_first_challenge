import 'package:desafio_padawans_flutter/src/library/utils/colors_util.dart';
import 'package:desafio_padawans_flutter/src/library/utils/global.dart';
import 'package:desafio_padawans_flutter/src/screens/detalhe_evento/detalhe_evento.dart';
import 'package:desafio_padawans_flutter/src/screens/home/home/widgets/background_container_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  bool check;
  bool selecionado;

  List<int> eventosSelecionados = [];
  List<String> _urls = [
    "https://thumbs.gfycat.com/ColossalImpeccableChimpanzee-size_restricted.gif",
    "https://thumbs.gfycat.com/ColossalImpeccableChimpanzee-size_restricted.gif",
    "https://thumbs.gfycat.com/ColossalImpeccableChimpanzee-size_restricted.gif",
    "https://thumbs.gfycat.com/ColossalImpeccableChimpanzee-size_restricted.gif",
    "https://thumbs.gfycat.com/ColossalImpeccableChimpanzee-size_restricted.gif",
    "https://thumbs.gfycat.com/ColossalImpeccableChimpanzee-size_restricted.gif",
    "https://thumbs.gfycat.com/ColossalImpeccableChimpanzee-size_restricted.gif",
    "https://thumbs.gfycat.com/ColossalImpeccableChimpanzee-size_restricted.gif",
    "https://thumbs.gfycat.com/ColossalImpeccableChimpanzee-size_restricted.gif",
    "https://thumbs.gfycat.com/ColossalImpeccableChimpanzee-size_restricted.gif",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.roxo,
      appBar: null,
      body: this._buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 22),
      child: Stack(
        children: [
          Positioned.fill(
            child: BackgroundContainerWidget(
              backgroundColor: ColorsUtil.getColorByHex('8D67F1'),
              child: null,
            ),
          ),
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            bottom: 0,
            child: BackgroundContainerWidget(
              backgroundColor: ColorsUtil.white,

              child: Column(
                children: [
                  this._buildHead(),
                  this._buildParticipants(),
                  this._buildEventos(),
                ],
              ),

            ),
          )
        ],
      ),
    );
  }

  Widget _buildHead() {

    return Column( children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            Container(
              color: Colors.black.withOpacity(0.1),
              height: 6,
              width: 45,
            ),
            SizedBox(
              height: 14.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipOval(
                  child: Material(
                    color: Color(0xFF6D40E8),
                    child: InkWell(
                      splashColor: ColorsUtil.roxo,
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Icon(
                  Icons.more_horiz,
                  size: 40.0,
                ),
              ],
            ),
            SizedBox(
              height: 22.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Weekly Design Crit',
                  style: TextStyle(
                      color: ColorsUtil.cinzaEscuro,
                      fontWeight: FontWeight.w700,
                      fontSize: 24.0),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Sep 9, 2019',
                  style: TextStyle(
                    color: Color(0xFFAAA9AB).withOpacity(0.4),
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: 24.0,
      ),
    ]);
  }//end buildHead

  Widget _buildParticipants(){

    return Column(
      children: [

        Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          alignment: Alignment.centerLeft,
          child: Text(
            'Partecipants (${_urls.length})',
            style: TextStyle(
                color: ColorsUtil.roxo,
                fontSize: 24.0,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 24),

        //Images
        Container(
          height: 64,
          child: ListView(
            primary: false,
            padding: EdgeInsets.only(left: 18),
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: this._urls.map((url) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 6),
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ColorsUtil.shadow,
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: Offset(1.0, 2.0),

                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildEventos() {
    return  Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 24, top: 42, right: 24),
              child: ListView(
                  padding: EdgeInsets.all(0),
                  children: List.generate(10, (index) {
                    return _buildRowEventos(index);
                  })
              ),
            ),
    );
  }

  Widget _buildRowEventos(int index) {
    bool selecionado = this.eventosSelecionados.contains(index);

    return InkWell(
      onTap: () {
        frwkNavigator.navigate(DetalheEventoScreen());
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 32),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Opacity(
              opacity: selecionado ? 0.5 : 1.0,
              child: Row(
                children: [
                  Container(
                    width: 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      color: ColorsUtil.roxo,
                    ),
                  ),
                  SizedBox( width: 16 ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Design Review",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorsUtil.roxo,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox( height: 6 ),
                      Text(
                        ""
                            "Illustrations - Update gradien...",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorsUtil.getColorByHex('2C2929'),
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (selecionado) {
                    this.eventosSelecionados.remove(index);
                  } else {
                    this.eventosSelecionados.add(index);
                  }
                });
              },
              child: Container(
                height: 34,
                width: 34,
                child: selecionado
                    ? Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/backbox.png',
                    ),
                    Image.asset(
                      'assets/images/checked.png',
                    )
                  ],
                )
                    : Image.asset(
                  'assets/images/Rectangle.png',
                ),
              ),
            )
          ],
        ),
      ),
    );
  } //end buildEventos

} //end class