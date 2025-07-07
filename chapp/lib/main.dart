import 'package:chapp/features/home/presentation/initialview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/home/presentation/failureview.dart';
import 'features/home/presentation/loadingview.dart';
import 'features/home/presentation/succesview.dart';

void main(){
  runApp(const Pol());

}

class Pol extends StatelessWidget {
  const Pol({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadSuccess) {
              return SuccesV(response: state.response);
            } else if (state is HomeLoadInProgress) {
              return const Loadingg();
            } else if (state is HomeLoadFailure) {
              return const FailureV();
            }
            return const InicialV();
          },
        ),
      ),
    );
  }
}


