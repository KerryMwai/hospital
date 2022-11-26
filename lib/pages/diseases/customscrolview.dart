import 'package:flutter/material.dart';

class CustomScroviewPage extends StatelessWidget {
  const CustomScroviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 60,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.more_vert),
                Icon(Icons.house_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                child: const Center(
                  child: Text(
                    "Malaria",
                    style: TextStyle(
                        fontSize: 22, fontFamily: "Roboto", letterSpacing: 2.0),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.amberAccent,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/17.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Tropical disaese",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2.0),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const Text(
                    "Ethiopia is a country with higher human population estimated to be more than 94 million [1]. Нis huge population rely mainly onagriculture including their livestock income. Нe country is believed tohave the largest livestock population in Africa [2,3]. An estimateshowed, the country is a home for about 54 million cattle, 25.5 millionsheep and 24.06 million goats. From the total cattle population 98.95%are local breeds and the remaining are hybrid and exotic breeds. 99.8%of the sheep and nearly all goat population of the country are localbreeds [2]. Endogenous cattle are thought to be adapted to prevailingenvironmental condition though their milk production potential islower (on average 213 kg/cow per lactation) [4] than that of exoticbreeds in temperate region (on average 5800 kg/cow/lactation) [5].Livestock performs multiple functions in the Ethiopian household economy by providing food, input for crop production and soil fertilitymanagement, cash income as well as in promoting savings, fuel, socialfunctions, and employments. With these multiple functions, livestockcan serve as a vehicle for improving food security and better livelihoodof the rural population [6].Ethiopia produces approximately 3.2 billion litres from 10 millionmilking cows–an average of 1.54 litres per cow per day over a lactationperiod of 180 days [7]. In the country, urban and peri-urban dairyproduction system are emerging as an important component of themilk production system contributing immensely toward filling thelarger gap for milk and milk product supplement. Нese is evident inurban centers where consumption of milk and milk product isremarkably high [4]. In the capital city, Addis Ababa, the highestexpenditure group, which makes up around 10% of the market,consumes 38% of the milk. On the other hand, 61% of the populationwho are in the lowest expenditure group, consumed only 23% of themilk. To fulfill the increased demand of milk for urban and peri-urbaneconsumers of the country, significant eوٴect has been made to increaseethe genetic make-up of local dairy cow by improving dairy breed [8].eEven though, the livestock sector has a significant contribution to theenational economy, animal productivity is extremely low. Нis isevidenced by the very low per capita consumption of protein and avery low growth rate of milk and meat production that is below therecommended average rate needed to feed the growing population [9].Нe low productivity in dairy sector is due to many factorsmentioned for the existing problems in the country. Нis is associatedwith multiple inter-related factors such as inadequate feed andnutrition, widespread diseases, poor genetic potential of local breeds,market problem, ineٹcienc\ of livestock development services withrespect to credit, extension, marketing, and infrastructure [10].Furthermore, in depth identification of those problems in the sectorregarding husbandry and health issue is important. Нose identifiedproblems correlated to distinct types of production scale is alsoimportant to tackle the existing problems in the dairy farm industry.Нerefore the objective of this study was aimed to understand theconditions of dairy production systems and assess major problemsobserved in dairy farms in Addis Ababa."),
              )
            ],
          ))
        ],
      ),
    );
  }
}
