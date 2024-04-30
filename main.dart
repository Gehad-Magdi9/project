void main() async {
    sharedpreference sharedpreference = await sharedpreference.getinstance();
    bool onboarding = sharedpreference.getbool('onboarding') ?? false;
    materialapp materialapp = materialapp{ 
    ongenrateroute: myroute.ongenrateroute,
    ongenrateinitialroute: (_) => myroute.initroute,
    }
runApp(materialapp);
};
class myroute {
    static List<route> initroute = [
        materialpageroute<dynamic>(
        builder (buildcontext context) => const onboardingpage(),
        ),
        materialpageroute<dynamic>(
        builder (buildcontext context) => const registerationpage(),
        ),
        materialpageroute<dynamic>(
        builder (buildcontext context) => const verficationpage(),
        ),
    ];
    static route<dynamic> ongenrateroute(routesetting setting) {
        switch (setting.name){}
    }
}