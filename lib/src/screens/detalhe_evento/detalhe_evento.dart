import 'dart:ui';

import 'package:desafio_padawans_flutter/src/library/utils/colors_util.dart';
import 'package:desafio_padawans_flutter/src/library/utils/global.dart';
import 'package:desafio_padawans_flutter/src/screens/home/home/widgets/background_container_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetalheEventoScreen extends StatefulWidget {
  @override
  _DetalheEventoScreenState createState() => _DetalheEventoScreenState();
}

class _DetalheEventoScreenState extends State<DetalheEventoScreen> {
  List<String> _menu = [
    "PEOPLE",
    "TOPICS",
    "NOTIFICATIONS",
    "ASSETS",
    "SCROLLABLETEST"
  ];
  List<String> _attendees = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8qxQ79sZKQkzW7Ki7fPFWMl8def0w4cp-Bw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8qxQ79sZKQkzW7Ki7fPFWMl8def0w4cp-Bw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8qxQ79sZKQkzW7Ki7fPFWMl8def0w4cp-Bw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8qxQ79sZKQkzW7Ki7fPFWMl8def0w4cp-Bw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8qxQ79sZKQkzW7Ki7fPFWMl8def0w4cp-Bw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8qxQ79sZKQkzW7Ki7fPFWMl8def0w4cp-Bw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8qxQ79sZKQkzW7Ki7fPFWMl8def0w4cp-Bw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8qxQ79sZKQkzW7Ki7fPFWMl8def0w4cp-Bw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8qxQ79sZKQkzW7Ki7fPFWMl8def0w4cp-Bw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8qxQ79sZKQkzW7Ki7fPFWMl8def0w4cp-Bw&usqp=CAU"
  ];
  List<int> _marked = [0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: ColorsUtil.roxo,
      body: this._buildBody(),
    );
  }

  _buildBody() {
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
                    _buildHeader(),
                    _buildDetails(),
                    _buildContent(),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  _buildHeader() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            color: ColorsUtil.cinzaEscuro.withOpacity(0.1),
            height: 6,
            width: 45,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 31),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 25),
                child: InkWell(
                  onTap: () {
                    frwkNavigator.popNavigate();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 21,
              ),
              Text(
                "Agenda: Weekly Product Meeting",
                style: TextStyle(
                    color: ColorsUtil.cinzaEscuro,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Opacity(
          opacity: 0.1,
          child: Container(
            height: 1,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 24),
      ],
    );
  }

  _buildDetails() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 24),
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            "Details",
            style: TextStyle(
                color: ColorsUtil.cinzaEscuro,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 24),
        Container(
          height: 20,
          child: ListView(
            padding: EdgeInsets.only(left: 12),
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: ClampingScrollPhysics(),
            children: this._menu.map((topic) {
              var index = this._menu.indexOf(topic);
              return this._buildTopic(topic, index);
            }).toList(),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Opacity(
          opacity: 0.1,
          child: Container(
            height: 1,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 24),
      ],
    );
  }

  Widget _buildContent() {
    int menu = this._marked[0];
    switch (menu) {
      case 0:
        {
          return this._buildPeople();
        }
      case 1:
        {
          return _inProgress("TOPICS IN PROGRESS");
        }
      case 2:
        {
          return _inProgress(
            "NOTIFICATIONS IN PROGRESS",
          );
        }
      case 3:
        {
          return _inProgress("ASSETS IN PROGRESS");
        }
      default:
        return Container(
          alignment: Alignment.center,
          child: Text(
            "Tente Novamente mais tarde!",
          ),
        );
    }
  }

  Widget _inProgress(str) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(bottom: 24, left: 24, right: 24),
              alignment: Alignment.center,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.network("https://i.gifer.com/7Q3Z.gif"))),
          Text("$str",
            style: TextStyle(
                color: ColorsUtil.cinzaEscuro,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildPeople() {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text("${this._attendees.length} attendees",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w500)),
                ),
                Container(
                  height: 34,
                  width: 34,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/Rectangle.png"),
                      Icon(
                        Icons.add,
                        color: ColorsUtil.getColorByHex("#6F41E9"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24),
          //Persons
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(left: 24, top: 0),
              children: this._attendees.map((url) {
                return _buildAttendee(url);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAttendee(url) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 64,
                  width: 64,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Gandalf the Grey",
                          style: TextStyle(
                              color: ColorsUtil.cinzaEscuro,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 10),
                        Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 82,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: ColorsUtil.roxoClaro),
                          child: Text(
                            "ORGANIZER",
                            style: TextStyle(
                              color: ColorsUtil.roxo,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 4),
                    Text("Ring Society Founder",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                )
              ],
            ),
          ),
          Opacity(
            opacity: 0.1,
            child: Container(
              height: 1,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Widget _buildTopic(topic, index) {
    return Opacity(
      opacity: this._marked.contains(index) ? 1 : 0.4,
      child: InkWell(
        onTap: () {
          setState(() {
            this._marked.clear();
            this._marked.add(index);
            print(_marked);
          });
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "$topic",
            style: TextStyle(
              color: ColorsUtil.cinzaEscuro,
              fontSize: 16,
              fontWeight: this._marked.contains(index)
                  ? FontWeight.w800
                  : FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  } //end _buildTopic

} //end class
