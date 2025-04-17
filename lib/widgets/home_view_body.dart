import 'package:coffee_shop_app/cubits/product_cubit/product_cubit.dart';
import 'package:coffee_shop_app/cubits/product_cubit/product_state.dart';
import 'package:coffee_shop_app/helper/show_snack_bar.dart';
import 'package:coffee_shop_app/widgets/bad_requiest.dart';
import 'package:coffee_shop_app/widgets/custom_app_bar.dart';
import 'package:coffee_shop_app/widgets/custom_container_widget.dart';
import 'package:coffee_shop_app/widgets/custom_stack_home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {
        if (state is FailureProduct) {
          showSnackMessage(context, state.errMessage);
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: BlocProvider.of<ProductCubit>(context).isLoading,
          child: Column(
            children: [
              CutomAppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: CustomContainerWidget(),
              ),
              CustomStackHomeWidget(),
            ],
          ),
        );
      },
    );
  }
}




//