import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitulaanbaatar/provider/common.dart';

class DesDetail extends StatefulWidget {
  const DesDetail({super.key});

  @override
  State<DesDetail> createState() => _DesDetailState();
}

class _DesDetailState extends State<DesDetail> {
  PageController _controller = PageController();
  PageController _controller_ = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<CommonProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width,
                  height: size.height * 0.3,
                  child: Stack(
                    alignment: Alignment.center,
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                          "http://202.179.6.26:8000/asset/" +
                              provider.getCategoryProducts(provider
                                      .categoryIndex)[provider.productIndex]
                                  ['thumb'],
                          fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle,
                          ),
                          iconSize: 64,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      SafeArea(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              size: 30,
                              color: const Color.fromARGB(255, 0, 0, 0)
                                  .withOpacity(0.7),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      ),
                      Text(
                        provider.getCategoryProducts(
                                provider.categoryIndex)[provider.productIndex]
                            ['name'],
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 18,
                            color: Colors.red,
                          ),
                          Text(
                            provider.getCategoryProducts(provider
                                    .categoryIndex)[provider.productIndex]
                                ['location'],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Stack(children: [
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.width * 0.35,
                            child: PageView.builder(
                              controller: _controller,
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (content, index) => Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Center(
                                  child: Text(
                                    provider.getCategoryProducts(
                                                provider.categoryIndex)[
                                            provider.productIndex][
                                        "description${index == 0 ? "" : index}"],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    height: size.width * 0.4,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 4,
                        effect: ColorTransitionEffect(
                            activeDotColor: Colors.red,
                            dotColor: Colors.grey,
                            dotHeight: 10,
                            dotWidth: 10),
                      ),
                    ),
                  )
                ]),
                Stack(children: [
                  SizedBox(
                    height: size.width * 0.9,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                        itemCount: provider
                            .getCategoryProducts(provider.categoryIndex)[
                                provider.productIndex]['images']
                            .length,
                        controller: _controller_,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                // color: color[index],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Image.network(
                                "http://202.179.6.26:8000/asset/" +
                                    provider.getCategoryProducts(
                                            provider.categoryIndex)[
                                        provider.productIndex]['images'][index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: size.width * 0.82,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(
                        controller: _controller_,
                        count: provider
                            .getCategoryProducts(provider.categoryIndex)[
                                provider.productIndex]['images']
                            .length,
                        effect: ScrollingDotsEffect(
                            activeDotScale: 1,
                            activeStrokeWidth: 1,
                            fixedCenter: true,
                            activeDotColor: Colors.red,
                            dotColor: Colors.grey,
                            dotHeight: 10,
                            dotWidth: 10),
                      ),
                    ),
                  )
                ]),
                Padding(padding: EdgeInsets.symmetric(horizontal: 15,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Recommended accommodations', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: NetworkImage('https://s3-alpha-sig.figma.com/img/ae0a/c8cc/ec525101418414d83f780a53bb99e648?Expires=1704067200&Signature=FjKjc01kCExW63ToM330647M6RFkfJQ8KI8bjcRSoKXw0fxh1iLVwCL5~R3pIjtTd5Xg8U0LKB0cf1fHAfnBmR5aCrqetCfRuXbebbI79-Nkyuc7N9VhYVQHCqVg6oPxDEow2j4O5h275dEeiNCQxbeaIJitC7bxsxEgvppJOAGGL-2bvpldtS4lmfKPKX7Ai7VxsoWBGwGg-Dm8UWlxw8tok7slykOCwpEYb1QDdHPt~Vx3jxBu9KvqxnM1ZlKRfwx68U-ApSbIYxI2vcBEoVoBJ4aTmJV9LznUopX9Rc4QW8nhz8OfH44Ejw8JT91xlJ6XG8wTzdGXGwMoSqJkbA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'), fit: BoxFit.cover)
                            ),
                            width: size.width * 0.45,
                            height: size.width * 0.50,
                            child: Padding(padding: EdgeInsets.all(10,),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text('Maikhan tolgoi', style: TextStyle(fontSize: 14, color: Colors.white),),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: NetworkImage('https://s3-alpha-sig.figma.com/img/b9d2/0bad/eb90fe91ae411c9ccdb56a48200fc9e4?Expires=1704067200&Signature=NoPVx4D1w3eD5OJ8PqOpSTmZGJie4E5Vm~iclU1LQx6MkcecLMKr6511tL0XRoD5J94KOM4kvpvjtO7stYlQkrV1zAlUJHCJ1HNFiPngFk6qPP9tFKCL6LwNL0jrwXygts9eJRAEJDS~~KZcipohsTWMHZMz4SFsbKkbBZhC4wU1p7m2T3nYfi5MuSP-qIwcfndaRIp5um5o9ssemBGgf5QWDt32faHZc4qEQHdD~FxSwn-bctua~gQ1BkZPZqfgRmo3~vcsqMUg2Oc~WJFa~ODAftiJBEoOt3y02FslMpLcSfBaH84JIhLOkPACX4LeJjSYcuPU31vwGvqGWTI~FA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'), fit: BoxFit.cover)
                            ),
                            width: size.width * 0.45,
                            height: size.width * 0.50,
                            child: Padding(padding: EdgeInsets.all(10,),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text('Asa Land', style: TextStyle(fontSize: 14, color: Colors.white),),
                              ),
                            ),
                          ),  
                        ],
                      ),
                      SizedBox(height: 10,),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: NetworkImage('https://s3-alpha-sig.figma.com/img/ae0a/c8cc/ec525101418414d83f780a53bb99e648?Expires=1704067200&Signature=FjKjc01kCExW63ToM330647M6RFkfJQ8KI8bjcRSoKXw0fxh1iLVwCL5~R3pIjtTd5Xg8U0LKB0cf1fHAfnBmR5aCrqetCfRuXbebbI79-Nkyuc7N9VhYVQHCqVg6oPxDEow2j4O5h275dEeiNCQxbeaIJitC7bxsxEgvppJOAGGL-2bvpldtS4lmfKPKX7Ai7VxsoWBGwGg-Dm8UWlxw8tok7slykOCwpEYb1QDdHPt~Vx3jxBu9KvqxnM1ZlKRfwx68U-ApSbIYxI2vcBEoVoBJ4aTmJV9LznUopX9Rc4QW8nhz8OfH44Ejw8JT91xlJ6XG8wTzdGXGwMoSqJkbA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'), fit: BoxFit.cover)
                            ),
                            width: size.width * 0.45,
                            height: size.width * 0.50,
                            child: Padding(padding: EdgeInsets.all(10,),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text('Maikhan tolgoi', style: TextStyle(fontSize: 14, color: Colors.white),),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: NetworkImage('https://s3-alpha-sig.figma.com/img/b9d2/0bad/eb90fe91ae411c9ccdb56a48200fc9e4?Expires=1704067200&Signature=NoPVx4D1w3eD5OJ8PqOpSTmZGJie4E5Vm~iclU1LQx6MkcecLMKr6511tL0XRoD5J94KOM4kvpvjtO7stYlQkrV1zAlUJHCJ1HNFiPngFk6qPP9tFKCL6LwNL0jrwXygts9eJRAEJDS~~KZcipohsTWMHZMz4SFsbKkbBZhC4wU1p7m2T3nYfi5MuSP-qIwcfndaRIp5um5o9ssemBGgf5QWDt32faHZc4qEQHdD~FxSwn-bctua~gQ1BkZPZqfgRmo3~vcsqMUg2Oc~WJFa~ODAftiJBEoOt3y02FslMpLcSfBaH84JIhLOkPACX4LeJjSYcuPU31vwGvqGWTI~FA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'), fit: BoxFit.cover)
                            ),
                            width: size.width * 0.45,
                            height: size.width * 0.50,
                            child: Padding(padding: EdgeInsets.all(10,),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text('Asa Land', style: TextStyle(fontSize: 14, color: Colors.white),),
                              ),
                            ),
                          ),  
                        ],
                      )
                    ],
                  ),
                  
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        );
      },
    );
  }
}
