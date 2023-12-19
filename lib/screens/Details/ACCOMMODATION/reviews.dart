import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AccReviews extends StatefulWidget {
  const AccReviews({super.key});

  @override
  State<AccReviews> createState() => _AccReviewsState();
}

class _AccReviewsState extends State<AccReviews> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15, 
          vertical: 10
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Write a review',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage('https://s3-alpha-sig.figma.com/img/56e4/22b2/30b350fc99d1170dac78939a462cec4d?Expires=1704067200&Signature=PbuMSkVhrHP6ZY5RV4yySjrkGhzbe6zD8VbgWXtjfDC1W-uoTKiWlkuci95XMpgh01RwZ9nqlDP1KrNBidgn3cetxetGjWQLJg5AU-tytqj2Fj4dRv9d0LFtn1CoGqsH4XxTkbeVXaDmZxyuaN8E1woPb0IGiynXxJW6gcdV2ieXim2OI-KoeAREtL-0qjqeXsaNOP0fOzWEPpKzrY3WFOsXEw1G0HKH2fTV1wpCDQas-~yZtwZrAvFml2kakvttWDUcMPfmWdvN3RZ2Ak6Aie-shwF63Muu6tEMQKMN01PHmOGV6LwCMZw5ANm6hfYIyBhhiFr-CNzMF5fBy56FWw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'), fit: BoxFit.cover)
                  ),
                  width: size.width * 0.15,
                  height: size.width * 0.15,
                ),
                SizedBox(width: 10,),
                RatingBar.builder(
                    itemSize: 35,
                    initialRating: 0,
                    minRating: 0,
                    allowHalfRating: true,
                    direction: Axis.horizontal,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
