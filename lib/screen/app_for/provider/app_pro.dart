import 'package:flutter/material.dart';
import 'package:playstore/screen/app_for/modal/app_modal.dart';

class AppProvider extends ChangeNotifier {
  List<aData> data = [
    aData(logo: 'In', rate: '4.8', name: 'Invoice',cat: 'App',dow: '2.5k',size: '65 MB',link: 'https://github.com/raiyaniansh/invoice' ,img1: 'assets/images/i1.jpg', img2: 'assets/images/i2.jpg',img3: 'assets/images/i3.jpg',img4:'assets/images/i4.jpg',img5: 'assets/images/i5.jpg',img6: '',img7: '',img8: '',img9: '',img10: '',img11: '',img12: ''),
    aData(logo: 'RB', rate: '4.1', name: 'Resume',cat: 'App',dow: '2.5k',size: '65 MB',link: 'https://github.com/raiyaniansh/resume' ,img1: 'assets/images/r1.jpg', img2: 'assets/images/r2.jpg',img3: 'assets/images/r3.jpg',img4:'assets/images/r4.jpg',img5: 'assets/images/r5.jpg',img6: 'assets/images/r6.jpg',img7: 'assets/images/r7.jpg',img8: 'assets/images/r8.jpg',img9: 'assets/images/r9.jpg',img10: 'assets/images/r10.jpg',img11: 'assets/images/r11.jpg',img12: 'assets/images/r12.jpg'),
    aData(logo: 'Qa', rate: '4.0', name: 'Quotes',cat: 'App',dow: '3.0k',size: '100 MB',link: 'https://github.com/raiyaniansh/quotes' ,img1: 'assets/images/q1.jpg', img2: 'assets/images/q2.jpg',img3: 'assets/images/q3.jpg',img4: 'assets/images/q4.jpg',img5: 'assets/images/q5.jpg',img6: 'assets/images/q6.jpg',img7: '',img8: '',img9: '',img10: '',img11: '',img12: ''),
    aData(logo: 'Ca', rate: '4.0', name: 'Contact',cat: 'App',dow: '5.5k',size: '68 MB',link: 'https://github.com/raiyaniansh/contact' ,img1: 'assets/images/c3.jpg', img2: 'assets/images/c1.jpg',img3: 'assets/images/c2.jpg',img4: '',img5: '',img6: '',img7: '',img8: '',img9: '',img10: '',img11: '',img12: ''),
    aData(logo: 'Ceo', rate: '3.8', name: 'Ceo',cat: 'App',dow: '2.5k',size: '35 MB',link: 'https://github.com/raiyaniansh/ceo' ,img1: 'assets/images/ceo.jpg', img2: '',img3: '',img4: '',img5: '',img6: '',img7: '',img8: '',img9: '',img10: '',img11: '',img12: ''),
    aData(logo: 'Ca', rate: '4.0', name: 'Contact',cat: 'App',dow: '5.5k',size: '60 MB',link: 'https://github.com/raiyaniansh/contact' ,img1: 'assets/images/c3.jpg', img2: 'assets/images/c1.jpg',img3: 'assets/images/c2.jpg',img4: '',img5: '',img6: '',img7: '',img8: '',img9: '',img10: '',img11: '',img12: ''),
  ];

  Widget imgi1(int i)
  {
    if(data[i].img1!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(5),
        child: Image.asset('${data[i].img1}',height: 200,),
      );
    }
  }

  Widget imgi2(int i)
  {
    if(data[i].img2!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(5),
        child: Image.asset('${data[i].img2}',height: 200,),
      );
    }
  }

  Widget imgi3(int i)
  {
    if(data[i].img3!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(5),
        child: Image.asset('${data[i].img3}',height: 200,),
      );
    }
  }

  Widget imgc1(int i)
  {
    if(data[i].img1!.isEmpty)
      {
        return Container();
      }
    else
      {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset('${data[i].img1}',height: 300,),
        );
      }
  }
  Widget imgc2(int i)
  {
    if(data[i].img2!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset('${data[i].img2}',height: 300,),
      );
    }
  }
  Widget imgc3(int i)
  {
    if(data[i].img3!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset('${data[i].img3}',height: 300,),
      );
    }
  }
  Widget imgc4(int i)
  {
    if(data[i].img4!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset('${data[i].img4}',height: 300,),
      );
    }
  }
  Widget imgc5(int i)
  {
    if(data[i].img5!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset('${data[i].img5}',height: 300,),
      );
    }
  }
  Widget imgc6(int i)
  {
    if(data[i].img6!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset('${data[i].img6}',height: 300,),
      );
    }
  }
  Widget imgc7(int i)
  {
    if(data[i].img7!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset('${data[i].img7}',height: 300,),
      );
    }
  }
  Widget imgc8(int i)
  {
    if(data[i].img8!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset('${data[i].img8}',height: 300,),
      );
    }
  }
  Widget imgc9(int i)
  {
    if(data[i].img9!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset('${data[i].img9}',height: 300,),
      );
    }
  }
  Widget imgc10(int i)
  {
    if(data[i].img10!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset('${data[i].img10}',height: 300,),
      );
    }
  }
  Widget imgc11(int i)
  {
    if(data[i].img11!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset('${data[i].img11}',height: 300,),
      );
    }
  }
  Widget imgc12(int i)
  {
    if(data[i].img12!.isEmpty)
    {
      return Container();
    }
    else
    {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset('${data[i].img12}',height: 300,),
      );
    }
  }
}
