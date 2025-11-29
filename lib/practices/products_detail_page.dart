import 'package:flutter/material.dart';

void main() {
  runApp(const ProductDetailPageApp());
}

// ------------------- Main App Widget -------------------

class ProductDetailPageApp extends StatelessWidget {
  const ProductDetailPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMW M4 Coupe',
      home: ProductDetailPage(),
    );
  }
}

// ------------------- Product Detail Screen -------------------

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(context),
          SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ProductImageHeader(),
                    SizedBox(height: 20),
                    ProductDetailsSection(), // Title, description, price, and rating
                  ],
                ),
              ),
              const Divider(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: ProductReviewSection(),
              ),
              const Divider(height: 30),
              const ProductActionsSection(),
              const SizedBox(height: 20),
            ]),
          ),
        ],
      ),
    );
  }

  SliverAppBar _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 222.0,
      pinned: true,
      floating: true,
      title: const Text('BMW M4 Coupe', style: TextStyle(color: Colors.white)),
      centerTitle: true,

      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart, color: Colors.white),
          onPressed: () {},
        ),
      ],

      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/images/product_appbar.jpg',
          fit: BoxFit.cover,
          color: Colors.black38,
          colorBlendMode: BlendMode.darken,
        ),
      ),
    );
  }
}

// ------------------- Product Image Header -------------------

class ProductImageHeader extends StatelessWidget {
  const ProductImageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Image.asset(
        'assets/images/bmw_product.jpg',
        height: 280,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

// ------------------- Product Details Section -------------------

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title and Share Icon Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
              child: Text(
                'BMW M4 Coupe',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF1A237E),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.share, color: Colors.blueGrey, size: 24),
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: 5),

        // Price Text
        Text(
          '\$71,800',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.green[700],
          ),
        ),
        const SizedBox(height: 15),

        // Description Text
        const Text(
          'Experience the thrill of driving with the BMW M4 Coupe. Featuring a powerful engine, sleek design, and cutting-edge technology, this car is built for performance and style. It blends race-car technology with everyday usability.',
          style: TextStyle(fontSize: 16, height: 1.4, color: Colors.grey),
        ),
        const SizedBox(height: 20),

        // Rating Row
        _buildRatingRow(),
      ],
    );
  }

  Widget _buildRatingRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 20),
            Icon(Icons.star, color: Colors.amber, size: 20),
            Icon(Icons.star, color: Colors.amber, size: 20),
            Icon(Icons.star, color: Colors.amber, size: 20),
            Icon(Icons.star_half, color: Colors.amber, size: 20),
          ],
        ),
        const SizedBox(width: 8),
        // Review Text
        Text(
          '4.5 (128 Reviews)',
          style: TextStyle(
            fontSize: 16,
            color: Colors.blueGrey[700],
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}

// ------------------- Product Actions Section (Bottom Bar) -------------------

class ProductActionsSection extends StatelessWidget {
  const ProductActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Row(
        children: [
          // Wishlist/Favorite Button
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: IconButton(
              icon: const Icon(Icons.favorite_border, color: Colors.red),
              onPressed: () {},
              tooltip: 'Add to Wishlist',
            ),
          ),
          const SizedBox(width: 12),
          // Add to Cart Button
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              label: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ------------------- PRODUCT REVIEWS SECTION -------------------

class ProductReviewSection extends StatelessWidget {
  const ProductReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Customer Reviews (128)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See All >',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const ReviewCard(
          username: 'John Doe',
          date: '2 days ago',
          rating: 4.5,
          comment: 'Fantastic quality and performance! Worth every penny.',
        ),

        const SizedBox(height: 15),

        Center(
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.edit_note),
            label: const Text('Write a Review'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blueGrey,
              side: BorderSide(color: Colors.grey.shade400),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String username;
  final String date;
  final double rating;
  final String comment;

  const ReviewCard({
    super.key,
    required this.username,
    required this.date,
    required this.rating,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.account_circle,
                color: Colors.blueGrey,
                size: 30,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  username,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                date,
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _starRating(),
          const SizedBox(height: 8),

          Text(comment, style: const TextStyle(fontSize: 15)),
        ],
      ),
    );
  }

  Widget _starRating() {
    return const Row(
      children: [
        Icon(Icons.star, color: Colors.amber, size: 16),
        Icon(Icons.star, color: Colors.amber, size: 16),
        Icon(Icons.star, color: Colors.amber, size: 16),
        Icon(Icons.star, color: Colors.amber, size: 16),
        Icon(Icons.star_half, color: Colors.amber, size: 16),
      ],
    );
  }
}
