import 'package:flutter/material.dart';
import 'package:flutterhw4/main.dart';

import '../models/notifications.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {

  var notifications = <Notifications>[
    Notifications(
        1,
        '5 gio truoc',
        1,
        'Nap tien dien thoai',
        'Viettel khuyen mai 50%',
        'cellphone.png',
        0,
        'Nap de cho ca cung nhan qua HOT'),
    Notifications(
        2,
        '5 gio truoc',
        1,
        'Nap tien dien thoai',
        'Viettel khuyen mai 50%',
        'cellphone.png',
        0,
        'Nap de cho ca cung nhan qua HOT'),
    Notifications(
        3,
        '5 gio truoc',
        1,
        'Nap tien dien thoai',
        'Viettel khuyen mai 50%',
        'cellphone.png',
        0,
        'Nap de cho ca cung nhan qua HOT'),
    Notifications(
        4,
        '5 gio truoc',
        1,
        'Nap tien dien thoai',
        'Viettel khuyen mai 50%',
        'cellphone.png',
        0,
        'Nap de cho ca cung nhan qua HOT'),
    Notifications(
        5,
        '5 gio truoc',
        1,
        'Nap tien dien thoai',
        'Viettel khuyen mai 50%',
        'cellphone.png',
        0,
        'Nap de cho ca cung nhan qua HOT'),
    Notifications(
        6,
        '5 gio truoc',
        1,
        'Nap tien dien thoai',
        'Viettel khuyen mai 50%',
        'cellphone.png',
        0,
        'Nap de cho ca cung nhan qua HOT'),
    Notifications(
        7,
        '5 gio truoc',
        1,
        'Nap tien dien thoai',
        'Viettel khuyen mai 50%',
        'cellphone.png',
        0,
        'Nap de cho ca cung nhan qua HOT'),
    Notifications(
        8,
        '5 gio truoc',
        1,
        'Nap tien dien thoai',
        'Viettel khuyen mai 50%',
        'cellphone.png',
        0,
        'Nap de cho ca cung nhan qua HOT'),
    Notifications(
        9,
        '5 gio truoc',
        1,
        'Nap tien dien thoai',
        'Viettel khuyen mai 50%',
        'cellphone.png',
        0,
        'Nap de cho ca cung nhan qua HOT'),
    Notifications(
        10,
        '5 gio truoc',
        2,
        'Nap tien dien thoai',
        'Viettel khuyen mai 50%',
        'cellphone.png',
        0,
        'Nap de cho ca cung nhan qua HOT'),
    Notifications(
        11,
        '5 gio truoc',
        2,
        'Cap nhat chinh sach',
        'Cap nhat chinh sach moi ve dich vu cua Momo',
        'cellphone.png',
        0,
        'Cap nhat de cho ca cung nhan qua HOT'),
  ];

  var notiType = 2;

  final Color _colorBg = Colors.grey.shade100;
  final Color _colorText = Colors.black38;
  final Color _colorBgSelected = Colors.pink;
  final Color _colorTextSelected = Colors.white;
   void getType() async {
    //setState(() => notiTypewd2 = notiType);
    var notis = [];
    for(int i=0;i<notifications.length;i++){
      if(notifications[i].type==notiType) {
         notis.add(notifications[i]);
      }
    }
    print(notis);
   // return notis;
  }
  @override
  Widget build(BuildContext context) {
    print(notifications.length);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          'Thông báo (${notifications.length.toString()})',
          style: TextStyle(fontSize: 26),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Colors.pink,
                  Colors.pink.shade200,
                ],
              )),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyApp()));
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.checklist),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),

          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    NotiType("Giao dịch", 1),
                    const SizedBox(
                      width: 20,
                    ),
                    NotiType("Ưu đãi", 2),
                    const SizedBox(
                      width: 20,
                    ),
                    NotiType("Cập nhật", 3),
                    const SizedBox(
                      width: 20,
                    ),
                    NotiType("Tất cả", 4),


                  ],
                ),
              ),
              solution(),
              // ListView.builder(
              //     physics: NeverScrollableScrollPhysics(),
              //     scrollDirection: Axis.vertical,
              //     shrinkWrap: true,
              //     itemCount: notifications.length,
              //     itemBuilder: (BuildContext context, int index) {
              //       return notify(notifications[index]);
              //     }
              // ),

            ],
          ),
        ),
      ),
    );
  }

  Widget NotiType(var text, int notiTypeWd) {
    return GestureDetector(
      onTap: () {
        notiType = notiTypeWd;
        setState(() => notiType = notiTypeWd);
        getType();
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: notiType == notiTypeWd ? _colorBgSelected : _colorBg,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20,
                color:
                notiType == notiTypeWd ? _colorTextSelected : _colorText),
          ),
        ),
      ),
    );
  }

  Widget notify(Notifications notifications) {

    return Container(

      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),

      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 10,),
              Image(
                height: 30,
                image: AssetImage(notifications.iconUrl),
              ),
              const SizedBox(width: 10,),
              Text(notifications.title,style: const TextStyle(fontSize: 20),),
              const SizedBox(width: 5,),
              Icon(size:15,Icons.circle,color: Colors.red,),
              Expanded(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(notifications.dateCreate),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                    ],
                  )),
            ],
          ),
          Container(margin: const EdgeInsets.fromLTRB(20, 5, 20, 20),width: double.infinity,height: 1,color: Colors.grey.shade300,),


          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(notifications.heading,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                  const SizedBox(height: 5,),
                  Text(notifications.content,style: const TextStyle(fontSize: 13),textAlign: TextAlign.left,),
                ],
              ),
            ),
          )


        ],
      ),
    );
  }






  Widget solution(){


    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      // child: SingleChildScrollView(
      //   physics: ScrollPhysics(),
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: notifications.length,
            itemBuilder: (BuildContext context, int index) {
              return notify(notifications[index]);
            }
        ),
    //  ),
    );
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
}
