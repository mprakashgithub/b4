import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/providers/popular_category_provider.dart';
import 'app_data/app_colors.dart';
import 'app_data/app_text_style.dart';
import 'complete_your_profile.dart';

class Profession extends StatefulWidget {
  const Profession({Key? key}) : super(key: key);

  @override
  State<Profession> createState() => _ProfessionState();
}

class _ProfessionState extends State<Profession> {
  TextEditingController categoryController = TextEditingController();
  late PopularCategoryProvider popularCategoryProvider;
  double? _width, _height;
  String? category;
  final List<String>? _choices = [
    "Personal Care",
    "Banquets",
    "Daily needs",
    "Event Organizer",
    "Industrial Products",
    "Labs",
    "Travel",
    "Transporters",
    "Shopping",
    "Infrastructure & Real State",
    "Engineering",
    "Security"
  ];
  // int _choiceIndex = 0;
  // List<String> selectedCategories = [];
  List<String>? dublicateCategories = [];
  String searchString = "";
  // void addDataToList() {
  //   popularCategoryProvider.list.forEach((element) {
  //     dublicateCategories!.add(element.categoryName);
  //   });
  // }

  @override
  void initState() {
    super.initState();
    popularCategoryProvider =
        Provider.of<PopularCategoryProvider>(context, listen: false);

    // dublicateCategories = popularCategoryProvider.list;
    // popularCategoryProvider.popularCategoryApi();
    // print(popularCategoryProvider.popularCategoryApi());

    // dublicateCategories.add(popularCategoryProvider.list.)
    // popularCategoryProvider.list.forEach((element) {
    //   popularCategoryProvider.dublicateCategories.add(element.categoryName);
    // });
    dublicateCategories = _choices;
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Consumer<PopularCategoryProvider>(
        builder: (context, provider, child) {
      // provider.duplicateListData();
      // dublicateCategories = provider.dublicateCategories;
      return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 30,
                color: AppColors.red,
              )),
          title: Text(
            "Profession",
            style: AppTextStyle.font16OpenSansRegularBlackTextStyle,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ActionChip(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CompleteYourProfile(
                                  selectedCategories:
                                      provider.selectedCategories,
                                )));
                    // Navigator.pushNamed(
                    //     context, AppStrings.routeToSetYourCallRates);
                  },
                  backgroundColor: AppColors.backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  side: BorderSide(color: AppColors.red),
                  label: Text(
                    "Save",
                    style: AppTextStyle.font14OpenSansRegularRedTextStyle,
                  )),
            )
          ],
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Consumer<PopularCategoryProvider>(
              builder: (context, provider, child) {
            return Container(
              // height: _height! * 0.80,
              padding: EdgeInsets.only(left: 20, right: 20),
              width: _width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  provider.selectedCategories.isNotEmpty
                      ? Container(
                          padding: EdgeInsets.all(10),
                          width: _width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: AppColors.grey)),
                          child: Wrap(
                            children: List.generate(
                                provider.selectedCategories.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  print(provider.selectedCategories[index]);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Chip(
                                      backgroundColor: AppColors.white,
                                      onDeleted: () {
                                        print(index);
                                        print(
                                            provider.selectedCategories[index]);

                                        dublicateCategories!.add(
                                            provider.selectedCategories[index]);
                                        provider.deleteData(index);
                                      },
                                      deleteIconColor: AppColors.red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      elevation: 2,
                                      label: Text(
                                          provider.selectedCategories[index])),
                                ),
                              );
                            }),
                          ),
                        )
                      : Container(),
                  categoryTextFormField(),
                  Wrap(
                    // direction: Axis.vertical,
                    // alignment: WrapAlignment.center,
                    // spacing:8.0,
                    // runAlignment:WrapAlignment.center,
                    // runSpacing: 8.0,
                    // crossAxisAlignment: WrapCrossAlignment.center,
                    // textDirection: TextDirection.rtl,
                    // verticalDirection: VerticalDirection.up,
                    children:
                        List.generate(dublicateCategories!.length, (index) {
                      return dublicateCategories![index]
                              .toLowerCase()
                              .contains(searchString)
                          ? GestureDetector(
                              onTap: () {
                                print(dublicateCategories![index]);
                                provider
                                    .addDataToList(dublicateCategories![index]);
                                // provider.selectedCategories
                                //     .add(dublicateCategories![index]);
                                // setState(() {
                                // selectedCategories
                                //     .add(dublicateCategories![index]);
                                // dublicateCategories!.removeAt(index);//Working
                                dublicateCategories!.removeWhere((item) =>
                                    item == dublicateCategories![index]);
                                // });
                                print(provider.selectedCategories);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Chip(
                                    backgroundColor: AppColors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    side: BorderSide(color: AppColors.grey),
                                    label: Text(dublicateCategories![index])),
                              ),
                            )
                          : Container();
                    }),
                  ),
                ],
              ),
            );
          }),
        ),
      );
    });
  }

  Widget categoryTextFormField() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            "Categories",
            style: TextStyle(color: AppColors.red),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: AppColors.grey)),
          child: TextFormField(
            controller: categoryController,
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            cursorColor: AppColors.red,
            cursorHeight: 20,
            // inputFormatters: [
            //   LengthLimitingTextInputFormatter(10),
            // ],
            decoration: InputDecoration(
              hintText: 'Enter Category name here',
              hintStyle: AppTextStyle.font16AsapMediumBlueDarkTextStyle,
              labelStyle: TextStyle(color: AppColors.white),
              contentPadding: EdgeInsets.only(left: 10),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.white),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.white),
              ),
            ),
            onChanged: (value) {
              // category = value;
              setState(() {
                searchString = value.toLowerCase();
              });
            },
          ),
        ),
      ],
    );
  }
}


// import 'package:callme_ve/model/repository/profession_repo.dart';
// import 'package:callme_ve/view/app_data/app_colors.dart';
// import 'package:callme_ve/view/app_data/app_strings.dart';
// import 'package:callme_ve/view/app_data/app_text_style.dart';
// import 'package:callme_ve/view/complete_your_profile.dart';
// import 'package:callme_ve/view_model/providers/profession_provider.dart';

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Profession extends StatefulWidget {
//   const Profession({Key? key}) : super(key: key);

//   @override
//   State<Profession> createState() => _ProfessionState();
// }

// class _ProfessionState extends State<Profession> {
//   // TextEditingController categoryController = TextEditingController();
//   double? _width, _height;
//   String? category;

//   List<String> selectedCategories = [];
//   List<String>? dublicateCategories;
//   String searchString = "";
//   ProfessionProvider? professionProvider;

//   @override
//   void initState() {
//     super.initState();
//     // professionProvider.setDuplicateCategories();
//     professionProvider = ProfessionProvider();
//     professionProvider!.duplicateCategories = AppStrings.choices;
//     // dublicateCategories = AppStrings.choices;
//   }

//   @override
//   Widget build(BuildContext context) {
//     _height = MediaQuery.of(context).size.height;
//     _width = MediaQuery.of(context).size.width;
//     return Scaffold(
//         backgroundColor: AppColors.backgroundColor,
//         appBar: AppBar(
//           backgroundColor: AppColors.backgroundColor,
//           leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: Icon(
//                 Icons.arrow_back,
//                 size: 30,
//                 color: AppColors.red,
//               )),
//           title: Text(
//             AppStrings.txtProfession,
//             style: AppTextStyle.font16OpenSansRegularBlackTextStyle,
//           ),
//           actions: [
//             Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Consumer<ProfessionProvider>(
//                     builder: (context, provider, child) {
//                   provider.duplicateCategories = AppStrings.choices;
//                   return ActionChip(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => CompleteYourProfile(
//                                       selectedCategories:
//                                           provider.selectedCategories,
//                                     )));
//                       },
//                       backgroundColor: AppColors.backgroundColor,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20)),
//                       side: BorderSide(color: AppColors.red),
//                       label: Text(
//                         AppStrings.txtSave,
//                         style: AppTextStyle.font14OpenSansRegularRedTextStyle,
//                       ));
//                 }))
//           ],
//           centerTitle: true,
//           elevation: 0,
//         ),
//         body: SingleChildScrollView(child:
//             Consumer<ProfessionProvider>(builder: (context, provider, child) {
//           provider.duplicateCategories = AppStrings.choices;
//           return Container(
//             // height: _height! * 0.80,
//             padding: EdgeInsets.only(left: 20, right: 20),
//             width: _width,
//             decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
//             child: Column(
//               children: [
//                 provider.selectedCategories.isNotEmpty
//                     ? Container(
//                         padding: EdgeInsets.all(10),
//                         width: _width,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             border: Border.all(color: AppColors.grey)),
//                         child: Wrap(
//                           children: List.generate(
//                               provider.selectedCategories.length, (index) {
//                             return GestureDetector(
//                               onTap: () {
//                                 print(provider.selectedCategories[index]);
//                               },
//                               child: Padding(
//                                 padding: const EdgeInsets.only(right: 10),
//                                 child: Chip(
//                                     backgroundColor: AppColors.white,
//                                     onDeleted: () {
//                                       print(index);
//                                       // setState(() {
//                                       provider.duplicateCategories!
//                                           .add(selectedCategories[index]);
//                                       // provider.selectedCategories
//                                       //     .removeAt(index);
//                                       print(
//                                           "Duplicate Categories : ${provider.duplicateCategories}");
//                                       print(
//                                           "Selected Categories : ${provider.selectedCategories}");
//                                       provider.selectedCategories.removeWhere(
//                                           (item) =>
//                                               item ==
//                                               provider
//                                                   .selectedCategories[index]);
//                                       print(
//                                           "Selected Categories : ${provider.selectedCategories}");
//                                     },
//                                     deleteIconColor: AppColors.red,
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(5)),
//                                     elevation: 2,
//                                     label: Text(
//                                         provider.selectedCategories[index])),
//                               ),
//                             );
//                           }),
//                         ),
//                       )
//                     : Container(),
//                 categoryTextFormField(provider),
//                 Wrap(
//                   children: List.generate(provider.duplicateCategories!.length,
//                       (index) {
//                     return provider.duplicateCategories![index]
//                             .toLowerCase()
//                             .contains(searchString)
//                         ? GestureDetector(
//                             onTap: () {
//                               print(provider.duplicateCategories![index]);
//                               setState(() {
//                                 provider.selectedCategories
//                                     .add(provider.duplicateCategories![index]);
//                                 // dublicateCategories!.removeAt(index);//Working
//                                 provider.duplicateCategories!.removeWhere(
//                                     (item) =>
//                                         item ==
//                                         provider.duplicateCategories![index]);
//                               });
//                               print(provider.selectedCategories);
//                             },
//                             child: Padding(
//                               padding: const EdgeInsets.only(right: 10),
//                               child: Chip(
//                                   backgroundColor: AppColors.white,
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(5)),
//                                   side: BorderSide(color: AppColors.grey),
//                                   label: Text(
//                                       provider.duplicateCategories![index])),
//                             ),
//                           )
//                         : Container();
//                   }),
//                 ),
//               ],
//             ),
//           );
//         })));
//   }

//   Widget categoryTextFormField(ProfessionProvider provider) {
//     return Column(
//       children: [
//         Container(
//           margin: EdgeInsets.only(top: 10, bottom: 10),
//           alignment: Alignment.centerLeft,
//           child: Text(
//             AppStrings.txtCategories,
//             style: TextStyle(color: AppColors.red),
//           ),
//         ),
//         Container(
//           height: 50,
//           margin: EdgeInsets.only(bottom: 10),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(4),
//               border: Border.all(color: AppColors.grey)),
//           child: TextFormField(
//             controller: ProfessionRepo.categoryController,
//             keyboardType: TextInputType.emailAddress,
//             autofillHints: const [AutofillHints.email],
//             cursorColor: AppColors.red,
//             cursorHeight: 20,
//             // inputFormatters: [
//             //   LengthLimitingTextInputFormatter(10),
//             // ],
//             decoration: InputDecoration(
//               hintText: AppStrings.txtEnterCategoryNameHere,
//               hintStyle: AppTextStyle.font16AsapMediumBlueDarkTextStyle,
//               labelStyle: TextStyle(color: AppColors.white),
//               contentPadding: EdgeInsets.only(left: 10),
//               enabledBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: AppColors.white),
//               ),
//               focusedBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: AppColors.white),
//               ),
//               border: UnderlineInputBorder(
//                 borderSide: BorderSide(color: AppColors.white),
//               ),
//             ),
//             onChanged: (value) {
//               // category = value;
//               provider.searchResult(value);
//               // provider.selectedCategories.where((element) =>
//               //     element.toLowerCase().contains(value.toLowerCase()));
//               // setState(() {
//               //   searchString = value.toLowerCase();
//               // });
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
