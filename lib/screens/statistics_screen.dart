import 'package:flutter/material.dart';
import '../core/theme/app_theme.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  int _selectedFilterIndex = 0;
  final List<String> _filters = ['Weekly', 'Monthly', 'Yearly'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      appBar: AppBar(
        title: const Text('Analytics & Spending'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Filter Tabs
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(_filters.length, (index) {
                  final isSelected = _selectedFilterIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedFilterIndex = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                        color: isSelected ? AppTheme.primaryPurple : AppTheme.cardSurface,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        _filters[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : AppTheme.textSecondary,
                          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 28),

              // Total Spent Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: AppTheme.cardSurface,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Total Spent This Period',
                      style: TextStyle(color: AppTheme.textSecondary, fontSize: 14),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '\$3,428.50',
                      style: TextStyle(color: AppTheme.textWhite, fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    // Simulation of custom bars
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _buildBar('Mon', 0.4),
                        _buildBar('Tue', 0.7),
                        _buildBar('Wed', 0.3),
                        _buildBar('Thu', 0.9, isPeak: true),
                        _buildBar('Fri', 0.6),
                        _buildBar('Sat', 0.8),
                        _buildBar('Sun', 0.5),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),

              const Text(
                'Top Spending Categories',
                style: TextStyle(color: AppTheme.textWhite, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              _buildCategoryTile('Shopping & Retail', '\$1,240.00', 0.45, AppTheme.primaryPurple, Icons.shopping_bag),
              _buildCategoryTile('Dining & Restaurants', '\$850.20', 0.30, AppTheme.accentOrange, Icons.restaurant),
              _buildCategoryTile('Subscriptions & Digital', '\$420.00', 0.15, AppTheme.accentCyan, Icons.subscriptions),
              _buildCategoryTile('Transport & Travel', '\$280.30', 0.10, AppTheme.accentPink, Icons.flight),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBar(String day, double heightRatio, {bool isPeak = false}) {
    return Column(
      children: [
        Container(
          width: 18,
          height: 120 * heightRatio,
          decoration: BoxDecoration(
            color: isPeak ? AppTheme.accentCyan : AppTheme.primaryPurple.withValues(alpha: 0.6),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          day,
          style: TextStyle(color: isPeak ? AppTheme.textWhite : AppTheme.textSecondary, fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildCategoryTile(String title, String amount, double progress, Color color, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.cardSurface,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(color: color.withValues(alpha: 0.2), borderRadius: BorderRadius.circular(12)),
                    child: Icon(icon, color: color, size: 20),
                  ),
                  const SizedBox(width: 12),
                  Text(title, style: const TextStyle(color: AppTheme.textWhite, fontSize: 15, fontWeight: FontWeight.w600)),
                ],
              ),
              Text(amount, style: const TextStyle(color: AppTheme.textWhite, fontSize: 15, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: AppTheme.darkBackground,
              color: color,
              minHeight: 6,
            ),
          ),
        ],
      ),
    );
  }
}
