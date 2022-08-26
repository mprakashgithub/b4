import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

import 'app_data/app_colors.dart';
import 'app_data/app_strings.dart';
import 'app_data/app_text_style.dart';

class SetYourOnlineHours extends StatefulWidget {
  const SetYourOnlineHours({Key? key}) : super(key: key);

  @override
  State<SetYourOnlineHours> createState() => _SetYourOnlineHoursState();
}

class _SetYourOnlineHoursState extends State<SetYourOnlineHours> {
  double? _width, _height;
  bool _switchValue = true;
  bool addNewSlotForAllDays = false;
  bool addNewSlotForSatDay = false;
  bool addNewSlotForSunDay = false;
  bool addNewSlotForMonDay = false;
  bool addNewSlotForTueDay = false;
  bool addNewSlotForWedDay = false;
  bool addNewSlotForThuDay = false;
  bool addNewSlotForFriDay = false;
  bool _customDaysswitchValue = false;
  bool _saturdaySwitchValue = true;
  bool _sundaySwitchValue = true;
  bool _mondaySwitchValue = true;
  bool _tuedaySwitchValue = true;
  bool _weddaySwitchValue = true;
  bool _thudaySwitchValue = true;
  bool _fridaySwitchValue = true;

  TimeOfDay selectedTime = const TimeOfDay(hour: 09, minute: 0);
  DateTime allDayStartTime = DateTime.parse("2012-02-27 09:00");
  DateTime allDayEndTime = DateTime.parse("2012-02-27 18:00");
  DateTime satDayStartTime = DateTime.parse("2012-02-27 09:30");
  DateTime satDayEndTime = DateTime.parse("2012-02-27 09:30");
  DateTime sunDayStartTime = DateTime.parse("2012-02-27 09:30");
  DateTime sunDayEndTime = DateTime.parse("2012-02-27 09:30");
  DateTime monDayStartTime = DateTime.parse("2012-02-27 09:30");
  DateTime monDayEndTime = DateTime.parse("2012-02-27 09:30");
  DateTime tueDayStartTime = DateTime.parse("2012-02-27 09:30");
  DateTime tueDayEndTime = DateTime.parse("2012-02-27 09:30");
  DateTime wedDayStartTime = DateTime.parse("2012-02-27 09:30");
  DateTime wedDayEndTime = DateTime.parse("2012-02-27 09:30");
  DateTime thuDayStartTime = DateTime.parse("2012-02-27 09:30");
  DateTime thuDayEndTime = DateTime.parse("2012-02-27 09:30");
  DateTime friDayStartTime = DateTime.parse("2012-02-27 09:30");
  DateTime friDayEndTime = DateTime.parse("2012-02-27 09:30");

  ///Add Slot DateTime var
  DateTime allDayStartTimeAddSlot = DateTime.parse("2012-02-27 09:00");
  DateTime allDayEndTimeAddSlot = DateTime.parse("2012-02-27 18:00");
  DateTime satDayStartTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime satDayEndTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime sunDayStartTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime sunDayEndTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime monDayStartTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime monDayEndTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime tueDayStartTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime tueDayEndTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime wedDayStartTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime wedDayEndTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime thuDayStartTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime thuDayEndTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime friDayStartTimeAddSlot = DateTime.parse("2012-02-27 09:30");
  DateTime friDayEndTimeAddSlot = DateTime.parse("2012-02-27 09:30");

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
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
          AppStrings.txtSetYourOnlineHours,
          style: AppTextStyle.font16OpenSansRegularBlackTextStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ActionChip(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppStrings.routeToBottomNavRouter);
                },
                backgroundColor: AppColors.backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                side: BorderSide(color: AppColors.red),
                label: Text(
                  AppStrings.txtSubmit,
                  style: AppTextStyle.font14OpenSansRegularRedTextStyle,
                )),
          )
        ],
        centerTitle: true,
        elevation: 1,
      ),
      body: Container(
        // height: _height! * 0.80,
        // padding: EdgeInsets.only(top: 10, left: 20, right: 20),
        width: _width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Container(
              // height: 50,
              width: _width! * 0.9,
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppStrings.txtOnlineAllDays),
                      SizedBox(
                        height: 20,
                        width: 60,
                        child: Switch(
                          value: _switchValue,
                          activeColor: AppColors.red,
                          onChanged: (value) {
                            setState(() {
                              _switchValue = value;
                              _customDaysswitchValue = !_customDaysswitchValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(AppStrings
                      .txtYouCanSetASameTimeOrOnlineAndOfflineGorAllDay),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          _openAllDayStartTimer(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Chip(
                            backgroundColor: AppColors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            side: BorderSide(color: AppColors.grey),
                            label: Text(formatDate(
                                    allDayStartTime, [hh, ':', nn, ' ', am])
                                .toString()),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _openAllDayEndTimer(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Chip(
                            backgroundColor: AppColors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            side: BorderSide(color: AppColors.grey),
                            label: Text(formatDate(
                                    allDayEndTime, [hh, ':', nn, ' ', am])
                                .toString()),
                          ),
                        ),
                      ),
                    ],
                  ),
                  addNewSlotForAllDays
                      ? Container()
                      : InkWell(
                          // onTap: () {addNewSlotForAllDays},
                          onTap: () {
                            setState(() {
                              addNewSlotForAllDays = !addNewSlotForAllDays;
                            });
                          },
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                AppStrings.txtAddNewSlot,
                                style:
                                    AppTextStyle.font14AsapRegularRedTextStyle,
                              )),
                        ),
                  addNewSlotForAllDays
                      ? Row(
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    _openAllDayStartTimerAddSlot(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Chip(
                                      backgroundColor: AppColors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      side: BorderSide(color: AppColors.grey),
                                      label: Text(formatDate(
                                          allDayStartTimeAddSlot,
                                          [hh, ':', nn, ' ', am]).toString()),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    _openAllDayEndTimerAddSlot(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Chip(
                                      backgroundColor: AppColors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      side: BorderSide(color: AppColors.grey),
                                      label: Text(formatDate(
                                          allDayEndTimeAddSlot,
                                          [hh, ':', nn, ' ', am]).toString()),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    addNewSlotForAllDays =
                                        !addNewSlotForAllDays;
                                  });
                                },
                                icon: Icon(Icons.close))
                          ],
                        )
                      : Container()
                ],
              ),
            ),
            Divider(),
            Container(
              // height: 50,
              width: _width! * 0.9,
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppStrings.txtCustomizeAllDays),
                      SizedBox(
                        height: 20,
                        width: 60,
                        child: Switch(
                          value: _customDaysswitchValue,
                          activeColor: AppColors.red,
                          onChanged: (value) {
                            setState(() {
                              _customDaysswitchValue = value;
                              _switchValue = !_switchValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(AppStrings
                      .txtYouCanSetDifferentTimeOrOnlineAndOfflineForEveryday),
                  SizedBox(height: 20),
                ],
              ),
            ),
            _customDaysswitchValue == true
                ? Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ///Saturday
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppStrings.txtSaturday,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    width: 60,
                                    child: Switch(
                                      value: _saturdaySwitchValue,
                                      activeColor: AppColors.red,
                                      onChanged: (value) {
                                        setState(() {
                                          _saturdaySwitchValue = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              _saturdaySwitchValue
                                  ? Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            _openSatDayStartTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      satDayStartTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _openSatDayEndTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      satDayEndTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : Container(),
                              _saturdaySwitchValue
                                  ? addNewSlotForSatDay
                                      ? Container()
                                      : InkWell(
                                          // onTap: () {addNewSlotForAllDays},
                                          onTap: () {
                                            setState(() {
                                              addNewSlotForSatDay =
                                                  !addNewSlotForSatDay;
                                            });
                                          },
                                          child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                AppStrings.txtAddNewSlot,
                                                style: AppTextStyle
                                                    .font14AsapRegularRedTextStyle,
                                              )),
                                        )
                                  : Container(),
                              _saturdaySwitchValue
                                  ? addNewSlotForSatDay
                                      ? Row(
                                          children: [
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    _openSatDayStartTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          satDayStartTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    _openSatDayEndTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          satDayEndTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    addNewSlotForSatDay =
                                                        !addNewSlotForSatDay;
                                                  });
                                                },
                                                icon: Icon(Icons.close))
                                          ],
                                        )
                                      : Container()
                                  : Container(),
                              Divider()
                            ]),
                          ),

                          ///Sunday
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppStrings.txtSunday,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    width: 60,
                                    child: Switch(
                                      value: _sundaySwitchValue,
                                      activeColor: AppColors.red,
                                      onChanged: (value) {
                                        setState(() {
                                          _sundaySwitchValue = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              _sundaySwitchValue
                                  ? Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            _openSunDayStartTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      sunDayStartTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _openSunDayEndTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      sunDayEndTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : Container(),
                              _sundaySwitchValue
                                  ? addNewSlotForSunDay
                                      ? Container()
                                      : InkWell(
                                          // onTap: () {addNewSlotForAllDays},
                                          onTap: () {
                                            setState(() {
                                              addNewSlotForSunDay =
                                                  !addNewSlotForSunDay;
                                            });
                                          },
                                          child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                AppStrings.txtAddNewSlot,
                                                style: AppTextStyle
                                                    .font14AsapRegularRedTextStyle,
                                              )),
                                        )
                                  : Container(),
                              _sundaySwitchValue
                                  ? addNewSlotForSunDay
                                      ? Row(
                                          children: [
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    _openSunDayStartTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          sunDayStartTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    _openSunDayEndTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          sunDayEndTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    addNewSlotForSunDay =
                                                        !addNewSlotForSunDay;
                                                  });
                                                },
                                                icon: Icon(Icons.close))
                                          ],
                                        )
                                      : Container()
                                  : Container(),
                              Divider()
                            ]),
                          ),

                          ///Monday
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppStrings.txtMonday,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    width: 60,
                                    child: Switch(
                                      value: _mondaySwitchValue,
                                      activeColor: AppColors.red,
                                      onChanged: (value) {
                                        setState(() {
                                          _mondaySwitchValue = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              _mondaySwitchValue
                                  ? Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            _openMonDayStartTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      monDayStartTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _openMonDayEndTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      monDayEndTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : Container(),
                              _mondaySwitchValue
                                  ? addNewSlotForMonDay
                                      ? Container()
                                      : InkWell(
                                          // onTap: () {addNewSlotForAllDays},
                                          onTap: () {
                                            setState(() {
                                              addNewSlotForMonDay =
                                                  !addNewSlotForMonDay;
                                            });
                                          },
                                          child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                AppStrings.txtAddNewSlot,
                                                style: AppTextStyle
                                                    .font14AsapRegularRedTextStyle,
                                              )),
                                        )
                                  : Container(),
                              _mondaySwitchValue
                                  ? addNewSlotForMonDay
                                      ? Row(
                                          children: [
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    _openMonDayStartTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          monDayStartTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    _openMonDayEndTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          monDayEndTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    addNewSlotForMonDay =
                                                        !addNewSlotForMonDay;
                                                  });
                                                },
                                                icon: Icon(Icons.close))
                                          ],
                                        )
                                      : Container()
                                  : Container(),
                              Divider()
                            ]),
                          ),

                          ///Tuesday
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppStrings.txtTuesday,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    width: 60,
                                    child: Switch(
                                      value: _tuedaySwitchValue,
                                      activeColor: AppColors.red,
                                      onChanged: (value) {
                                        setState(() {
                                          _tuedaySwitchValue = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              _tuedaySwitchValue
                                  ? Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            _openTueDayStartTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      tueDayStartTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _openTueDayEndTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      tueDayEndTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : Container(),
                              _tuedaySwitchValue
                                  ? addNewSlotForTueDay
                                      ? Container()
                                      : InkWell(
                                          // onTap: () {addNewSlotForAllDays},
                                          onTap: () {
                                            setState(() {
                                              addNewSlotForTueDay =
                                                  !addNewSlotForTueDay;
                                            });
                                          },
                                          child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                AppStrings.txtAddNewSlot,
                                                style: AppTextStyle
                                                    .font14AsapRegularRedTextStyle,
                                              )),
                                        )
                                  : Container(),
                              _tuedaySwitchValue
                                  ? addNewSlotForTueDay
                                      ? Row(
                                          children: [
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    _openTueDayStartTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          tueDayStartTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    _openTueDayEndTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          tueDayEndTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    addNewSlotForTueDay =
                                                        !addNewSlotForTueDay;
                                                  });
                                                },
                                                icon: Icon(Icons.close))
                                          ],
                                        )
                                      : Container()
                                  : Container(),
                              Divider()
                            ]),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppStrings.txtWednesday,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    width: 60,
                                    child: Switch(
                                      value: _weddaySwitchValue,
                                      activeColor: AppColors.red,
                                      onChanged: (value) {
                                        setState(() {
                                          _weddaySwitchValue = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              _weddaySwitchValue
                                  ? Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            _openWedDayStartTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      wedDayStartTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _openWedDayEndTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      wedDayEndTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : Container(),
                              _weddaySwitchValue
                                  ? addNewSlotForWedDay
                                      ? Container()
                                      : InkWell(
                                          // onTap: () {addNewSlotForAllDays},
                                          onTap: () {
                                            setState(() {
                                              addNewSlotForWedDay =
                                                  !addNewSlotForWedDay;
                                            });
                                          },
                                          child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                AppStrings.txtAddNewSlot,
                                                style: AppTextStyle
                                                    .font14AsapRegularRedTextStyle,
                                              )),
                                        )
                                  : Container(),
                              _weddaySwitchValue
                                  ? addNewSlotForWedDay
                                      ? Row(
                                          children: [
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    _openWedDayStartTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          wedDayStartTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    _openWedDayEndTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          wedDayEndTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    addNewSlotForWedDay =
                                                        !addNewSlotForWedDay;
                                                  });
                                                },
                                                icon: Icon(Icons.close))
                                          ],
                                        )
                                      : Container()
                                  : Container(),
                              Divider()
                            ]),
                          ),

                          ///Thursday
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppStrings.txtThursday,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    width: 60,
                                    child: Switch(
                                      value: _thudaySwitchValue,
                                      activeColor: AppColors.red,
                                      onChanged: (value) {
                                        setState(() {
                                          _thudaySwitchValue = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              _thudaySwitchValue
                                  ? Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            _openThuDayStartTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      thuDayStartTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _openThuDayEndTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      thuDayEndTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : Container(),
                              _thudaySwitchValue
                                  ? addNewSlotForThuDay
                                      ? Container()
                                      : InkWell(
                                          // onTap: () {addNewSlotForAllDays},
                                          onTap: () {
                                            setState(() {
                                              addNewSlotForThuDay =
                                                  !addNewSlotForThuDay;
                                            });
                                          },
                                          child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                AppStrings.txtAddNewSlot,
                                                style: AppTextStyle
                                                    .font14AsapRegularRedTextStyle,
                                              )),
                                        )
                                  : Container(),
                              _thudaySwitchValue
                                  ? addNewSlotForThuDay
                                      ? Row(
                                          children: [
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    _openThuDayStartTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          thuDayStartTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    _openThuDayEndTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          thuDayEndTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    addNewSlotForThuDay =
                                                        !addNewSlotForThuDay;
                                                  });
                                                },
                                                icon: Icon(Icons.close))
                                          ],
                                        )
                                      : Container()
                                  : Container(),
                              Divider()
                            ]),
                          ),

                          ///Friday
                          Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppStrings.txtFriday,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    width: 60,
                                    child: Switch(
                                      value: _fridaySwitchValue,
                                      activeColor: AppColors.red,
                                      onChanged: (value) {
                                        setState(() {
                                          _fridaySwitchValue = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              _fridaySwitchValue
                                  ? Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            _openFriDayStartTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      friDayStartTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _openFriDayEndTimer(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Chip(
                                              backgroundColor: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              side: BorderSide(
                                                  color: AppColors.grey),
                                              label: Text(formatDate(
                                                      friDayEndTime,
                                                      [hh, ':', nn, ' ', am])
                                                  .toString()),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : Container(),
                              _fridaySwitchValue
                                  ? addNewSlotForFriDay
                                      ? Container()
                                      : InkWell(
                                          // onTap: () {addNewSlotForAllDays},
                                          onTap: () {
                                            setState(() {
                                              addNewSlotForFriDay =
                                                  !addNewSlotForFriDay;
                                            });
                                          },
                                          child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                AppStrings.txtAddNewSlot,
                                                style: AppTextStyle
                                                    .font14AsapRegularRedTextStyle,
                                              )),
                                        )
                                  : Container(),
                              _fridaySwitchValue
                                  ? addNewSlotForFriDay
                                      ? Row(
                                          children: [
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    _openFriDayStartTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          friDayStartTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    _openFriDayEndTimerAddSlot(
                                                        context);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Chip(
                                                      backgroundColor:
                                                          AppColors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                      side: BorderSide(
                                                          color:
                                                              AppColors.grey),
                                                      label: Text(formatDate(
                                                          friDayEndTimeAddSlot,
                                                          [
                                                            hh,
                                                            ':',
                                                            nn,
                                                            ' ',
                                                            am
                                                          ]).toString()),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    addNewSlotForFriDay =
                                                        !addNewSlotForFriDay;
                                                  });
                                                },
                                                icon: Icon(Icons.close))
                                          ],
                                        )
                                      : Container()
                                  : Container(),
                            ]),
                          ),
                          SizedBox(height: 20)
                        ],
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }

  _openAllDayStartTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        allDayStartTime = time;
      });
      print("Selected time" + allDayStartTime.toString());
    }
  }

  _openAllDayEndTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        allDayEndTime = time;
      });
      print("Selected time" + allDayEndTime.toString());
    }
  }

  _openSatDayStartTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        satDayStartTime = time;
      });
      print("Selected time" + satDayStartTime.toString());
    }
  }

  _openSatDayEndTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        satDayEndTime = time;
      });
      print("Selected time" + satDayEndTime.toString());
    }
  }

  _openSunDayStartTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        sunDayStartTime = time;
      });
      print("Selected time" + sunDayStartTime.toString());
    }
  }

  _openSunDayEndTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        sunDayEndTime = time;
      });
      print("Selected time" + sunDayEndTime.toString());
    }
  }

  _openMonDayStartTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        monDayStartTime = time;
      });
      print("Selected time" + monDayStartTime.toString());
    }
  }

  _openMonDayEndTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        monDayEndTime = time;
      });
      print("Selected time" + monDayEndTime.toString());
    }
  }

  _openTueDayStartTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        tueDayStartTime = time;
      });
      print("Selected time" + tueDayStartTime.toString());
    }
  }

  _openTueDayEndTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        tueDayEndTime = time;
      });
      print("Selected time" + tueDayEndTime.toString());
    }
  }

  _openWedDayStartTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        wedDayStartTime = time;
      });
      print("Selected time" + wedDayStartTime.toString());
    }
  }

  _openWedDayEndTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        wedDayEndTime = time;
      });
      print("Selected time" + wedDayEndTime.toString());
    }
  }

  _openThuDayStartTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        thuDayStartTime = time;
      });
      print("Selected time" + thuDayStartTime.toString());
    }
  }

  _openThuDayEndTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        thuDayEndTime = time;
      });
      print("Selected time" + thuDayEndTime.toString());
    }
  }

  _openFriDayStartTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        friDayStartTime = time;
      });
      print("Selected time" + friDayStartTime.toString());
    }
  }

  _openFriDayEndTimer(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        friDayEndTime = time;
      });
      print("Selected time" + friDayEndTime.toString());
    }
  }

  ///Add Slot Timers
  _openAllDayStartTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        allDayStartTimeAddSlot = time;
      });
      print("Selected time" + allDayStartTimeAddSlot.toString());
    }
  }

  _openAllDayEndTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        allDayEndTimeAddSlot = time;
      });
      print("Selected time" + allDayEndTimeAddSlot.toString());
    }
  }

  _openSatDayStartTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        satDayStartTimeAddSlot = time;
      });
      print("Selected time" + satDayStartTimeAddSlot.toString());
    }
  }

  _openSatDayEndTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        satDayEndTimeAddSlot = time;
      });
      print("Selected time" + satDayEndTimeAddSlot.toString());
    }
  }

  _openSunDayStartTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        sunDayStartTimeAddSlot = time;
      });
      print("Selected time" + sunDayStartTimeAddSlot.toString());
    }
  }

  _openSunDayEndTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        sunDayEndTimeAddSlot = time;
      });
      print("Selected time" + sunDayEndTimeAddSlot.toString());
    }
  }

  _openMonDayStartTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        monDayStartTimeAddSlot = time;
      });
      print("Selected time" + monDayStartTimeAddSlot.toString());
    }
  }

  _openMonDayEndTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        monDayEndTimeAddSlot = time;
      });
      print("Selected time" + monDayEndTimeAddSlot.toString());
    }
  }

  _openTueDayStartTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        tueDayStartTimeAddSlot = time;
      });
      print("Selected time" + tueDayStartTimeAddSlot.toString());
    }
  }

  _openTueDayEndTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        tueDayEndTimeAddSlot = time;
      });
      print("Selected time" + tueDayEndTimeAddSlot.toString());
    }
  }

  _openWedDayStartTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        wedDayStartTimeAddSlot = time;
      });
      print("Selected time" + wedDayStartTimeAddSlot.toString());
    }
  }

  _openWedDayEndTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        wedDayEndTimeAddSlot = time;
      });
      print("Selected time" + wedDayEndTimeAddSlot.toString());
    }
  }

  _openThuDayStartTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        thuDayStartTimeAddSlot = time;
      });
      print("Selected time" + thuDayStartTimeAddSlot.toString());
    }
  }

  _openThuDayEndTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        thuDayEndTimeAddSlot = time;
      });
      print("Selected time" + thuDayEndTimeAddSlot.toString());
    }
  }

  _openFriDayStartTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        friDayStartTimeAddSlot = time;
      });
      print("Selected time" + friDayStartTimeAddSlot.toString());
    }
  }

  _openFriDayEndTimerAddSlot(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      final now = DateTime.now();
      var time = DateTime(
          now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
      print(formatDate(time, [hh, ':', nn, ' ', am]));
      print("$time");
      setState(() {
        // selectedTime = timeOfDay;
        friDayEndTimeAddSlot = time;
      });
      print("Selected time" + friDayEndTimeAddSlot.toString());
    }
  }
}
