import 'package:class_works/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewmodel(),
        builder: (context, viewModel, child) {
          return Scaffold(
              appBar: AppBar(
                title: Text(viewModel.title),
              ),
              body: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.amber,
                child: Column(
                  children: [
                    Text(viewModel.title),
                  ],
                ),
              ));
        });
  }
}
