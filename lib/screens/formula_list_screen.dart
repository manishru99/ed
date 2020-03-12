import 'package:flutter/material.dart';

import '../widgets/formula_title.dart';
import './casting_weight_screen.dart';
import './casting_module_screen.dart';
import './choke_area_screen.dart';
import './pouring_time_screen.dart';
import './sprue_diameter_screen.dart';

class FormulaListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Formula App',
        ),
        backgroundColor: Color(0xff6d0c74),
      ),
      body: Container(
          child: GridView(
        padding: const EdgeInsets.all(25),
        children: <Widget>[
          FormulaTitle(
            title: '1. Casting Modules',
            color1: Color(0xffcc2b5e),
            color2: Color(0xff753a88),
            routeHandle: CastingModuleScreen.routeName,
          ),
          FormulaTitle(
            title: '2. Weight of Casting',
            color1: Color(0xff43cea2),
            color2: Color(0xff185a9d),
            routeHandle: CastingWeightScreen.routeName,
          ),
          FormulaTitle(
            title: '3. Pouring Time',
            color1: Color(0xfffad961),
            color2: Color(0xfff76b1c),
            routeHandle: PouringTimeScreen.routeName,
          ),
          FormulaTitle(
            title: '4. Choke Area',
            color1: Color(0xffffb88c),
            color2: Color(0xffde6262),
            routeHandle: ChokeAreaScreen.routeName,
          ),
          // FormulaTitle(
          //   title: 'Law of Continuity',
          //   color1: Color(0xff4568dc),
          //   color2: Color(0xffb06ab3),
          //   routeHandle: LawOfContinuity.routeName,
          // ),
          FormulaTitle(
            title: '5. Spure diameter at top',
            color1: Color(0xffa8e063),
            color2: Color(0xff56ab2f),
            routeHandle: SprueDiameterScreen.routeName,
          ),
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      )),
    );
  }
}
