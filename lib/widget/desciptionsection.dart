import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            'Video ini adalah sesi pembelajaran yang dipandu oleh Pak Doni Ganteng, seorang mentor yang sangat berpengalaman dan inspiratif. Dalam video ini, Pak Doni Ganteng membahas berbagai topik menarik dengan gaya penyampaian yang santai, jelas, dan mudah dipahami. Beliau memberikan banyak tips, trik, dan insight berharga yang bisa langsung diaplikasikan. Pokoknya, Pak Doni Ganteng selalu bikin suasana belajar jadi seru dan menyenangkan! Jangan lewatkan momen-momen kerennya di video ini, karena setiap detiknya penuh dengan ilmu dan motivasi. Yuk, ikuti terus video-video dari Pak Doni Ganteng untuk upgrade skill dan pengetahuan kita!',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black.withOpacity(0.6),
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Course Lenght:',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(Icons.timer, color: Color(0xff674aef), size: 20),
              SizedBox(
                width: 7,
              ),
              Text(
                '5 Jam',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff674aef),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'Rating:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text(
                '4.9',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
