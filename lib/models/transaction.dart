import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String title;
  final String category;
  final double amount;
  final String date;
  final IconData icon;
  final Color iconBackgroundColor;
  final bool isExpense;

  const Transaction({
    required this.id,
    required this.title,
    required this.category,
    required this.amount,
    required this.date,
    required this.icon,
    required this.iconBackgroundColor,
    this.isExpense = true,
  });

  static List<Transaction> get dummyTransactions => [
        const Transaction(
          id: '1',
          title: 'Apple Store',
          category: 'Technology & Gadgets',
          amount: 999.00,
          date: 'Today, 2:45 PM',
          icon: Icons.apple,
          iconBackgroundColor: Color(0xFF272B40),
          isExpense: true,
        ),
        const Transaction(
          id: '2',
          title: 'Spotify Premium',
          category: 'Monthly Subscription',
          amount: 14.99,
          date: 'Yesterday',
          icon: Icons.music_note,
          iconBackgroundColor: Color(0xFF00C48C),
          isExpense: true,
        ),
        const Transaction(
          id: '3',
          title: 'Sarah Jenkins',
          category: 'Freelance Design Payment',
          amount: 1250.00,
          date: 'July 2, 2026',
          icon: Icons.arrow_downward,
          iconBackgroundColor: Color(0xFF6C5DD3),
          isExpense: false,
        ),
        const Transaction(
          id: '4',
          title: 'Uber Rides',
          category: 'Transport',
          amount: 24.50,
          date: 'July 1, 2026',
          icon: Icons.directions_car,
          iconBackgroundColor: Color(0xFFFF974A),
          isExpense: true,
        ),
        const Transaction(
          id: '5',
          title: 'Starbucks Coffee',
          category: 'Food & Drink',
          amount: 8.75,
          date: 'June 30, 2026',
          icon: Icons.coffee,
          iconBackgroundColor: Color(0xFFFF5C8D),
          isExpense: true,
        ),
      ];
}
