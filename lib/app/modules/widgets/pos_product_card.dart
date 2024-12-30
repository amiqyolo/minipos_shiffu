import 'package:flutter/material.dart';

class PosProductCard extends StatelessWidget {
  final VoidCallback onClick;

  PosProductCard({super.key, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      borderRadius: BorderRadius.circular(10.0),
      splashColor: Color(0xFF4F62C1),
      child: Card(
        color: Color.fromRGBO(255, 255, 255, 1),
        elevation: .2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            width: 1,
            color: Color.fromRGBO(0, 0, 0, .1),
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.image,
                size: 60,
                color: Colors.grey,
              ),
              SizedBox(height: 8.0),
              Text(
                "MINYAK GORENG",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                  color: Color(0xFF1F2933),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 4.0),
              Text(
                "Rp 15.000",
                style: TextStyle(
                  color: Color(0xFF6C7CCB),
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Tambah",
                  style: TextStyle(
                    color: Color(0xFF4F62C1),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  elevation: 0.0,
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
