import 'package:flutter/material.dart';
import 'package:flutter_auth/App%20Screens/Books.dart';
import 'package:flutter_auth/App%20Screens/Home_main.dart';
import 'package:flutter_auth/App%20Screens/Favorites.dart';
import 'package:flutter_auth/App%20Screens/Categories.dart';
import 'package:flutter_auth/layout/cupet/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewCubit extends Cubit<statesnewapp> {
  NewCubit() : super(IntionstateNews());
  static NewCubit get(contex) => BlocProvider.of(contex);
  int curintindex = 0;

  List<BottomNavigationBarItem> bottemnavitmes = [
    BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Main'),
    BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Categories'),
    BottomNavigationBarItem(
        icon: Icon(Icons.menu_book_sharp), label: 'My Books'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
  ];
  List<Widget> screen = [
    Home_main(),
    Categories(),
    Books(),
    Favorites(),
  ];
  void changeitmenav(int index) {
    curintindex = index;
    emit(navebottomstate());
  }
}