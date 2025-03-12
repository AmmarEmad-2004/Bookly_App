import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.165,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => CustomBookItem(
          imageUrl:
              'https://images.search.yahoo.com/images/view;_ylt=AwrigbIij9FnI7MCUEmJzbkF;_ylu=c2VjA3NyBHNsawNpbWcEb2lkAzU1NmQ5MWFlNjQwYjM0NTNmMzBjNDNjOTdhZTM1YmE4BGdwb3MDMzMEaXQDYmluZw--?back=https%3A%2F%2Fimages.search.yahoo.com%2Fsearch%2Fimages%3Fp%3Djojostu%26ei%3DUTF-8%26type%3DE210US91105G0%26fr%3Dmcafee%26fr2%3Dp%253As%252Cv%253Ai%252Cm%253Asb-top%26tab%3Dorganic%26ri%3D33&w=736&h=981&imgurl=pm1.aminoapps.com%2F7247%2F9a8b1c994ab1cb21bef03addd8b0b391718afader1-736-981v2_uhq.jpg&rurl=https%3A%2F%2Faminoapps.com%2Fc%2Fjojo-bizarre-adventures%2Fpage%2Fitem%2Fgary-stu%2Fr0We_7bPuqILabGbMaGakZNDnkWKoYaqeBE&size=63KB&p=jojostu&oid=556d91ae640b3453f30c43c97ae35ba8&fr2=p%3As%2Cv%3Ai%2Cm%3Asb-top&fr=mcafee&tt=Gary+Stu+%7C+Wiki+%7C+Jojo%E2%80%99s+Bizarre+Amino+Amino&b=0&ni=160&no=33&ts=&tab=organic&sigr=F5doaHvyjRMZ&sigb=w9j74ZbkFO32&sigi=BzOVFB2hN_2m&sigt=3jn9SYskKLh9&.crumb=irRZBbPn9tk&fr=mcafee&fr2=p%3As%2Cv%3Ai%2Cm%3Asb-top&type=E210US91105G0',
        ),
      ),
    );
  }
}
