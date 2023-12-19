import 'package:flutter/material.dart';

class SafetyInMongolia extends StatelessWidget {
  const SafetyInMongolia({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'General info in Mongolia',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
              size: 28,
            )),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/118b/bc1a/b0b075d94df783dee245c2a807ae7ed0?Expires=1699833600&Signature=kOyl5qMWqlf~CI5fAsLN4D2x~IQJpzF4ygI7ffwV6z0GiPKSQUSIJCtE5meI8D-uHjG6Pc8XDSb6g2R-y390IruKR~7aepsj8ACnvswaMKC7z3yEpWxt5MGFDdvn~79vh-OtWDM-58G9~ojMDV6X5gDqVn-V1DIfRMhAZ6PP7uBuYk6pf6GjN1HqIGPB2lF-VTQz2CXLCSDIzZOmNjh1fKjZx1GbjHr2h62WGNHtAxcKeOABD07-z6lG0HHmwAbsOf55fVnhygnRNSdN~B-gS5WVtPzu3bT7sNx9AgJjCAeyQQz1l6vC6amHbwY7DTp1U9UBQ~t1lK54i8H~HxvdJQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                      fit: BoxFit.cover),
                ),
                width: size.width,
                height: size.height * 0.25,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                  'Mongolia is generally a safe country for travelers. While crime rates are low, it`s essential to be cautious in remote areas, respect local customs, and prepare for varying weather conditions. Health services can be limited in rural areas, so having comprehensive travel insurance is advisable. Overall, Mongolia is safe for tourists who exercise basic safety precautions. Mongolia is one of the safest countries in Asia. It ranks as the 8th safest country in Asia after countries such as Singapore, Japan, Malaysia, and Kuwait and 40th in the world. But there are things you still need to be aware about. So, here are the best tips to be safe during your stay in Mongolia.'),
              SizedBox(
                height: 15,
              ),
              Text(
                'General safety advice for travelers in Mongolia:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                  Text('Respect nomadic culture and customs.')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                  Text('Be prepared for variable weather.')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                  Text('Stay aware in remote areas.')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                  Expanded(
                    child: Text(
                        'In Ulaanbaatar, be aware of your belongings, pick pockets operate near touristic sites, museums and temples.'),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                  Expanded(
                    child: Text(
                        'Plan and communicate well, especially in isolated regions'),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                  Expanded(
                    child: Text(
                        'Ensure you have local contacts and emergency numbers with you at all times.'),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                  Text('Be cautious of wildlife and road conditions.')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                  Text('Travel with an experienced guide')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                  ),
                  Expanded(
                    child: Text(
                        'Learn basic Mongolian phrases for effective communication.'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
