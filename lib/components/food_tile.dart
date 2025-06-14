import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {
  final String foodName;
  final String calories;
  final String protein;
  final String carbs;
  final String fats;
  final bool isCompleted;
  final VoidCallback onDelete;
  final bool isSelected;
  final VoidCallback? onTap;

  const FoodTile({
    super.key,
    required this.foodName,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fats,
    required this.isCompleted,
    required this.onDelete,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 65,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: isSelected ? Color.fromRGBO(40, 60, 120, 0.4) : Color.fromRGBO(31, 31, 31, 1),
            borderRadius: BorderRadius.circular(16),
            border: isSelected ? Border.all(color: Colors.blue, width: 2) : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    if (isSelected)
                      Icon(Icons.check_circle, color: Colors.blue, size: 22),
                    if (!isSelected)
                      SizedBox(width: 22),
                    SizedBox(width: 8),
                    Icon(Icons.restaurant),
                    SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              foodName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            '$calories cal  $protein P  $fats F  $carbs C',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.delete, color: Colors.white),
                onPressed: onDelete,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
