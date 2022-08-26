import 'package:b4/view/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/repository/complete_your_profile_repo.dart';
import '../view_model/providers/complete_your_profile_provider.dart';
import 'app_data/app_colors.dart';
import 'app_data/app_strings.dart';
import 'app_data/app_text_style.dart';

class CompleteYourProfile extends StatefulWidget {
  final List<String>? selectedCategories;
  const CompleteYourProfile({Key? key, this.selectedCategories})
      : super(key: key);

  @override
  State<CompleteYourProfile> createState() => _CompleteYourProfileState();
}

class _CompleteYourProfileState extends State<CompleteYourProfile> {
  double? _width, _height;
  bool yesValue = false;
  bool noValue = true;
  String? name, username;

  @override
  void initState() {
    print("selected categories" + widget.selectedCategories.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            // height: _height! * 0.80,
            width: _width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                SizedBox(
                  height: _height! * 0.06,
                ),
                Text(AppStrings.txtCompleteYourProfile),
                SizedBox(
                  height: _height! * 0.03,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                                "assets/images/app_images/us_placeholder.png"))),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: AppColors.red.withOpacity(0.6),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18),
                                  bottomRight: Radius.circular(8))),
                          child: Icon(
                            Icons.camera_alt_rounded,
                            color: AppColors.white,
                            size: 20,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: _height! * 0.03,
                ),
                nameTextFormField(),
                usernameTextFormField(),
                professionTextFormField(),
                widget.selectedCategories != null
                    ? Container(
                        margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        width: _width,
                        child: Wrap(
                          children: List.generate(
                              widget.selectedCategories!.length, (index) {
                            return GestureDetector(
                              onTap: () {
                                print(widget.selectedCategories![index]);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Chip(
                                    backgroundColor: AppColors.white,
                                    onDeleted: () {
                                      print(index);
                                      print(widget.selectedCategories![index]);
                                      setState(() {
                                        widget.selectedCategories!
                                            .removeAt(index);
                                      });
                                    },
                                    deleteIconColor: AppColors.red,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    // side: BorderSide(color: AppColors.grey),
                                    label: Text(
                                        widget.selectedCategories![index])),
                              ),
                            );
                          }),
                        ),
                      )
                    : Container(),
                youtubeChannelWidget()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomWidget(),
    );
  }

  Widget nameTextFormField() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, bottom: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            AppStrings.txtFullName,
            style: TextStyle(color: AppColors.black.withOpacity(0.8)),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: AppColors.grey)),
          child: TextFormField(
            controller: CompleteYourProfileRepo.nameController,
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            cursorColor: AppColors.white,
            // inputFormatters: [
            //   LengthLimitingTextInputFormatter(10),
            // ],
            decoration: InputDecoration(
              hintText: AppStrings.txtJohnDoe,
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
              name = value;
            },
          ),
        ),
      ],
    );
  }

  Widget usernameTextFormField() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, bottom: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            AppStrings.txtCM4HandleUsername,
            style: TextStyle(color: AppColors.black.withOpacity(0.8)),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: AppColors.grey)),
          child: TextFormField(
            controller: CompleteYourProfileRepo.usernameController,
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            cursorColor: AppColors.white,
            // inputFormatters: [
            //   LengthLimitingTextInputFormatter(10),
            // ],
            decoration: InputDecoration(
              hintText: AppStrings.txtHintJohnDoe,
              hintStyle: AppTextStyle.font16AsapMediumBlueDarkTextStyle,
              labelStyle: TextStyle(color: AppColors.white),
              contentPadding: EdgeInsets.only(top: 14, left: 10),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Text(
                  AppStrings.txtCm4,
                  style: AppTextStyle.font14AsapRegularRedTextStyle,
                ),
              ),
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
              username = value;
            },
          ),
        ),
      ],
    );
  }

  Widget professionTextFormField() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            AppStrings.txtProfession,
            style: TextStyle(color: AppColors.black.withOpacity(0.8)),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppStrings.routeToProfession);
          },
          child: Container(
              height: 50,
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppColors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.txtAddProfession,
                    style: AppTextStyle.font14OpenSansRegularBlackTextStyle,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.red,
                  )
                ],
              )),
        ),
      ],
    );
  }

  Widget youtubeChannelWidget() {
    return Consumer<CompleteYourProfileProvider>(
        builder: (context, provider, child) {
      bool isYes = provider.getYesValue();
      print(isYes);
      return Column(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Text(AppStrings.txtDoYouHaveYoutubeChannel)),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Checkbox(
                  value: isYes,
                  activeColor: AppColors.red,
                  focusColor: AppColors.white,
                  side: const BorderSide(color: Colors.red),
                  onChanged: (bool? value) {
                    provider.setNoValue(false);
                    provider.setYesValue(true);
                  },
                ),
                Text(AppStrings.txtYes),
                SizedBox(
                  width: _width! * 0.25,
                ),
                Checkbox(
                  value: !isYes,
                  activeColor: AppColors.red,
                  focusColor: AppColors.white,
                  side: const BorderSide(color: Colors.red),
                  onChanged: (bool? value) {
                    provider.setNoValue(true);
                    provider.setYesValue(false);
                  },
                ),
                Text(AppStrings.txtNo),
              ],
            ),
          )
        ],
      );
    });
  }

  Widget bottomWidget() {
    return Consumer<CompleteYourProfileProvider>(
        builder: (context, provider, child) {
      return Container(
        width: _width! * 0.80,
        margin: EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
        child: CustomButton(
          text: AppStrings.txtSave,
          buttonHeight: 45,
          borderRadiusValue: 6.0,
          buttonColor: CompleteYourProfileRepo.nameController.text.isEmpty ||
                  CompleteYourProfileRepo.usernameController.text.isEmpty ||
                  widget.selectedCategories == null
              ? AppColors.grey.withOpacity(0.6)
              : AppColors.red,
          onClick: () {
            final snackBar = SnackBar(
              content: const Text(AppStrings.txtPleaseFillAboveInformations),
              backgroundColor: (Colors.black),
              duration: Duration(seconds: 1),
              action: SnackBarAction(
                label: AppStrings.txtDismiss,
                textColor: AppColors.red,
                onPressed: () {},
              ),
            );
            CompleteYourProfileRepo.nameController.text.isEmpty ||
                    CompleteYourProfileRepo.usernameController.text.isEmpty
                ? ScaffoldMessenger.of(context).showSnackBar(snackBar)
                : Navigator.pushNamed(
                    context, AppStrings.routeToSetYourCallRates);
            // : provider.completeYourProfileApi(
            //     context,
            //     CompleteYourProfileRepo.nameController.text,
            //     CompleteYourProfileRepo.usernameController.text + "@cm4",
            //     "1315698",
            //     "7",
            //     "",
            //     "0.4");
          },
        ),
      );
    });
  }
}
