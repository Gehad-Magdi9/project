import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/featuers/authntication/verfication/controller/cubit/verfication_cubit.dart';
import 'package:project/featuers/authntication/verfication/view/component/verfication-widget.dart';

class VerficationPage extends StatelessWidget {
  const VerficationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<VerficationCubit>(
        create: (context) => VerficationCubit(),
        child: BlocBuilder<VerficationCubit, VerficationState>(
          builder: (context, state) {
            final VerficationCubit controller =context.read<VerficationCubit>();
            return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 34, 109, 171),
                title: const Text("Verfication",
                    style: TextStyle(fontSize: 25, color: Colors.black)),
                centerTitle: true,
              ),
              body: VerficationWidget(
                controller: controller,
              ),
            );
          },
        ),
      ),
    );
  }
}
