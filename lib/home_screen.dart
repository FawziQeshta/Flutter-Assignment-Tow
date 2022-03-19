import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isVisibleMenuIcon = true;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: MyDrawer(),
      key: _key,
      appBar: updateAppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if(orientation == Orientation.portrait) {
            hideOrShowMenu(true);
            return Container(color: Colors.red,);
          } else {
            hideOrShowMenu(false);
            return Container(
              child: Row(
                children: [
                  Expanded(
                    child: ListView(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 40),
                          child: Text(
                            'FIRST ELEMENT',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 40),
                          child: Text(
                            'SECOND ELEMENT',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 40),
                          child: Text(
                            'THIRD ELEMENT',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 40),
                          child: Text(
                            'FOURTH ELEMENT',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 40),
                          child: Text(
                            'FIFTH ELEMENT',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ],
                      physics: const NeverScrollableScrollPhysics(),
                    ),
                  ),
                  Expanded(child: Container(color: Colors.red,))
                ],
              ),
            );
          }
        },
      ),
    );
  }

  void hideOrShowMenu(bool visible) {
    SchedulerBinding.instance!.addPostFrameCallback((_) {
        setState(() {
            isVisibleMenuIcon = visible;
        });
    });
  }

  PreferredSizeWidget updateAppBar() {
    if(isVisibleMenuIcon == false) {
      return AppBar(
        toolbarHeight: 70,
        title: const Text(
          'SECOND ASSIGNMENT',
        ),
        backgroundColor: Colors.purpleAccent,
        automaticallyImplyLeading: false,
      );
    } else {
      return AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: const Text(
          'SECOND ASSIGNMENT',
        ),
        backgroundColor: Colors.purpleAccent,
        leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () => _key.currentState!.openDrawer()),
      );
    }
  }

}


class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white70,
      child: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 110, left: 40),
            child: Text(
              'FIRST ELEMENT',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 40),
            child: Text(
              'SECOND ELEMENT',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 40),
            child: Text(
              'THIRD ELEMENT',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 40),
            child: Text(
              'FOURTH ELEMENT',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 40),
            child: Text(
              'FIFTH ELEMENT',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

}

