// ignore_for_file: library_private_types_in_public_api, sized_box_for_whitespace, sort_child_properties_last, prefer_const_constructors, dead_code, prefer_final_fields, unused_local_variable, unnecessary_new

import 'package:flutter/material.dart';
import 'package:pizzastored/model/menu_model.dart';
import 'package:pizzastored/components/imperia_pizza.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.account_circle,
                    size: 35,
                    color: Color(0XFF1F8BA7),
                  ),
                  Icon(
                    Icons.search,
                    size: 35,
                    color: Color(0XFF1F8BA7),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 260, 0),
              child: Text(
                'Популярные',
                style: TextStyle(
                  color: Colors.white,
                  // fontFamily: 'Montserrat-VariableFont_wght',
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ImperiaPizza();
                    },
                  ),
                );
              },
              child: Container(
                height: 210,
                width: 340,
                child: PageView.builder(
                  itemBuilder: (context, position) {
                    return _buildPageItem(position);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 330, 0),
              child: Text(
                'Все',
                style: TextStyle(
                  color: Colors.white,
                  // fontFamily: 'Montserrat-VariableFont_wght',
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Container(
                    height: 210,
                    width: 500,
                    child: PageView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              height: 190,
                              margin: EdgeInsets.only(right: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/dodo.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      manu[index].name,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 8),
                                        Wrap(
                                          children: List.generate(
                                            5,
                                            (index) {
                                              return Icon(
                                                Icons.star,
                                                size: 13,
                                                color: Color(0xff1F8BA7),
                                              );
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          '4.0',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.57)),
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          '2054  Просмостр',
                                          style: TextStyle(
                                              color: Color(0xff586366)),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.schedule,
                                          color: Color(0xff9E0000),
                                          size: 23,
                                        ),
                                        SizedBox(width: 7),
                                        Text(
                                          '30 min',
                                          style: TextStyle(
                                            color: Color(0xff9E0000),
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Image(
                                          image: AssetImage(
                                              'assets/images/Ellipse.png'),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'normal',
                                          style: TextStyle(
                                            color: Color(0xff9E0000),
                                          ),
                                        ),
                                        SizedBox(width: 22),
                                        Icon(
                                          Icons.location_on,
                                          size: 17,
                                          color: Color(0xff1F8BA7),
                                        ),
                                        Text(
                                          manu[index].km.toString(),
                                          style: TextStyle(
                                            color: Color(0xff1F8BA7),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                height: 78,
                                margin:
                                    const EdgeInsets.only(left: 20, right: 70),
                                decoration: BoxDecoration(
                                  color: const Color(0xffD9D9D5),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Container(
                    height: 210,
                    width: 500,
                    child: PageView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              height: 190,
                              margin: EdgeInsets.only(right: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/papa.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      manu[index].name,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 8),
                                        Wrap(
                                          children: List.generate(
                                            5,
                                            (index) {
                                              return Icon(
                                                Icons.star,
                                                size: 13,
                                                color: Color(0xff1F8BA7),
                                              );
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          '4.0',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.57)),
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          '2054  Просмостр',
                                          style: TextStyle(
                                              color: Color(0xff586366)),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        SizedBox(width: 7),
                                        Icon(
                                          Icons.schedule,
                                          color: Color(0xff9E0000),
                                          size: 23,
                                        ),
                                        SizedBox(width: 7),
                                        Text(
                                          '30 min',
                                          style: TextStyle(
                                            color: Color(0xff9E0000),
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Image(
                                          image: AssetImage(
                                              'assets/images/Ellipse.png'),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'normal',
                                          style: TextStyle(
                                            color: Color(0xff9E0000),
                                          ),
                                        ),
                                        SizedBox(width: 22),
                                        Icon(
                                          Icons.location_on,
                                          size: 17,
                                          color: Color(0xff1F8BA7),
                                        ),
                                        Text(
                                          manu[index].km.toString(),
                                          style: TextStyle(
                                            color: Color(0xff1F8BA7),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                height: 78,
                                margin:
                                    const EdgeInsets.only(left: 20, right: 70),
                                decoration: BoxDecoration(
                                  color: const Color(0xffD9D9D5),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 190,
          margin: EdgeInsets.only(right: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage(manu[index].img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            child: Column(
              children: [
                Text(
                  manu[index].name,
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    SizedBox(width: 8),
                    Wrap(
                      children: List.generate(
                        5,
                        (index) {
                          return Icon(
                            Icons.star,
                            size: 13,
                            color: Color(0xff1F8BA7),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '4.0',
                      style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.57)),
                    ),
                    SizedBox(width: 20),
                    Text(
                      '2054  Просмостр',
                      style: TextStyle(color: Color(0xff586366)),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 7),
                    Icon(
                      Icons.schedule,
                      color: Color(0xff9E0000),
                      size: 23,
                    ),
                    SizedBox(width: 7),
                    Text(
                      '30 min',
                      style: TextStyle(
                        color: Color(0xff9E0000),
                      ),
                    ),
                    SizedBox(width: 15),
                    Image(
                      image: AssetImage('assets/images/Ellipse.png'),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'normal',
                      style: TextStyle(
                        color: Color(0xff9E0000),
                      ),
                    ),
                    SizedBox(width: 22),
                    Icon(
                      Icons.location_on,
                      size: 17,
                      color: Color(0xff1F8BA7),
                    ),
                    Text(
                      manu[index].km.toString(),
                      style: TextStyle(
                        color: Color(0xff1F8BA7),
                      ),
                    )
                  ],
                )
              ],
            ),
            height: 78,
            margin: const EdgeInsets.only(left: 20, right: 70),
            decoration: BoxDecoration(
              color: const Color(0xffD9D9D5),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
