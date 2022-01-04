// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:login/pages/QuickServices.dart';
import 'package:login/pages/RoomBooking.dart';
import 'package:login/widgets/back_button.dart';
import 'package:login/widgets/button.dart';
import 'package:login/widgets/text_field.dart';
import './Dashboard.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoomBooking2 extends StatefulWidget {
  RoomBooking2({
    Key? key,
  }) : super(key: key);

  @override
  State<RoomBooking2> createState() => _RoomBooking2State();
}

class _RoomBooking2State extends State<RoomBooking2> {
  bool isChecked = false;
  bool onChecked = false;
  bool wasChecked = false;
  bool hasChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(right: 310, top: 10),
                  child: NewButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RoomBooking())),
                  )),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffb5cedf),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 40, right: 40),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: Text(
                        'Is The Party ',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: wasChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              wasChecked = value!;
                              hasChecked = false;
                              // onChecked = false;
                            });
                          },
                        ),
                        Text(
                          'UK National',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: hasChecked,
                          onChanged: (bool? PriceUpdateValue) {
                            setState(() {
                              //isChecked = value!;
                              hasChecked = PriceUpdateValue ?? true;
                              wasChecked = false;
                            });
                          },
                        ),
                        Text(
                          'Other National',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Visibility(
                        visible: hasChecked,
                        // maintainAnimation: true,
                        // maintainSize: true,
                        // maintainState: true,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(width: 1, color: Colors.black),
                            color: Theme.of(context).primaryColor,
                          ),
                          // margin:
                          //     EdgeInsets.only(bottom: sizeConfig!.height(.04)),
                          child: MyTextField(
                            inputType: TextInputType.visiblePassword,

                            // onValidate: (value) => MultiValidator([
                            //   RequiredValidator(errorText: "* Required"),
                            //   MinLengthValidator(6,
                            //       errorText:
                            //           "Password should be atleast 6 characters"),
                            //   MaxLengthValidator(15,
                            //       errorText:
                            //           "Password should not be greater than 15 characters")
                            // ]),
                            // validator: MultiValidator([
                            //   RequiredValidator(errorText: "* Required"),
                            //   MinLengthValidator(6,
                            //       errorText:
                            //           "Password should be atleast 6 characters"),
                            //   MaxLengthValidator(15,
                            //       errorText:
                            //           "Password should not be greater than 15 characters")
                            // ]),
                            prefixIcon: Icon(
                              Icons.bookmarks_outlined,
                              color: Colors.black,
                            ),
                            hintText: "Nationality",
                            filled: true,

                            // obsecureText: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Visibility(
                        //  maintainAnimation: true,
                        // maintainSize: true,
                        // maintainState: true,
                        visible: hasChecked,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(width: 1, color: Colors.black),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              prefixIcon:
                                  Icon(Icons.book_online, color: Colors.black),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              hintText: "Passport",
                              hintStyle: TextStyle(color: Colors.black),
                              //labelText: "First Name"
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(top: 490, left: 154),
                    //   child: PageLink(
                    //     links: [
                    //       PageLinkInfo(
                    //         transition: LinkTransition.Fade,
                    //         ease: Curves.easeOut,
                    //         duration: 0.3,
                    //         pageBuilder: () => LoginPage(),
                    //       ),
                    //     ],
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(25.0),
                    //         color: Colors.black,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    //   // child: Container(
                    //   //   decoration: BoxDecoration(
                    //   //     borderRadius: BorderRadius.circular(25.0),
                    //   //     color: Colors.black,
                    //   //   ),
                    //   //   child: TextField(
                    //   //     style: TextStyle(color: Colors.white),
                    //   //     decoration: InputDecoration(
                    //   //       prefixIcon: Icon(Icons.bookmarks_outlined,
                    //   //           color: Colors.white),
                    //   //       border: OutlineInputBorder(
                    //   //           borderRadius: BorderRadius.circular(25.0)),
                    //   //       labelStyle: TextStyle(
                    //   //           color: Colors.white,
                    //   //           fontSize: 20,
                    //   //           fontWeight: FontWeight.bold),
                    //   //       hintText: "Nationality",
                    //   //       hintStyle: TextStyle(color: Colors.white),
                    //   //       //labelText: "First Name"
                    //   //     ),
                    //   //   ),
                    //   // ),
                    // ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(width: 1, color: Colors.black),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.note_add,
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            hintText: "Driving Liscence",
                            hintStyle: TextStyle(color: Colors.black),
                            //labelText: "First Name"
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  'Confirm the person who is going to\nreserve the room',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 60),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                              onChecked = false;
                              // onChecked = false;
                            });
                          },
                        ),
                        Text(
                          'Local',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),

                    child: Row(
                      children: [
                        Checkbox(
                          value: onChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              //isChecked = value!;
                              onChecked = value!;
                              isChecked = false;
                            });
                          },
                        ),
                        Text(
                          'Outsider',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    // Text(
                    //   'Forget Password',
                    //   style: TextStyle(
                    //     fontFamily: 'Segoe UI',
                    //     fontSize: 18,
                    //     color: const Color(0xff668079),
                    //     letterSpacing: -0.27,
                    //   ),
                    //   textAlign: TextAlign.left,
                    // ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10, left: 14),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 80, bottom: 10),
                        child: Text(
                          'Payment Method',
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => RoomBooking(),
                          ),
                        ],
                        child: Container(
                          width: 260,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: const Color(0xffA67B5B),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(),
                            child: Center(
                              child: Text(
                                'Paypal, Credit/Debit Card',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                // textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 30,
                    width: 150,
                    child: MyButton(
                      title: "Submit",
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => QuickServices())),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

// const String _svg_gjl1 =
//     '<svg viewBox="316.0 711.0 17.0 20.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 316.0, 731.0)" d="M 9.999999046325684 0 L 20 17 L 0 17 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
// const String _svg_mjbom =
//     '<svg viewBox="0.0 1.5 11.3 15.4" ><path transform="translate(-725.92, -56.7)" d="M 737.216064453125 65.91905975341797 C 737.216064453125 68.1533203125 737.2169799804688 70.38748168945312 737.215576171875 72.62165069580078 C 737.2152099609375 73.36186218261719 736.9946899414062 73.59158325195312 736.2569580078125 73.59243774414062 C 733.135498046875 73.59595489501953 730.013916015625 73.59567260742188 726.8924560546875 73.59262847900391 C 726.1605224609375 73.59197235107422 725.9176025390625 73.35026550292969 725.9171752929688 72.62050628662109 C 725.9146118164062 68.15217590332031 725.9144287109375 63.68375396728516 725.9173583984375 59.21542358398438 C 725.9178466796875 58.48908233642578 726.1644897460938 58.24501037597656 726.8956909179688 58.24424743652344 C 730.0171508789062 58.24092102050781 733.1387329101562 58.24092102050781 736.2601928710938 58.24424743652344 C 736.99560546875 58.24501037597656 737.2152099609375 58.47454071044922 737.2156982421875 59.21656799316406 C 737.2168579101562 61.45072937011719 737.216064453125 63.68489837646484 737.216064453125 65.91905975341797 Z M 735.8837890625 64.00941467285156 C 735.891845703125 61.63822937011719 733.9566040039062 59.67667388916016 731.5927734375 59.65984344482422 C 729.2327880859375 59.64311218261719 727.2788696289062 61.57681274414062 727.2467041015625 63.96082305908203 C 727.2157592773438 66.26183319091797 729.200927734375 68.26817321777344 731.526611328125 68.28643035888672 C 733.89892578125 68.30506896972656 735.8757934570312 66.36452484130859 735.8837890625 64.00941467285156 Z M 731.6019897460938 71.84414672851562 C 731.697021484375 71.84414672851562 731.7918701171875 71.84414672851562 731.8868408203125 71.84414672851562 C 732.8681030273438 71.84396362304688 733.8494873046875 71.85042572021484 734.83056640625 71.83578491210938 C 734.964111328125 71.83378601074219 735.1043701171875 71.738037109375 735.2218627929688 71.65712738037109 C 735.2453002929688 71.64105224609375 735.20458984375 71.45002746582031 735.1485595703125 71.41799163818359 C 735.047607421875 71.36027526855469 734.9129028320312 71.34173583984375 734.7921142578125 71.34154510498047 C 732.6556396484375 71.33735656738281 730.5189208984375 71.33317565917969 728.3823852539062 71.34914398193359 C 728.22021484375 71.35038757324219 728.0591430664062 71.50375366210938 727.8975219726562 71.58638000488281 C 728.0560913085938 71.6722412109375 728.2132568359375 71.82912445068359 728.37353515625 71.83245849609375 C 729.4493408203125 71.85451507568359 730.5257568359375 71.84396362304688 731.6019897460938 71.84414672851562 Z M 730.7347412109375 70.00772094726562 C 729.9429931640625 70.00772094726562 729.1507568359375 69.99326324462891 728.3599853515625 70.02008056640625 C 728.203857421875 70.02530670166016 728.0530395507812 70.18961334228516 727.8997802734375 70.28060913085938 C 728.0485229492188 70.36114501953125 728.1965942382812 70.51013946533203 728.3462524414062 70.51175689697266 C 729.9453735351562 70.52877807617188 731.5448608398438 70.52982330322266 733.1438598632812 70.51052093505859 C 733.29638671875 70.50871276855469 733.4468994140625 70.33984375 733.598388671875 70.24856567382812 C 733.4513549804688 70.16831207275391 733.3062744140625 70.02284240722656 733.1571655273438 70.01865386962891 C 732.3502197265625 69.99574279785156 731.5422973632812 70.00772094726562 730.7347412109375 70.00772094726562 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_f8znxs =
//     '<svg viewBox="11.8 2.3 4.1 12.8" ><path transform="translate(-838.19, -63.99)" d="M 849.9830322265625 79.01976013183594 L 849.9830322265625 66.29299926757812 C 850.1353759765625 66.33987426757812 850.2667236328125 66.37172698974609 850.3916015625 66.42002868652344 C 851.3046875 66.77278900146484 852.21630859375 67.12934875488281 853.128662109375 67.48372650146484 C 854.089599609375 67.85692596435547 854.265625 68.24296569824219 853.8988037109375 69.18960571289062 C 852.6953125 72.29530334472656 851.490966796875 75.40061187744141 850.285888671875 78.50583648681641 C 850.2144775390625 78.69001007080078 850.134765625 78.87104797363281 850.0589599609375 79.05361175537109 L 849.9830322265625 79.01976013183594 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_ciclgw =
//     '<svg viewBox="4.8 0.0 3.7 1.0" ><path transform="translate(-771.23, -42.04)" d="M 779.6295166015625 43.07039642333984 L 775.9929809570312 43.07039642333984 C 776.14111328125 42.17395401000977 776.7039184570312 41.83593368530273 777.5159912109375 42.14961242675781 C 778.2301025390625 42.42554473876953 778.939208984375 42.71450042724609 779.650634765625 42.99765777587891 L 779.6295166015625 43.07039642333984 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_d2d2u =
//     '<svg viewBox="7.3 17.4 3.6 1.0" ><path transform="translate(-795.55, -207.75)" d="M 802.8863525390625 225.1619873046875 L 806.4635009765625 225.1619873046875 C 806.3616943359375 226.0558776855469 805.8108520507812 226.3992156982422 804.9611206054688 226.0689086914062 C 804.26171875 225.7969665527344 803.5668334960938 225.5131378173828 802.8699951171875 225.2345428466797 L 802.8863525390625 225.1619873046875 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_jtnhnq =
//     '<svg viewBox="1.8 7.5 1.8 1.5" ><path transform="translate(-742.99, -113.74)" d="M 744.7830200195312 121.2699966430664 L 746.4068603515625 121.2699966430664 C 746.468505859375 121.7484588623047 746.5311889648438 122.234992980957 746.6002807617188 122.7713623046875 C 746.1858520507812 122.7713623046875 745.8104858398438 122.7817230224609 745.4365844726562 122.7636566162109 C 745.349365234375 122.7594680786133 745.2171020507812 122.6758041381836 745.190673828125 122.5993499755859 C 745.04541015625 122.1787033081055 744.9266357421875 121.7488327026367 744.7830200195312 121.2699966430664 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_gh8wnk =
//     '<svg viewBox="1.9 5.5 1.7 1.5" ><path transform="translate(-743.86, -94.08)" d="M 747.4735107421875 99.55299377441406 C 747.4031982421875 100.1263427734375 747.34423828125 100.6065216064453 747.283935546875 101.0985717773438 L 745.7576904296875 101.0985717773438 C 745.7130126953125 100.5706787109375 745.7854614257812 99.99580383300781 746.1455078125 99.70579528808594 C 746.42333984375 99.48197937011719 746.9728393554688 99.59559631347656 747.4735107421875 99.55299377441406 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_el7jqd =
//     '<svg viewBox="7.7 5.5 1.8 1.5" ><path transform="translate(-799.21, -94.15)" d="M 806.916015625 99.62533569335938 C 807.308837890625 99.62533569335938 807.6845703125 99.61192321777344 808.05810546875 99.63446044921875 C 808.1556396484375 99.64036560058594 808.2989501953125 99.73944091796875 808.3311767578125 99.82833862304688 C 808.4783935546875 100.2356719970703 808.5936279296875 100.6545104980469 808.737060546875 101.1243133544922 L 807.120361328125 101.1243133544922 C 807.0546875 100.6419525146484 806.989501953125 100.1639709472656 806.916015625 99.62533569335938 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_qkyrl =
//     '<svg viewBox="7.7 7.6 1.7 1.5" ><path transform="translate(-799.5, -113.91)" d="M 808.9794921875 121.4640045166016 C 808.9681396484375 121.5773315429688 808.97119140625 121.6732788085938 808.9478759765625 121.7622680664062 C 808.5736083984375 123.1886138916016 808.7926025390625 122.9810485839844 807.22998046875 122.9006958007812 C 807.2867431640625 122.4346008300781 807.3433837890625 121.9698333740234 807.405029296875 121.4640045166016 L 808.9794921875 121.4640045166016 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_u8wpng =
//     '<svg viewBox="5.9 7.5 1.5 1.5" ><path transform="translate(-782.49, -113.72)" d="M 789.7101440429688 122.7412414550781 L 788.4359741210938 122.7412414550781 L 788.4359741210938 121.254997253418 L 789.900634765625 121.254997253418 C 789.8367919921875 121.7532348632812 789.7757568359375 122.2290267944336 789.7101440429688 122.7412414550781 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_mv9yc =
//     '<svg viewBox="5.9 5.5 1.5 1.5" ><path transform="translate(-782.49, -94.64)" d="M 788.4400024414062 101.6378402709961 L 788.4400024414062 100.1669998168945 L 789.6903686523438 100.1669998168945 C 789.761474609375 100.6452713012695 789.8323364257812 101.1223907470703 789.908935546875 101.6378402709961 L 788.4400024414062 101.6378402709961 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_rfr4d3 =
//     '<svg viewBox="3.9 7.5 1.4 1.5" ><path transform="translate(-763.46, -113.75)" d="M 767.4608764648438 121.2890014648438 L 768.83447265625 121.2890014648438 L 768.83447265625 122.7337875366211 C 768.7918090820312 122.754508972168 768.765380859375 122.7776184082031 768.7379760742188 122.7789459228516 C 767.438720703125 122.8393249511719 767.3045043945312 122.6852874755859 767.4608764648438 121.2890014648438 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_oebcu =
//     '<svg viewBox="3.9 5.5 1.5 1.5" ><path transform="translate(-763.42, -94.12)" d="M 768.821044921875 99.59512329101562 L 768.821044921875 101.0963897705078 L 767.364013671875 101.0963897705078 C 767.4197998046875 100.6567230224609 767.45654296875 100.2384643554688 767.537109375 99.82893371582031 C 767.555419921875 99.73565673828125 767.719970703125 99.61595153808594 767.8265380859375 99.60577392578125 C 768.138671875 99.57591247558594 768.45556640625 99.59512329101562 768.821044921875 99.59512329101562 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_cruibb =
//     '<svg viewBox="5.9 9.5 1.1 1.5" ><path transform="translate(-782.52, -132.89)" d="M 788.4730224609375 142.4329986572266 L 789.560791015625 142.4329986572266 C 789.3466796875 143.0427551269531 789.12158203125 143.5932922363281 788.4730224609375 143.9507141113281 L 788.4730224609375 142.4329986572266 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_i61gse =
//     '<svg viewBox="4.2 9.5 1.2 1.5" ><path transform="translate(-765.69, -132.91)" d="M 770.902587890625 143.9638214111328 C 770.5826416015625 143.4960021972656 770.2626953125 143.0281982421875 769.8699951171875 142.4539947509766 L 771.0584716796875 142.4539947509766 L 771.0584716796875 143.8626403808594 L 770.902587890625 143.9638214111328 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_ka3n2 =
//     '<svg viewBox="5.9 3.6 1.0 1.3" ><path transform="translate(-782.46, -76.37)" d="M 788.39599609375 81.31790161132812 L 788.39599609375 79.9739990234375 C 788.8621826171875 80.09199523925781 789.2327880859375 80.56523132324219 789.4404296875 81.31790161132812 L 788.39599609375 81.31790161132812 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_h34wk =
//     '<svg viewBox="7.0 9.5 1.7 1.3" ><path transform="translate(-792.55, -132.62)" d="M 799.552978515625 143.4610900878906 C 799.7411499023438 143.0295104980469 799.8893432617188 142.6553497314453 800.07080078125 142.2982177734375 C 800.1131591796875 142.2151184082031 800.2658081054688 142.1535034179688 800.372802734375 142.1446685791016 C 800.6376342773438 142.1229858398438 800.9053955078125 142.1375274658203 801.2908325195312 142.1375274658203 C 800.816162109375 142.7944641113281 800.269287109375 143.1806793212891 799.552978515625 143.4610900878906 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_d64d6 =
//     '<svg viewBox="2.6 9.5 1.7 1.4" ><path transform="translate(-750.64, -132.19)" d="M 754.8526611328125 143.0869445800781 C 754.3134765625 142.6874084472656 753.774169921875 142.2878723144531 753.2349853515625 141.8883361816406 L 753.3231201171875 141.6609954833984 C 753.69287109375 141.7259216308594 754.1610717773438 141.6758270263672 754.40625 141.8859558105469 C 754.6874389648438 142.1269989013672 754.7706298828125 142.5988006591797 754.93994140625 142.9702758789062 L 754.8526611328125 143.0869445800781 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_ldpm0t =
//     '<svg viewBox="4.3 3.5 1.1 1.4" ><path transform="translate(-767.02, -75.69)" d="M 771.3350219726562 80.64321136474609 C 771.5577392578125 80.03943634033203 771.791015625 79.52988433837891 772.4068603515625 79.22799682617188 L 772.4068603515625 80.64321136474609 L 771.3350219726562 80.64321136474609 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_o3 =
//     '<svg viewBox="7.0 3.8 1.6 1.3" ><path transform="translate(-792.62, -78.06)" d="M 801.2408447265625 83.01509094238281 C 800.0592041015625 83.47177886962891 799.9918212890625 82.46846008300781 799.6309814453125 81.84500122070312 C 800.2481689453125 81.97079467773438 800.86279296875 82.41673278808594 801.2408447265625 83.01509094238281 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_soi92q =
//     '<svg viewBox="2.6 3.7 1.6 1.3" ><path transform="translate(-751.01, -77.38)" d="M 755.2730712890625 81.21489715576172 C 755.120849609375 81.55424499511719 754.9803466796875 81.89968109130859 754.8087158203125 82.22895050048828 C 754.76513671875 82.31272125244141 754.6262817382812 82.38450622558594 754.525146484375 82.39335632324219 C 754.263427734375 82.41626739501953 753.9984130859375 82.40106201171875 753.7346801757812 82.40106201171875 L 753.64794921875 82.25139617919922 L 755.157470703125 81.09100341796875 L 755.2730712890625 81.21489715576172 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_t1mws =
//     '<svg viewBox="66.0 202.0 13.9 14.0" ><path transform="translate(-49.84, 86.21)" d="M 118.6753768920898 121.8689727783203 C 119.8556060791016 124.1261367797852 121.5430679321289 125.8140258789062 123.8206481933594 127.005973815918 C 124.3326110839844 126.478889465332 124.8569641113281 125.9549713134766 125.3621444702148 125.4131851196289 C 125.6719436645508 125.0809936523438 126.008186340332 125.0383605957031 126.443229675293 125.1324615478516 C 127.204345703125 125.2971878051758 127.9771194458008 125.4309463500977 128.751953125 125.5038909912109 C 129.6195678710938 125.5856857299805 129.8282470703125 125.7670974731445 129.8283386230469 126.6540451049805 C 129.8284912109375 127.3694763183594 129.8295745849609 128.0848236083984 129.8280029296875 128.8002624511719 C 129.8264465332031 129.5161895751953 129.5404968261719 129.8078918457031 128.8258972167969 129.7915496826172 C 122.9238739013672 129.6567993164062 117.9344177246094 125.7556991577148 116.3935852050781 120.1814956665039 C 116.0895767211914 119.0817413330078 116.0141448974609 117.9138336181641 115.8917999267578 116.7710342407227 C 115.8273544311523 116.1693649291992 116.1830902099609 115.850471496582 116.7827835083008 115.8463439941406 C 117.6081771850586 115.8405609130859 118.4337463378906 115.8401412963867 119.2591323852539 115.8465118408203 C 119.8057022094727 115.8507232666016 120.0737075805664 116.1236801147461 120.1512832641602 116.6664505004883 C 120.280891418457 117.5729751586914 120.4295196533203 118.476936340332 120.5796356201172 119.3803100585938 C 120.6355514526367 119.7164688110352 120.5771484375 120.0001602172852 120.3233642578125 120.2453536987305 C 119.7795104980469 120.7707748413086 119.2453308105469 121.3062057495117 118.6753768920898 121.8689727783203 Z" fill="#c83438" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_kau73l =
//     '<svg viewBox="0.0 0.0 18.4 12.1" ><path transform="translate(-795.52, -468.31)" d="M 804.7013549804688 480.4566650390625 C 802.28759765625 480.4566650390625 799.8739013671875 480.4579467773438 797.4600830078125 480.4559936523438 C 796.515869140625 480.4552612304688 795.762939453125 479.8662719726562 795.5689086914062 478.9769897460938 C 795.53662109375 478.8291015625 795.5245361328125 478.6741333007812 795.5243530273438 478.5223999023438 C 795.5218505859375 475.7713623046875 795.5220947265625 473.0203247070312 795.5226440429688 470.269287109375 C 795.5228881835938 469.117919921875 796.3289794921875 468.3121948242188 797.483642578125 468.3115234375 C 799.6812744140625 468.3102416992188 801.87890625 468.3111572265625 804.0765991210938 468.3111572265625 C 806.7064819335938 468.3111572265625 809.3363037109375 468.3102416992188 811.966064453125 468.3116455078125 C 812.9193725585938 468.3121337890625 813.6752319335938 468.9027099609375 813.8676147460938 469.7984008789062 C 813.8983764648438 469.9413452148438 813.91015625 470.0908813476562 813.9102783203125 470.2374267578125 C 813.9127197265625 472.9937744140625 813.9124145507812 475.7500610351562 813.9119262695312 478.50634765625 C 813.9116821289062 479.6463012695312 813.1026000976562 480.4554443359375 811.9584350585938 480.4561767578125 C 809.539306640625 480.457763671875 807.120361328125 480.4566650390625 804.7013549804688 480.4566650390625 Z M 813.4078979492188 471.3165893554688 L 796.0264892578125 471.3165893554688 C 796.0264892578125 471.383056640625 796.0264892578125 471.4397583007812 796.0264892578125 471.4965209960938 C 796.0265502929688 473.8419799804688 796.0261840820312 476.1874389648438 796.0269165039062 478.5328979492188 C 796.027099609375 479.3455810546875 796.6155395507812 479.9506225585938 797.426513671875 479.9511108398438 C 802.2860717773438 479.9542846679688 807.1456298828125 479.9541015625 812.0051879882812 479.9512939453125 C 812.815185546875 479.9508056640625 813.4075317382812 479.3441162109375 813.40771484375 478.5348510742188 C 813.4080810546875 476.1893920898438 813.4078369140625 473.8439331054688 813.4078979492188 471.4984741210938 C 813.4078979492188 471.441650390625 813.4078979492188 471.384765625 813.4078979492188 471.3165893554688 Z M 809.4013061523438 469.6721801757812 C 809.5347290039062 469.916748046875 809.6468505859375 470.12451171875 809.7610473632812 470.3311157226562 C 809.873291015625 470.5341796875 809.9029541015625 470.5452880859375 810.1287841796875 470.4814453125 L 810.1287841796875 469.3348388671875 L 809.8945922851562 469.3348388671875 L 809.8945922851562 470.090576171875 C 809.7847290039062 469.8883056640625 809.6860961914062 469.7034912109375 809.58447265625 469.5203247070312 C 809.4603271484375 469.2967529296875 809.4486083984375 469.292724609375 809.1651000976562 469.3412475585938 L 809.1651000976562 470.494873046875 L 809.4013061523438 470.494873046875 L 809.4013061523438 469.6721801757812 Z M 797.607421875 470.5331420898438 C 797.8268432617188 470.515380859375 798.033203125 470.5201416015625 798.2293090820312 470.4777221679688 C 798.4962768554688 470.419921875 798.6408081054688 470.20458984375 798.6478881835938 469.9180297851562 C 798.65478515625 469.6447143554688 798.54052734375 469.424072265625 798.3117065429688 469.3726196289062 C 798.0869140625 469.322021484375 797.849853515625 469.3259887695312 797.607421875 469.3051147460938 L 797.607421875 470.5331420898438 Z M 799.9026489257812 470.4949951171875 C 799.8314208984375 470.2982788085938 799.7653198242188 470.1158447265625 799.6964111328125 469.925537109375 C 799.8200073242188 469.8516845703125 799.887451171875 469.7212524414062 799.8372192382812 469.5538940429688 C 799.7857666015625 469.3826293945312 799.6405029296875 469.3298950195312 799.4791259765625 469.3221435546875 C 799.3533325195312 469.3161010742188 799.2262573242188 469.3173828125 799.1011352539062 469.32958984375 C 799.0650634765625 469.3331298828125 799.0052490234375 469.3853149414062 799.004638671875 469.4161376953125 C 798.997802734375 469.7723999023438 799.000244140625 470.12890625 799.000244140625 470.4959106445312 L 799.27587890625 470.4959106445312 L 799.27587890625 470.0552368164062 C 799.4733276367188 470.0480346679688 799.4990844726562 470.0699462890625 799.5516357421875 470.273193359375 C 799.614990234375 470.5186157226562 799.614990234375 470.5186157226562 799.9026489257812 470.4949951171875 Z M 803.3236694335938 469.3211059570312 L 803.3236694335938 470.4957275390625 L 803.5831909179688 470.4957275390625 L 803.5831909179688 470.0587158203125 C 803.7939453125 470.0117797851562 803.829833984375 470.1436767578125 803.8636474609375 470.2855834960938 C 803.9222412109375 470.53173828125 803.9293212890625 470.5342407226562 804.205810546875 470.4840087890625 C 804.1394653320312 470.2977294921875 804.0745849609375 470.1155395507812 804.0064697265625 469.9241943359375 C 804.1265258789062 469.8519287109375 804.1923217773438 469.7252807617188 804.1467895507812 469.5545654296875 C 804.1096801757812 469.4153442382812 803.983642578125 469.3311157226562 803.789794921875 469.3224487304688 C 803.6384887695312 469.3157348632812 803.4866943359375 469.3211059570312 803.3236694335938 469.3211059570312 Z M 802.2031860351562 470.4951782226562 L 802.9396362304688 470.4951782226562 L 802.9396362304688 470.28515625 L 802.4796142578125 470.28515625 L 802.4796142578125 470.0059204101562 L 802.8922729492188 470.0059204101562 L 802.8922729492188 469.78759765625 L 802.4798583984375 469.78759765625 L 802.4798583984375 469.5406494140625 L 802.9201049804688 469.5406494140625 L 802.9201049804688 469.3321533203125 L 802.2031860351562 469.3321533203125 L 802.2031860351562 470.4951782226562 Z M 808.0592041015625 469.3302612304688 L 808.0592041015625 470.4979248046875 L 808.7914428710938 470.4979248046875 L 808.7914428710938 470.2911376953125 L 808.3291015625 470.2911376953125 L 808.3291015625 470.00732421875 L 808.7376708984375 470.00732421875 L 808.7376708984375 469.78515625 L 808.32666015625 469.78515625 L 808.32666015625 469.5419311523438 L 808.7603149414062 469.5419311523438 L 808.7603149414062 469.3302612304688 L 808.0592041015625 469.3302612304688 Z M 812.3705444335938 469.784423828125 L 811.9599609375 469.784423828125 L 811.9599609375 469.53759765625 L 812.39599609375 469.53759765625 L 812.39599609375 469.3348388671875 L 811.6862182617188 469.3348388671875 L 811.6862182617188 470.4911499023438 L 812.423583984375 470.4911499023438 L 812.423583984375 470.2892456054688 L 811.9569091796875 470.2892456054688 L 811.9569091796875 470.0089721679688 L 812.3705444335938 470.0089721679688 L 812.3705444335938 469.784423828125 Z M 801.3463134765625 470.2123413085938 C 801.28173828125 469.9796752929688 801.224365234375 469.768798828125 801.1643676757812 469.5586547851562 C 801.092041015625 469.3053588867188 801.091064453125 469.3056640625 800.8056640625 469.3361206054688 C 800.9238891601562 469.707763671875 801.0400390625 470.0765380859375 801.1607055664062 470.44384765625 C 801.1693725585938 470.4701538085938 801.2090454101562 470.4976806640625 801.2386474609375 470.50390625 C 801.4389038085938 470.5457153320312 801.4951782226562 470.5110473632812 801.5570678710938 470.3196411132812 C 801.5731811523438 470.2697143554688 801.5919799804688 470.220703125 801.608642578125 470.1708984375 C 801.7009887695312 469.8943481445312 801.7930297851562 469.6176147460938 801.8863525390625 469.33740234375 C 801.6148681640625 469.3053588867188 801.613525390625 469.3049926757812 801.5429077148438 469.5400390625 C 801.4780883789062 469.755615234375 801.4164428710938 469.97216796875 801.3463134765625 470.2123413085938 Z M 810.5518188476562 470.2589721679688 C 810.5377807617188 470.318359375 810.5225219726562 470.3827514648438 810.505615234375 470.4540405273438 C 810.706787109375 470.53857421875 810.8988647460938 470.558349609375 811.09521484375 470.4778442382812 C 811.229248046875 470.4229125976562 811.30908203125 470.3204956054688 811.318603515625 470.1780395507812 C 811.3282470703125 470.032958984375 811.2536010742188 469.9259033203125 811.12548828125 469.8604125976562 C 811.0462036132812 469.8197631835938 810.958740234375 469.7937622070312 810.883056640625 469.7478637695312 C 810.8441772460938 469.7243041992188 810.79150390625 469.6595458984375 810.8009033203125 469.6343994140625 C 810.8174438476562 469.5904541015625 810.875 469.5371704101562 810.9191284179688 469.5335693359375 C 811.0142211914062 469.525634765625 811.1116943359375 469.5468139648438 811.2145385742188 469.556640625 C 811.2315673828125 469.4970703125 811.24853515625 469.4375 811.267822265625 469.3698120117188 C 811.0724487304688 469.2832641601562 810.8828125 469.2727661132812 810.6997680664062 469.3687133789062 C 810.468994140625 469.4895629882812 810.4553833007812 469.7794189453125 810.6722412109375 469.9222412109375 C 810.7547607421875 469.9765625 810.8565673828125 470.0015869140625 810.93896484375 470.055908203125 C 810.9839477539062 470.0855712890625 811.0385131835938 470.1549072265625 811.0308227539062 470.1952514648438 C 811.022705078125 470.2376098632812 810.946533203125 470.2941284179688 810.8980712890625 470.2962036132812 C 810.7907104492188 470.3007202148438 810.6820068359375 470.2750244140625 810.5518188476562 470.2589721679688 Z M 807.6439208984375 470.2733764648438 C 807.4404296875 470.31689453125 807.2393188476562 470.3448486328125 807.1101684570312 470.1470336914062 C 807.0174560546875 470.0050659179688 807.0189208984375 469.8410034179688 807.1038208007812 469.696044921875 C 807.23046875 469.47998046875 807.4395751953125 469.5211791992188 807.6506958007812 469.5584716796875 C 807.667236328125 469.4901123046875 807.6825561523438 469.4269409179688 807.6971435546875 469.3662719726562 C 807.3901977539062 469.2396240234375 807.052001953125 469.3192138671875 806.88330078125 469.5477294921875 C 806.7179565429688 469.7718505859375 806.7246704101562 470.1221313476562 806.8983764648438 470.3292236328125 C 807.067626953125 470.531005859375 807.4189453125 470.5908813476562 807.6880493164062 470.45751953125 C 807.6743774414062 470.4005737304688 807.66015625 470.3411865234375 807.6439208984375 470.2733764648438 Z M 805.07470703125 469.3289184570312 L 805.07470703125 470.4956665039062 L 805.7890625 470.4956665039062 L 805.7890625 470.2731323242188 L 805.3263549804688 470.2731323242188 L 805.3263549804688 469.3289184570312 L 805.07470703125 469.3289184570312 Z M 806.4013671875 470.4991455078125 L 806.4013671875 469.3306884765625 L 806.1512451171875 469.3306884765625 L 806.1512451171875 470.4991455078125 L 806.4013671875 470.4991455078125 Z M 800.4796752929688 470.4973754882812 L 800.4796752929688 469.3325805664062 L 800.2351684570312 469.3325805664062 L 800.2351684570312 470.4973754882812 L 800.4796752929688 470.4973754882812 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_z5nmqb =
//     '<svg viewBox="1.7 4.4 5.5 5.5" ><path transform="translate(-847.64, -604.26)" d="M 850.5623779296875 612.3096313476562 C 849.859375 613.1044921875 849.8157958984375 613.1947021484375 849.6727294921875 614.1544799804688 L 849.3389892578125 614.1544799804688 L 849.3389892578125 608.697021484375 L 854.7962646484375 608.697021484375 L 854.7962646484375 614.15380859375 L 854.4473876953125 614.15380859375 C 854.424072265625 613.4195556640625 854.1304931640625 612.806640625 853.5601806640625 612.3167114257812 C 853.93408203125 611.8157958984375 854.0604248046875 611.2592163085938 853.9119873046875 610.6593017578125 C 853.8023681640625 610.2169799804688 853.549560546875 609.8577270507812 853.1781005859375 609.585693359375 C 852.44970703125 609.05224609375 851.435302734375 609.1135864257812 850.765625 609.7412109375 C 850.125 610.3416137695312 849.894287109375 611.3931884765625 850.5623779296875 612.3096313476562 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_stbqx4 =
//     '<svg viewBox="2.8 5.2 3.3 3.3" ><path transform="translate(-880.55, -628.22)" d="M 886.6300048828125 635.1171875 C 886.6049194335938 636.0400390625 885.8641357421875 636.7638549804688 884.963134765625 636.7459106445312 C 884.046630859375 636.7277221679688 883.3115844726562 635.9680786132812 883.3325805664062 635.0609741210938 C 883.3539428710938 634.1390991210938 884.1192016601562 633.415283203125 885.0435791015625 633.4427490234375 C 885.9318237304688 633.4691162109375 886.6541137695312 634.2315063476562 886.6300048828125 635.1171875 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_ao11q =
//     '<svg viewBox="2.3 8.2 4.2 1.6" ><path transform="translate(-866.39, -720.88)" d="M 872.9334716796875 730.7744750976562 L 868.707763671875 730.7744750976562 C 868.640869140625 730.2490844726562 868.998046875 729.5077514648438 869.4991455078125 729.1332397460938 C 869.8687744140625 729.4721069335938 870.3087158203125 729.6580200195312 870.8133544921875 729.656494140625 C 871.3118896484375 729.6549682617188 871.7508544921875 729.481201171875 872.13134765625 729.1259765625 C 872.64697265625 729.5542602539062 872.9176025390625 730.0933837890625 872.9334716796875 730.7744750976562 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_ydg3 =
//     '<svg viewBox="8.5 5.8 7.8 1.0" ><path transform="translate(-1056.69, -646.82)" d="M 1073.049926757812 652.6489868164062 L 1073.049926757812 653.1356811523438 L 1065.223999023438 653.1356811523438 L 1065.223999023438 652.6489868164062 L 1073.049926757812 652.6489868164062 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_fyf =
//     '<svg viewBox="8.5 9.1 7.8 1.0" ><path transform="translate(-1056.87, -747.53)" d="M 1073.227905273438 756.6510009765625 L 1073.227905273438 757.137451171875 L 1065.406982421875 757.137451171875 L 1065.406982421875 756.6510009765625 L 1073.227905273438 756.6510009765625 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_jh05n =
//     '<svg viewBox="8.5 4.7 7.8 1.0" ><path transform="translate(-1056.81, -613.11)" d="M 1065.348022460938 617.8410034179688 L 1073.16455078125 617.8410034179688 L 1073.16455078125 618.32958984375 L 1065.348022460938 618.32958984375 L 1065.348022460938 617.8410034179688 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_xpfl5m =
//     '<svg viewBox="8.5 6.9 7.8 1.0" ><path transform="translate(-1056.74, -680.41)" d="M 1073.100830078125 687.333984375 L 1073.100830078125 687.8172607421875 L 1065.275024414062 687.8172607421875 L 1065.275024414062 687.333984375 L 1073.100830078125 687.333984375 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_cpbv65 =
//     '<svg viewBox="8.5 8.0 7.8 1.0" ><path transform="translate(-1056.75, -713.91)" d="M 1073.112426757812 721.9320068359375 L 1073.112426757812 722.411865234375 L 1065.286987304688 722.411865234375 L 1065.286987304688 721.9320068359375 L 1073.112426757812 721.9320068359375 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_xx3e1f =
//     '<svg viewBox="2.4 1.2 1.0 1.0" ><path transform="translate(-867.87, -505.41)" d="M 870.2359619140625 506.635986328125 C 870.408935546875 506.6115112304688 870.5599975585938 506.627197265625 870.6533813476562 506.7744750976562 C 870.7481689453125 506.923828125 870.7378540039062 507.0901489257812 870.6573486328125 507.2417602539062 C 870.5706787109375 507.4049682617188 870.4142456054688 507.4232788085938 870.2359619140625 507.4037475585938 L 870.2359619140625 506.635986328125 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_jree21 =
//     '<svg viewBox="3.8 1.2 1.0 1.0" ><path transform="translate(-910.64, -504.19)" d="M 914.405029296875 505.364013671875 C 914.514404296875 505.4068603515625 914.608642578125 505.4279174804688 914.68017578125 505.4801635742188 C 914.70703125 505.4998779296875 914.7044677734375 505.6219482421875 914.6749267578125 505.6446533203125 C 914.6048583984375 505.6984252929688 914.510498046875 505.720703125 914.405029296875 505.764404296875 L 914.405029296875 505.364013671875 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
// const String _svg_ltd6c6 =
//     '<svg viewBox="8.1 1.2 1.0 1.0" ><path transform="translate(-1042.44, -504.65)" d="M 1050.506958007812 506.2267456054688 L 1050.506958007812 505.8340148925781 C 1050.605712890625 505.8632202148438 1050.70166015625 505.8753356933594 1050.7763671875 505.9216003417969 C 1050.806396484375 505.940185546875 1050.816040039062 506.0662841796875 1050.7900390625 506.0869140625 C 1050.716674804688 506.1452941894531 1050.619873046875 506.1743774414062 1050.506958007812 506.2267456054688 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
