import 'package:flutter/material.dart';
import 'package:flutter_auth/layout/cupet/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../App Screens/Drawer.dart';
import 'cupet/cupet.dart';

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewCubit(),
      child: BlocConsumer<NewCubit, statesnewapp>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = NewCubit.get(context);
            return Scaffold(
              drawer: NavBar(),
              body: cubit.screen[cubit.curintindex],
              appBar: AppBar(
                backgroundColor: Color(0xFF6F35A5),
                title: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu_book_outlined,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Books Library'),
                    ],
                  ),
                ),
                automaticallyImplyLeading: false,
              ),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit.curintindex,
                onTap: (index) {
                  cubit.changeitmenav(index);
                },
                items: cubit.bottemnavitmes,
              ),
            );
          }),
    );
  }
}
