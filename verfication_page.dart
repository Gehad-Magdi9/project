class verficationpage extends statelesswiddget{
    const verficationpage ({super.key})
@override
   widget build(buildcontext context){
    create (context) => verficationcubit();
    child: blocbuilder<verficationcubit , verficationstate>(
        builder(context , state){
           final verficationcubit cubit = context.read<verficationcubit>();
        }
    )
    return scafold(
      body: column(
        children:
          text("Enter Your Code")
          PinCodeTextField( 
           appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 6,
                    obscureText: true,
                    obscuringCharacter: '*',
                    obscuringWidget: const FlutterLogo(
                      size: 24,
                    ),
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 3) {
                        return "I'm from validator";
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                    ),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    controller: cubit.pincodecontroller,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onCompleted: (v) {debugPrint("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      });
                      iconbutton(onpressed: cubit.ontapconfirm , icon: Icon(Icons.done))
                    },
                  ),
      ),
      )

    );
   }
}