import 'package:flutter/material.dart';

class PosProductDetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(
              Icons.image,
              size: 60.0,
              color: Colors.grey,
            ),
            SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MINYAK GORENG",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Rp 15.000",
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(height: 4),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    )
                  ),
                  padding: EdgeInsets.zero,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_circle_outline, size: 20.0,),
                      ),
                      SizedBox(width: 8.0),
                      Text("1", style: TextStyle(fontSize: 16)),
                      SizedBox(width: 8.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_circle_outline, size: 20.0,),
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
