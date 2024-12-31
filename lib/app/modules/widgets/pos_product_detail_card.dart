import 'package:flutter/material.dart';

class PosProductDetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(255, 255, 255, 1),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(width: 1.0, color: Color.fromRGBO(0, 0, 0, .15))),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(
              Icons.image,
              size: 76.0,
              color: Colors.grey,
            ),
            SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MINYAK GORENG",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1F2933),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Rp 15.000",
                  style: TextStyle(
                    color: Color(0xFF4F62C1),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Container(
                  height: 40.0, // remove then
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: Color(0xFFD9D9D9),
                      width: 1.0,
                    ),
                  ),
                  padding: EdgeInsets.zero,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.restore_from_trash_outlined,
                          size: 20.0,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text("1", style: TextStyle(fontSize: 16)),
                      SizedBox(width: 8.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
