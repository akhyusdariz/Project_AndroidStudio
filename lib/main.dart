import 'package:flutter/material.dart';

// =========================================
// DATA MODELS
// =========================================
class Product {
  final String id;
  final String name;
  final String price;
  final String category;
  final String description;
  final String image;
  final double rating;
  final List<String> tags;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.description,
    this.image = 'assets/placeholder.png',
    this.rating = 4.5,
    this.tags = const [],
  });
}

class Category {
  final String name;
  final IconData icon;
  final int productCount;

  const Category({
    required this.name,
    required this.icon,
    required this.productCount,
  });
}

class Order {
  final String id;
  final String productName;
  final String price;
  final DateTime date;
  final String status; // Dikemas, Dikirim, Sampai, Dibatalkan
  final String trackingNumber;

  const Order({
    required this.id,
    required this.productName,
    required this.price,
    required this.date,
    required this.status,
    required this.trackingNumber,
  });
}

class AppNotification {
  final String id;
  final String title;
  final String message;
  final DateTime time;
  final bool isRead;
  final IconData icon;

  const AppNotification({
    required this.id,
    required this.title,
    required this.message,
    required this.time,
    this.isRead = false,
    this.icon = Icons.notifications,
  });
}

// =========================================
// SAMPLE DATA
// =========================================
final List<Product> allProducts = [
  // Timteng (6 produk)
  Product(
    id: 't1',
    name: 'Rasasi Hawas Ice',
    price: 'Rp 450.000',
    category: 'Timteng',
    description: 'Parfum segar dan beku khas Rasasi dengan nuansi citrus dan aquatic yang menyegarkan.',
    rating: 4.9,
    tags: ['timteng', 'pria', 'best_seller'],
    image: 'assets/images/rasasi_hawas_ice.jpg',
  ),
  Product(
    id: 't2',
    name: 'Afnan Supremacy Not Only Intense',
    price: 'Rp 525.000',
    category: 'Timteng',
    description: 'Versi intense dari Supremacy dengan performa tahan lama dan proyeksi yang kuat.',
    rating: 4.8,
    tags: ['timteng', 'pria', 'best_seller'],
    image: 'assets/images/afnan_supremacy_not_only_intense.jpg',
  ),
  Product(
    id: 't3',
    name: 'Afnan 9PM Rebel',
    price: 'Rp 475.000',
    category: 'Timteng',
    description: 'Aroma sedap malam yang berani dengan nuansi gourmand dan woody yang menarik.',
    rating: 4.9,
    tags: ['timteng', 'pria', 'best_seller'],
    image: 'assets/images/afnan_9pm_rebel.jpg',
  ),
  Product(
    id: 't4',
    name: 'Khadlaj Island',
    price: 'Rp 425.000',
    category: 'Timteng',
    description: 'Parfum tropis dengan sentuhan floral dan fruity, cocok untuk suasana santai.',
    rating: 4.7,
    tags: ['timteng', 'wanita'],
    image: 'assets/images/khadlaj_island.jpg',
  ),
  Product(
    id: 't5',
    name: 'Afnan Turathi Electric',
    price: 'Rp 450.000',
    category: 'Timteng',
    description: 'Aroma energik dengan campuran citrus, spicy, dan woody yang memancarkan kepercayaan diri.',
    rating: 4.8,
    tags: ['timteng', 'pria'],
    image: 'assets/images/afnan_turathi_electric.jpg',
  ),
  Product(
    id: 't6',
    name: 'French Avenue Vulcan Feu',
    price: 'Rp 500.000',
    category: 'Timteng',
    description: 'Parfum api vulkanik dengan nuansi spicy, amber, dan oud yang intens dan memikat.',
    rating: 4.9,
    tags: ['timteng', 'wanita'],
    image: 'assets/images/french_avenue_vulcan_feu.jpg',
  ),
  // Lokal (4 produk)
  Product(
    id: 'l1',
    name: 'HMNS Farhampton',
    price: 'Rp 385.000',
    category: 'Lokal',
    description: 'Aroma klasik modern dengan nuansi herbal, woody, dan musk yang elegan dan versatile.',
    rating: 4.8,
    tags: ['lokal', 'pria', 'best_seller'],
    image: 'assets/images/hmns_farhampton.jpg',
  ),
  Product(
    id: 'l2',
    name: 'HMNS Darker Shade of ORGSM',
    price: 'Rp 425.000',
    category: 'Lokal',
    description: 'Parfum misterius dengan nuansi gelap, sensual, dan addictive untuk malam hari.',
    rating: 4.9,
    tags: ['lokal', 'wanita'],
    image: 'assets/images/hmns_darker_shade_of_orgsm.jpg',
  ),
  Product(
    id: 'l3',
    name: 'HMNS Philea',
    price: 'Rp 375.000',
    category: 'Lokal',
    description: 'Aroma floral segar dengan sentuhan green note yang feminine dan elegan.',
    rating: 4.8,
    tags: ['lokal', 'wanita', 'best_seller'],
    image: 'assets/images/hmns_philea.jpg',
  ),
  Product(
    id: 'l4',
    name: 'SAFF & Co. Loui',
    price: 'Rp 350.000',
    category: 'Lokal',
    description: 'Parfum dengan karakter saffron yang hangat, manis, dan sofistikasi untuk segala kesempatan.',
    rating: 4.7,
    tags: ['lokal', 'wanita', 'best_seller'],
    image: 'assets/images/saff_co_loui.jpg',
  ),
];

class BundleProduct {
  final String id;
  final String name;
  final String description;
  final String price;
  final String originalPrice;
  final List<String> includes;
  final double discount;

  const BundleProduct({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.originalPrice,
    required this.includes,
    required this.discount,
  });
}

final List<BundleProduct> bundleProducts = [
  BundleProduct(
    id: 'b1',
    name: 'Bundle Fresh Daily (Pria)',
    description: 'Kombinasi aroma segar untuk pria aktif sepanjang hari.',
    price: 'Rp 750.000',
    originalPrice: 'Rp 835.000',
    includes: ['Rasasi Hawas Ice', 'HMNS Farhampton'],
    discount: 10.0,
  ),
  BundleProduct(
    id: 'b2',
    name: 'Bundle Night Out',
    description: 'Parfum wajib untuk malam spesial dan hangout.',
    price: 'Rp 900.000',
    originalPrice: 'Rp 1.000.000',
    includes: ['Afnan 9PM Rebel', 'Afnan Supremacy Not Only Intense'],
    discount: 10.0,
  ),
  BundleProduct(
    id: 'b3',
    name: 'Bundle Fresh Elegance (Wanita)',
    description: 'Duet elegan untuk wanita yang berkesan.',
    price: 'Rp 650.000',
    originalPrice: 'Rp 725.000',
    includes: ['HMNS Philea', 'SAFF & Co. Loui'],
    discount: 10.0,
  ),
];

final List<Category> categories = [
  Category(name: 'Timteng', icon: Icons.local_florist, productCount: 6),
  Category(name: 'Lokal', icon: Icons.diamond, productCount: 4),
  Category(name: 'Parfum Pria', icon: Icons.man, productCount: 5),
  Category(name: 'Parfum Wanita', icon: Icons.woman, productCount: 6),
  Category(name: 'Best Seller', icon: Icons.star, productCount: 5),
  Category(name: 'Bundling', icon: Icons.inventory_2, productCount: 3),
];

final List<Order> sampleOrders = [
  Order(
    id: 'ORD-001',
    productName: 'Rasasi Hawas Ice',
    price: 'Rp 450.000',
    date: DateTime(2024, 3, 15),
    status: 'Sampai',
    trackingNumber: 'JNE-123456789',
  ),
  Order(
    id: 'ORD-002',
    productName: 'HMNS Farhampton',
    price: 'Rp 385.000',
    date: DateTime(2024, 3, 20),
    status: 'Dikirim',
    trackingNumber: 'JNE-987654321',
  ),
  Order(
    id: 'ORD-003',
    productName: 'Afnan 9PM Rebel',
    price: 'Rp 475.000',
    date: DateTime(2024, 3, 22),
    status: 'Dikemas',
    trackingNumber: 'JNE-112233445',
  ),
  Order(
    id: 'ORD-004',
    productName: 'HMNS Philea',
    price: 'Rp 375.000',
    date: DateTime(2024, 3, 25),
    status: 'Dibatalkan',
    trackingNumber: 'JNE-556677889',
  ),
];

final List<AppNotification> sampleNotifications = [
  AppNotification(
    id: 'n1',
    title: 'Promo Bundling!',
    message: 'Hemat 10% untuk Bundle Fresh Daily dan Bundle Night Out.',
    time: DateTime.now().subtract(Duration(hours: 2)),
    icon: Icons.local_offer,
  ),
  AppNotification(
    id: 'n2',
    title: 'Pesanan Dikirim',
    message: 'Pesanan ORD-002 (HMNS Farhampton) sedang dalam perjalanan.',
    time: DateTime.now().subtract(Duration(hours: 5)),
    icon: Icons.local_shipping,
  ),
  AppNotification(
    id: 'n3',
    title: 'Produk Baru!',
    message: 'French Avenue Vulcan Feu sudah tersedia. Segera dapatkan!',
    time: DateTime.now().subtract(Duration(days: 1)),
    icon: Icons.star,
  ),
  AppNotification(
    id: 'n4',
    title: 'Selamat Datang!',
    message: 'Selamat datang di Toko Parfum Lokal & Timteng.',
    time: DateTime.now().subtract(Duration(days: 2)),
    icon: Icons.waving_hand,
  ),
];

// =========================================
// GLOBAL STATE
// =========================================
final List<Product> cartItems = [];
final List<Product> favoriteItems = [];
final List<Order> activeOrders = List.from(sampleOrders);

// =========================================
// MAIN APP
// =========================================
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toko Parfum',
      theme: ThemeData(
        fontFamily: 'monospace',
        scaffoldBackgroundColor: const Color(0xffF7F7F7),
      ),
      home: const HomePage(),
    );
  }
}

// =========================================
// HOME PAGE
// =========================================
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  Widget get _homeBody => SafeArea(
    child: SingleChildScrollView(
      child: Column(
        children: [
          // HEADER
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff3E2723), Color(0xff5D4037)],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(28),
                bottomRight: Radius.circular(28),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SearchPage()),
                      );
                    },
                    child: Container(
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey),
                          SizedBox(width: 10),
                          Text(
                            'Cari produk...',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const KeranjangPage()),
                    );
                  },
                  child: Stack(
                    children: [
                      const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 26,
                      ),
                      if (cartItems.isNotEmpty)
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              '${cartItems.length}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // BANNER (di atas menu grid)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff3E2723), Color(0xffC9A96E)],
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Koleksi Terbaru',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Parfum Lokal & Timteng',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),

          // MENU GRID (lebih kecil)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1.1,
              children: [
                MenuItem(
                  icon: Icons.local_florist,
                  title: 'Timteng',
                  onTap: () => _navigateToCategory('Timteng'),
                ),
                MenuItem(
                  icon: Icons.diamond,
                  title: 'Lokal',
                  onTap: () => _navigateToCategory('Lokal'),
                ),
                MenuItem(
                  icon: Icons.man,
                  title: 'Parfum Pria',
                  onTap: () => _navigateToCategory('Parfum Pria'),
                ),
                MenuItem(
                  icon: Icons.woman,
                  title: 'Parfum Wanita',
                  onTap: () => _navigateToCategory('Parfum Wanita'),
                ),
                MenuItem(
                  icon: Icons.auto_awesome,
                  title: 'Best Seller',
                  onTap: () => _navigateToCategory('Best Seller'),
                ),
                MenuItem(
                  icon: Icons.inventory_2,
                  title: 'Bundling',
                  onTap: () => _navigateToCategory('Bundling'),
                ),
                MenuItem(
                  icon: Icons.favorite,
                  title: 'Favorit',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const FavoritPage()),
                    );
                  },
                ),
                MenuItem(
                  icon: Icons.more_horiz,
                  title: 'Semua',
                  onTap: () => _navigateToCategory('Semua'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // PRODUCT TITLE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Rekomendasi Produk',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Lihat Semua',
                  style: TextStyle(color: Color(0xffC9A96E), fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),

          // PRODUCT GRID
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              childAspectRatio: 0.65,
              children: allProducts.map((product) {
                return ProductCard(
                  product: product,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProductDetailPage(product: product),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ),
  );

  void _navigateToCategory(String category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => KategoriPage(selectedCategory: category),
      ),
    );
  }

  late final List<Widget> _pages = [
    _homeBody,
    const KategoriPage(),
    const PengirimanPage(),
    const NotifikasiPage(),
    const ProfileBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: const Color(0xff3E2723),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 5,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Kategori'),
          BottomNavigationBarItem(icon: Icon(Icons.local_shipping), label: 'Pengiriman'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notif'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}

// =========================================
// MENU ITEM
// =========================================
class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const MenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: const Color(0xffF5F0E8),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: const Color(0xff3E2723), size: 22),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

// =========================================
// PRODUCT CARD
// =========================================
class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IMAGE AREA — product image + badge
            Container(
              height: 110,
              decoration: BoxDecoration(
                color: const Color(0xffEDE4D3),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                image: DecorationImage(
                  image: product.image != 'assets/placeholder.png'
                      ? AssetImage(product.image)
                      : const AssetImage('assets/images/placeholder.png') as ImageProvider,
                  fit: BoxFit.contain,
                ),
              ),
              child: Stack(
                children: [
                  // Promo badge
                  if (product.tags.contains('promo'))
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'PROMO',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            // CONTENT
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Category label
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xffC9A96E).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        product.category,
                        style: const TextStyle(
                          fontSize: 9,
                          color: Color(0xffC9A96E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),

                    // Name
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                        color: Color(0xff2C2C2C),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),

                    // Price + Rating
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.price,
                          style: const TextStyle(
                            color: Color(0xff3E2723),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 13),
                            const SizedBox(width: 2),
                            Text(
                              '${product.rating}',
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff555555),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const Spacer(),

                    // Action buttons row
                    Row(
                      children: [
                        // Beli Sekarang button
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              if (!cartItems.contains(product)) {
                                cartItems.add(product);
                              }
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const PaymentPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 7),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xff3E2723), Color(0xff5D4037)],
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                'Beli Sekarang',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        // Keranjang icon button
                        GestureDetector(
                          onTap: () {
                            if (!cartItems.contains(product)) {
                              cartItems.add(product);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('${product.name} ditambahkan ke keranjang'),
                                  backgroundColor: const Color(0xff4CAF50),
                                  duration: const Duration(seconds: 2),
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Produk sudah ada di keranjang'),
                                  backgroundColor: Colors.orange,
                                  behavior: SnackBarBehavior.floating,
                                ),
                              );
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: const Color(0xffF5F0E8),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: const Color(0xffC9A96E), width: 1.2),
                            ),
                            child: const Icon(
                              Icons.add_shopping_cart,
                              color: Color(0xffC9A96E),
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =========================================
// KATEGORI PAGE
// =========================================
class KategoriPage extends StatelessWidget {
  final String? selectedCategory;

  const KategoriPage({super.key, this.selectedCategory});

  // Each category gets its own accent color
  Color _categoryColor(String name) {
    switch (name) {
      case 'Timteng':
        return const Color(0xff8D6E63);
      case 'Lokal':
        return const Color(0xffC9A96E);
      case 'Parfum Pria':
        return const Color(0xff1565C0);
      case 'Parfum Wanita':
        return const Color(0xffAD1457);
      case 'Best Seller':
        return const Color(0xffF9A825);
      case 'Bundling':
        return const Color(0xff2E7D32);
      default:
        return const Color(0xff3E2723);
    }
  }

  IconData _categoryIcon(String name) {
    switch (name) {
      case 'Timteng':
        return Icons.local_florist;
      case 'Lokal':
        return Icons.diamond;
      case 'Parfum Pria':
        return Icons.man;
      case 'Parfum Wanita':
        return Icons.woman;
      case 'Best Seller':
        return Icons.star;
      case 'Bundling':
        return Icons.inventory_2;
      default:
        return Icons.category;
    }
  }

  @override
  Widget build(BuildContext context) {
    final tagMap = {
      'Timteng': 'timteng',
      'Lokal': 'lokal',
      'Parfum Pria': 'pria',
      'Parfum Wanita': 'wanita',
      'Best Seller': 'best_seller',
    };
    final isBundleCategory = selectedCategory == 'Bundling';
    final filteredProducts = isBundleCategory
        ? []
        : selectedCategory == null || selectedCategory == 'Semua'
            ? allProducts
            : selectedCategory == 'Parfum Pria'
                ? allProducts.where((p) => p.tags.contains('pria')).toList()
                : selectedCategory == 'Parfum Wanita'
                    ? allProducts.where((p) => p.tags.contains('wanita')).toList()
                    : selectedCategory == 'Best Seller'
                        ? allProducts.where((p) => p.tags.contains('best_seller')).toList()
                        : allProducts
                            .where((p) =>
                                p.category.toLowerCase().contains(selectedCategory!.toLowerCase()) ||
                                p.tags.contains(tagMap[selectedCategory]))
                            .toList();

    final accent = _categoryColor(selectedCategory ?? '');

    return SafeArea(
      child: Column(
        children: [
          // ═══════ HEADER with decorative background ═══════
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(16, 18, 16, 22),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xff3E2723),
                  accent,
                ],
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(28),
                bottomRight: Radius.circular(28),
              ),
            ),
            child: Stack(
              children: [
                // Decorative circles in header
                Positioned(
                  top: -30,
                  right: -20,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.08),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -10,
                  left: 20,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.06),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Row(
                  children: [
                    if (selectedCategory != null)
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 20),
                        onPressed: () => Navigator.pop(context),
                      ),
                    if (selectedCategory != null && selectedCategory != 'Semua')
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.18),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          _categoryIcon(selectedCategory!),
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    if (selectedCategory != null) const SizedBox(width: 10),
                    Text(
                      selectedCategory == null
                          ? 'Kategori'
                          : selectedCategory == 'Semua'
                              ? 'Semua Parfum'
                              : selectedCategory!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          // ═══════ CATEGORY GRID (show when no specific category) ═══════
          if (selectedCategory == null)
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    // Subtitle
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: Text(
                          'Pilih Kategori',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3E2723),
                          ),
                        ),
                      ),
                    ),
                    // Category cards
                    ...categories.map((cat) {
                      final catColor = _categoryColor(cat.name);
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => KategoriPage(selectedCategory: cat.name),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                catColor.withOpacity(0.12),
                                Colors.white,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: catColor.withOpacity(0.2),
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: catColor.withOpacity(0.08),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: catColor.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Icon(cat.icon, size: 28, color: catColor),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cat.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color(0xff2C2C2C),
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      '${cat.productCount} produk tersedia',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(Icons.chevron_right, color: catColor, size: 24),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),

          // ═══════ PRODUCT LIST (show when specific category selected) ═══════
          if (selectedCategory != null)
            Expanded(
              child: Container(
                color: const Color(0xffFAFAFA),
                child: isBundleCategory
                    ? _buildBundleList(accent)
                    : filteredProducts.isEmpty
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.inbox_outlined, size: 60, color: Colors.grey[300]),
                                const SizedBox(height: 12),
                                Text(
                                  'Tidak ada produk dalam kategori ini',
                                  style: TextStyle(color: Colors.grey[500], fontSize: 14),
                                ),
                              ],
                            ),
                          )
                        : Column(
                            children: [
                              // Info bar
                              Container(
                                margin: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                                decoration: BoxDecoration(
                                  color: accent.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    Icon(_categoryIcon(selectedCategory!), size: 18, color: accent),
                                    const SizedBox(width: 8),
                                    Text(
                                      '${filteredProducts.length} produk ditemukan',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                        color: accent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Product grid
                              Expanded(
                                child: GridView.builder(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 12,
                                    mainAxisSpacing: 12,
                                    childAspectRatio: 0.65,
                                  ),
                                  itemCount: filteredProducts.length,
                                  itemBuilder: (context, index) {
                                    return ProductCard(
                                      product: filteredProducts[index],
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => ProductDetailPage(product: filteredProducts[index]),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildBundleList(Color accent) {
    return Column(
      children: [
        // Info bar
        Container(
          margin: const EdgeInsets.fromLTRB(16, 12, 16, 8),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          decoration: BoxDecoration(
            color: accent.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(Icons.inventory_2, size: 18, color: accent),
              const SizedBox(width: 8),
              Text(
                '${bundleProducts.length} bundling tersedia',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: accent,
                ),
              ),
            ],
          ),
        ),
        // Bundle cards
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            itemCount: bundleProducts.length,
            itemBuilder: (context, index) {
              final bundle = bundleProducts[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 14),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: accent.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(Icons.inventory_2, size: 22, color: accent),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            bundle.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xff2C2C2C),
                            ),
                          ),
                        ),
                        // Discount badge
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'HEMAT ${bundle.discount.toStringAsFixed(0)}%',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Description
                    Text(
                      bundle.description,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Includes
                    const Text(
                      'Termasuk:',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff555555),
                      ),
                    ),
                    const SizedBox(height: 6),
                    ...bundle.includes.map((name) => Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Row(
                        children: [
                          const Icon(Icons.check_circle, size: 14, color: Color(0xff4CAF50)),
                          const SizedBox(width: 6),
                          Text(
                            name,
                            style: const TextStyle(fontSize: 12, color: Color(0xff3E2723)),
                          ),
                        ],
                      ),
                    )),
                    const SizedBox(height: 10),
                    // Price
                    Row(
                      children: [
                        Text(
                          bundle.price,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3E2723),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          bundle.originalPrice,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Button
                    SizedBox(
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${bundle.name} ditambahkan ke keranjang'),
                              backgroundColor: const Color(0xff4CAF50),
                              duration: const Duration(seconds: 2),
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xff3E2723), Color(0xff5D4037)],
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Beli Bundling',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final isFav = favoriteItems.contains(product);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E2723),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          product.name,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        actions: [
          // Favorite button
          IconButton(
            icon: Icon(
              isFav ? Icons.favorite : Icons.favorite_border,
              color: isFav ? Colors.redAccent : Colors.white,
            ),
            onPressed: () {
              setState(() {
                if (favoriteItems.contains(product)) {
                  favoriteItems.remove(product);
                } else {
                  favoriteItems.add(product);
                }
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    isFav
                        ? '${product.name} dihapus dari favorit'
                        : '${product.name} ditambahkan ke favorit',
                  ),
                  backgroundColor: isFav ? Colors.orange : Colors.green,
                  duration: const Duration(seconds: 2),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const KeranjangPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image
            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffEDE4D3),
                image: DecorationImage(
                  image: product.image != 'assets/placeholder.png'
                      ? AssetImage(product.image)
                      : const AssetImage('assets/images/placeholder.png') as ImageProvider,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Category badge
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xffC9A96E).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      product.category,
                      style: const TextStyle(
                        color: Color(0xffC9A96E),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Name
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Price
                  Text(
                    product.price,
                    style: const TextStyle(
                      color: Color(0xff3E2723),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Rating
                  Row(
                    children: [
                      ...List.generate(5, (index) {
                        return Icon(
                          index < product.rating.floor()
                              ? Icons.star
                              : (index < product.rating
                                  ? Icons.star_half
                                  : Icons.star_border),
                          color: Colors.amber,
                          size: 22,
                        );
                      }),
                      const SizedBox(width: 8),
                      Text(
                        '${product.rating}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Description
                  const Text(
                    'Deskripsi Produk',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.description,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Size options
                  const Text(
                    'Ukuran',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      _sizeOption('30ml', false),
                      const SizedBox(width: 12),
                      _sizeOption('50ml', true),
                      const SizedBox(width: 12),
                      _sizeOption('100ml', false),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // Buttons
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (!cartItems.contains(product)) {
                              cartItems.add(product);
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const PaymentPage(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff3E2723), Color(0xff5D4037)],
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: const Text(
                              'Beli Sekarang',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (!cartItems.contains(product)) {
                              cartItems.add(product);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('${product.name} ditambahkan ke keranjang'),
                                  backgroundColor: Colors.green,
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Produk sudah ada di keranjang'),
                                  backgroundColor: Colors.orange,
                                ),
                              );
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                              color: const Color(0xffF5F0E8),
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: const Color(0xffC9A96E), width: 1.5),
                            ),
                            child: const Text(
                              'Tambah ke Keranjang',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffC9A96E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sizeOption(String label, bool selected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: selected ? const Color(0xff3E2723) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: selected ? const Color(0xff3E2723) : Colors.grey.shade300,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// =========================================
// KERANJANG PAGE
// =========================================
class KeranjangPage extends StatefulWidget {
  const KeranjangPage({super.key});

  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  @override
  Widget build(BuildContext context) {
    final total = cartItems.fold<double>(0, (sum, item) {
      final price = double.parse(item.price.replaceAll(RegExp(r'[^0-9]'), ''));
      return sum + price;
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E2723),
        title: const Text(
          'Keranjang Belanja',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: cartItems.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'Keranjang masih kosong',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Tambahkan produk dari halaman Home',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final product = cartItems[index];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            // Image
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: const Color(0xffEDE4D3),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  product.image,
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) => Container(
                                    color: const Color(0xffEDE4D3),
                                    child: const Icon(Icons.image, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),

                            // Info
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    product.price,
                                    style: const TextStyle(
                                      color: Color(0xffC9A96E),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Delete
                            IconButton(
                              icon: const Icon(Icons.delete_outline, color: Colors.red),
                              onPressed: () {
                                setState(() {
                                  cartItems.removeAt(index);
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Produk dihapus dari keranjang'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // Total & Checkout
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Rp ${total.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]}.')}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3E2723),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const PaymentPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff3E2723),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: const Text(
                            'Checkout',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

// =========================================
// PENGIRIMAN PAGE (Order History)
// =========================================
class PengirimanPage extends StatelessWidget {
  const PengirimanPage({super.key});

  Color _statusColor(String status) {
    switch (status) {
      case 'Dikemas':
        return Colors.orange;
      case 'Dikirim':
        return Colors.blue;
      case 'Sampai':
        return Colors.green;
      case 'Dibatalkan':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  IconData _statusIcon(String status) {
    switch (status) {
      case 'Dikemas':
        return Icons.inventory_2;
      case 'Dikirim':
        return Icons.local_shipping;
      case 'Sampai':
        return Icons.check_circle;
      case 'Dibatalkan':
        return Icons.cancel;
      default:
        return Icons.help_outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E2723),
        title: const Text(
          'Pesanan Saya',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: activeOrders.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.receipt_long, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'Belum ada pesanan',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: activeOrders.length,
              itemBuilder: (context, index) {
                final order = activeOrders[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            order.id,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: _statusColor(order.status).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  _statusIcon(order.status),
                                  size: 14,
                                  color: _statusColor(order.status),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  order.status,
                                  style: TextStyle(
                                    color: _statusColor(order.status),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Divider(),
                      const SizedBox(height: 8),

                      // Product info
                      Text(
                        order.productName,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        order.price,
                        style: const TextStyle(
                          color: Color(0xff3E2723),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                          const SizedBox(width: 6),
                          Text(
                            '${order.date.day}/${order.date.month}/${order.date.year}',
                            style: const TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          const SizedBox(width: 16),
                          const Icon(Icons.confirmation_number, size: 14, color: Colors.grey),
                          const SizedBox(width: 6),
                          Text(
                            order.trackingNumber,
                            style: const TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      ),

                      // Status progress bar
                      const SizedBox(height: 12),
                      _buildProgressIndicator(order.status),
                    ],
                  ),
                );
              },
            ),
    );
  }

  Widget _buildProgressIndicator(String status) {
    final steps = ['Dikemas', 'Dikirim', 'Sampai'];
    final currentIndex = steps.indexOf(status) >= 0 ? steps.indexOf(status) : -1;

    return Row(
      children: List.generate(3, (index) {
        final isActive = index <= currentIndex;
        final isCompleted = index < currentIndex;
        return Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 4,
                  decoration: BoxDecoration(
                    color: isActive ? const Color(0xffC9A96E) : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              if (index < 2)
                Icon(
                  isCompleted ? Icons.check_circle : Icons.circle,
                  size: 14,
                  color: isCompleted ? const Color(0xffC9A96E) : Colors.grey.shade300,
                ),
            ],
          ),
        );
      }),
    );
  }
}

// =========================================
// NOTIFIKASI PAGE
// =========================================
class NotifikasiPage extends StatefulWidget {
  const NotifikasiPage({super.key});

  @override
  State<NotifikasiPage> createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends State<NotifikasiPage> {
  late List<AppNotification> notifications;

  @override
  void initState() {
    super.initState();
    notifications = List.from(sampleNotifications);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E2723),
        title: const Text(
          'Notifikasi',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                for (var n in notifications) {
                  // ignore: invalid_use_of_protected_member
                }
              });
            },
            child: const Text(
              'Tandai Semua Dibaca',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
      body: notifications.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.notifications_none, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'Tidak ada notifikasi',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notif = notifications[index];
                final isRead = notif.isRead;
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: isRead ? Colors.white : const Color(0xffFFF8E7),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Icon
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xffC9A96E).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          notif.icon,
                          color: const Color(0xffC9A96E),
                          size: 22,
                        ),
                      ),
                      const SizedBox(width: 12),

                      // Content
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notif.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: isRead ? Colors.grey : Colors.black,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              notif.message,
                              style: TextStyle(
                                fontSize: 13,
                                color: isRead ? Colors.grey : Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              _formatTime(notif.time),
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Unread dot
                      if (!isRead)
                        Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
    );
  }

  String _formatTime(DateTime time) {
    final diff = DateTime.now().difference(time);
    if (diff.inMinutes < 60) return '${diff.inMinutes} menit lalu';
    if (diff.inHours < 24) return '${diff.inHours} jam lalu';
    return '${diff.inDays} hari lalu';
  }
}

// =========================================
// SEARCH PAGE
// =========================================
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  List<Product> _searchResults = [];

  void _performSearch(String query) {
    setState(() {
      _searchQuery = query;
      if (query.isEmpty) {
        _searchResults = [];
      } else {
        _searchResults = allProducts
            .where((p) =>
                p.name.toLowerCase().contains(query.toLowerCase()) ||
                p.category.toLowerCase().contains(query.toLowerCase()) ||
                p.description.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E2723),
        title: TextField(
          controller: _searchController,
          autofocus: true,
          onChanged: _performSearch,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            hintText: 'Cari parfum...',
            hintStyle: TextStyle(color: Colors.white70),
            border: InputBorder.none,
          ),
        ),
        actions: [
          if (_searchController.text.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.clear, color: Colors.white),
              onPressed: () {
                _searchController.clear();
                _performSearch('');
              },
            ),
        ],
      ),
      body: _searchQuery.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'Ketik untuk mencari produk',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            )
          : _searchResults.isEmpty
              ? const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search_off, size: 80, color: Colors.grey),
                      SizedBox(height: 16),
                      Text(
                        'Produk tidak ditemukan',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                )
              : GridView.count(
                  padding: const EdgeInsets.all(16),
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.65,
                  children: _searchResults.map((product) {
                    return ProductCard(
                      product: product,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProductDetailPage(product: product),
                        ),
                      ),
                    );
                  }).toList(),
                ),
    );
  }
}

// =========================================
// PROFILE BODY
// =========================================
class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  // Profile data state
  String _name = 'Nama Pengguna';
  String _email = 'user@email.com';
  String _phone = '08123456789';
  String _address = 'Jl. Merdeka No. 123, Jakarta';

  Future<void> _navigateToEditProfile() async {
    final result = await Navigator.push<Map<String, String>>(
      context,
      MaterialPageRoute(
        builder: (_) => EditProfilPage(
          initialName: _name,
          initialEmail: _email,
          initialPhone: _phone,
          initialAddress: _address,
        ),
      ),
    );

    if (result != null && mounted) {
      setState(() {
        _name = result['name'] ?? _name;
        _email = result['email'] ?? _email;
        _phone = result['phone'] ?? _phone;
        _address = result['address'] ?? _address;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Profil berhasil diperbarui!'),
          backgroundColor: Color(0xff4CAF50),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 28),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff3E2723), Color(0xffC9A96E)],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28),
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    'Profil Saya',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 88,
                    width: 88,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(44),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 48,
                      color: Color(0xffC9A96E),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    _name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _email,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.85),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ProfileMenuTile(
                    icon: Icons.edit,
                    title: 'Edit Profil',
                    onTap: () => _navigateToEditProfile(),
                  ),
                  ProfileMenuTile(
                    icon: Icons.location_on,
                    title: 'Alamat Pengiriman',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const AlamatPengirimanPage()),
                      );
                    },
                  ),
                  ProfileMenuTile(
                    icon: Icons.receipt_long,
                    title: 'Riwayat Pesanan',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const PengirimanPage()),
                      );
                    },
                  ),
                  ProfileMenuTile(
                    icon: Icons.favorite_border,
                    title: 'Produk Favorit',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const FavoritPage()),
                      );
                    },
                  ),
                  ProfileMenuTile(
                    icon: Icons.payment,
                    title: 'Metode Pembayaran',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const PaymentMethodsPage()),
                      );
                    },
                  ),
                  ProfileMenuTile(
                    icon: Icons.settings,
                    title: 'Pengaturan',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const PengaturanPage()),
                      );
                    },
                  ),
                  ProfileMenuTile(
                    icon: Icons.support_agent,
                    title: 'Bantuan',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const BantuanPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
              child: ProfileMenuTile(
                icon: Icons.logout,
                title: 'Keluar',
                iconColor: Colors.redAccent,
                textColor: Colors.redAccent,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Berhasil keluar'),
                      backgroundColor: Colors.redAccent,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =========================================
// PROFILE MENU TILE
// =========================================
class ProfileMenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? iconColor;
  final Color? textColor;
  final VoidCallback? onTap;

  const ProfileMenuTile({
    super.key,
    required this.icon,
    required this.title,
    this.iconColor,
    this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: (iconColor ?? const Color(0xff3E2723)).withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: iconColor ?? const Color(0xffC9A96E),
            size: 20,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: textColor ?? Colors.black87,
          ),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey, size: 20),
      ),
    );
  }
}

// =========================================
// FAVORIT PAGE
// =========================================
class FavoritPage extends StatefulWidget {
  const FavoritPage({super.key});

  @override
  State<FavoritPage> createState() => _FavoritPageState();
}

class _FavoritPageState extends State<FavoritPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E2723),
        title: const Text(
          'Produk Favorit',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: favoriteItems.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite_border, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'Belum ada produk favorit',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Tambahkan produk ke favorit dari halaman detail',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 14,
                mainAxisSpacing: 14,
                childAspectRatio: 0.65,
              ),
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: favoriteItems[index],
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProductDetailPage(product: favoriteItems[index]),
                    ),
                  ),
                );
              },
            ),
    );
  }
}

// =========================================
// EDIT PROFIL PAGE
// =========================================
class EditProfilPage extends StatefulWidget {
  const EditProfilPage({
    super.key,
    this.initialName = '',
    this.initialEmail = '',
    this.initialPhone = '',
    this.initialAddress = '',
  });

  final String initialName;
  final String initialEmail;
  final String initialPhone;
  final String initialAddress;

  @override
  State<EditProfilPage> createState() => _EditProfilPageState();
}

class _EditProfilPageState extends State<EditProfilPage> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  late final TextEditingController _addressController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName);
    _emailController = TextEditingController(text: widget.initialEmail);
    _phoneController = TextEditingController(text: widget.initialPhone);
    _addressController = TextEditingController(text: widget.initialAddress);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E2723),
        title: const Text(
          'Edit Profil',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Avatar
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: const Color(0xffF5F0E8),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: const Color(0xffC9A96E), width: 3),
              ),
              child: const Icon(Icons.person, size: 50, color: Color(0xffC9A96E)),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Fitur ganti foto profil segera hadir')),
                );
              },
              child: const Text(
                'Ganti Foto',
                style: TextStyle(color: Color(0xffC9A96E), fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),

            _buildTextField('Nama Lengkap', _nameController, Icons.person),
            const SizedBox(height: 16),
            _buildTextField('Email', _emailController, Icons.email, keyboardType: TextInputType.emailAddress),
            const SizedBox(height: 16),
            _buildTextField('No. Telepon', _phoneController, Icons.phone, keyboardType: TextInputType.phone),
            const SizedBox(height: 16),
            _buildTextField('Alamat', _addressController, Icons.location_on, maxLines: 2),
            const SizedBox(height: 30),

            // Save button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop<Map<String, String>>(context, {
                    'name': _nameController.text,
                    'email': _emailController.text,
                    'phone': _phoneController.text,
                    'address': _addressController.text,
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff3E2723),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                ),
                child: const Text(
                  'Simpan Perubahan',
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, IconData icon,
      {TextInputType keyboardType = TextInputType.text, int maxLines = 1}) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: const Color(0xffC9A96E)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: Color(0xffC9A96E), width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }
}

// =========================================
// ALAMAT PENGIRIMAN PAGE
// =========================================
class AlamatPengirimanPage extends StatefulWidget {
  const AlamatPengirimanPage({super.key});

  @override
  State<AlamatPengirimanPage> createState() => _AlamatPengirimanPageState();
}

class _AlamatPengirimanPageState extends State<AlamatPengirimanPage> {
  List<Map<String, String>> addresses = [
    {
      'label': 'Rumah',
      'address': 'Jl. Merdeka No. 123, RT 01/RW 02, Kel. Sukamaju, Kec. Menteng, Jakarta Pusat, DKI Jakarta 10310',
      'name': 'Nama Pengguna',
      'phone': '08123456789',
    },
    {
      'label': 'Kantor',
      'address': 'Jl. Sudirman Kav. 52-53, Lantai 15, Jakarta Selatan, DKI Jakarta 12190',
      'name': 'Nama Pengguna',
      'phone': '08123456789',
    },
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E2723),
        title: const Text(
          'Alamat Pengiriman',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () => _showAddAddressDialog(),
          ),
        ],
      ),
      body: addresses.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_off, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('Belum ada alamat tersimpan', style: TextStyle(color: Colors.grey, fontSize: 16)),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: addresses.length,
              itemBuilder: (context, index) {
                final addr = addresses[index];
                final isSelected = _selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() => _selectedIndex = index);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: isSelected ? const Color(0xffC9A96E) : Colors.grey.shade200,
                        width: isSelected ? 2 : 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                              color: const Color(0xffC9A96E),
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                color: const Color(0xff3E2723).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                addr['label']!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Color(0xff3E2723),
                                ),
                              ),
                            ),
                            const Spacer(),
                            PopupMenuButton(
                              itemBuilder: (context) => [
                                const PopupMenuItem(value: 'edit', child: Text('Edit')),
                                const PopupMenuItem(value: 'delete', child: Text('Hapus', style: TextStyle(color: Colors.red))),
                              ],
                              onSelected: (value) {
                                if (value == 'edit') {
                                  _showEditAddressDialog(index);
                                } else if (value == 'delete') {
                                  setState(() {
                                    addresses.removeAt(index);
                                    if (_selectedIndex >= addresses.length) {
                                      _selectedIndex = addresses.length - 1;
                                    }
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          addr['name']!,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(addr['phone']!, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                        const SizedBox(height: 6),
                        Text(
                          addr['address']!,
                          style: const TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }

  void _showAddAddressDialog() {
    final labelCtrl = TextEditingController();
    final nameCtrl = TextEditingController();
    final phoneCtrl = TextEditingController();
    final addrCtrl = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, MediaQuery.of(context).viewInsets.bottom + 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Tambah Alamat Baru', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              TextField(controller: labelCtrl, decoration: InputDecoration(labelText: 'Label (Rumah/Kantor)', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
              const SizedBox(height: 12),
              TextField(controller: nameCtrl, decoration: InputDecoration(labelText: 'Nama Penerima', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
              const SizedBox(height: 12),
              TextField(controller: phoneCtrl, decoration: InputDecoration(labelText: 'No. Telepon', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))), keyboardType: TextInputType.phone),
              const SizedBox(height: 12),
              TextField(controller: addrCtrl, decoration: InputDecoration(labelText: 'Alamat Lengkap', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))), maxLines: 3),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (labelCtrl.text.isNotEmpty && addrCtrl.text.isNotEmpty) {
                      setState(() {
                        addresses.add({
                          'label': labelCtrl.text,
                          'name': nameCtrl.text,
                          'phone': phoneCtrl.text,
                          'address': addrCtrl.text,
                        });
                      });
                      Navigator.pop(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3E2723),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text('Simpan', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showEditAddressDialog(int index) {
    final addr = addresses[index];
    final labelCtrl = TextEditingController(text: addr['label']);
    final nameCtrl = TextEditingController(text: addr['name']);
    final phoneCtrl = TextEditingController(text: addr['phone']);
    final addrCtrl = TextEditingController(text: addr['address']);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, MediaQuery.of(context).viewInsets.bottom + 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Edit Alamat', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              TextField(controller: labelCtrl, decoration: InputDecoration(labelText: 'Label', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
              const SizedBox(height: 12),
              TextField(controller: nameCtrl, decoration: InputDecoration(labelText: 'Nama Penerima', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
              const SizedBox(height: 12),
              TextField(controller: phoneCtrl, decoration: InputDecoration(labelText: 'No. Telepon', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))), keyboardType: TextInputType.phone),
              const SizedBox(height: 12),
              TextField(controller: addrCtrl, decoration: InputDecoration(labelText: 'Alamat Lengkap', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))), maxLines: 3),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      addresses[index] = {
                        'label': labelCtrl.text,
                        'name': nameCtrl.text,
                        'phone': phoneCtrl.text,
                        'address': addrCtrl.text,
                      };
                    });
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3E2723),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text('Simpan', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =========================================
// PENGATURAN PAGE
// =========================================
class PengaturanPage extends StatefulWidget {
  const PengaturanPage({super.key});

  @override
  State<PengaturanPage> createState() => _PengaturanPageState();
}

class _PengaturanPageState extends State<PengaturanPage> {
  bool _notifEnabled = true;
  bool _darkMode = false;
  bool _promoNotif = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E2723),
        title: const Text(
          'Pengaturan',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Notifikasi
          _buildSectionTitle('Notifikasi'),
          _buildSwitchTile(
            icon: Icons.notifications,
            title: 'Notifikasi Push',
            subtitle: 'Terima notifikasi pesanan dan promo',
            value: _notifEnabled,
            onChanged: (v) => setState(() => _notifEnabled = v),
          ),
          _buildSwitchTile(
            icon: Icons.local_offer,
            title: 'Notifikasi Promo',
            subtitle: 'Terima info promo dan diskon',
            value: _promoNotif,
            onChanged: (v) => setState(() => _promoNotif = v),
          ),
          const SizedBox(height: 20),

          // Tampilan
          _buildSectionTitle('Tampilan'),
          _buildSwitchTile(
            icon: Icons.dark_mode,
            title: 'Mode Gelap',
            subtitle: 'Gunakan tema gelap',
            value: _darkMode,
            onChanged: (v) {
              setState(() => _darkMode = v);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Mode gelap segera hadir')),
              );
            },
          ),
          const SizedBox(height: 20),

          // Akun
          _buildSectionTitle('Akun'),
          _buildMenuTile(
            icon: Icons.lock,
            title: 'Ubah Password',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Fitur ubah password segera hadir')),
              );
            },
          ),
          _buildMenuTile(
            icon: Icons.language,
            title: 'Bahasa',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Pilihan bahasa: Indonesia')),
              );
            },
          ),
          const SizedBox(height: 20),

          // Tentang
          _buildSectionTitle('Tentang'),
          _buildMenuTile(
            icon: Icons.info_outline,
            title: 'Versi Aplikasi',
            trailing: const Text('1.0.0', style: TextStyle(color: Colors.grey)),
            onTap: () {},
          ),
          _buildMenuTile(
            icon: Icons.description,
            title: 'Kebijakan Privasi',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Halaman kebijakan privasi segera hadir')),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xffC9A96E),
        ),
      ),
    );
  }

  Widget _buildSwitchTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 6, offset: const Offset(0, 2)),
        ],
      ),
      child: SwitchListTile(
        secondary: Icon(icon, color: const Color(0xffC9A96E)),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
        value: value,
        onChanged: onChanged,
        activeColor: const Color(0xffC9A96E),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }

  Widget _buildMenuTile({
    required IconData icon,
    required String title,
    Widget? trailing,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 6, offset: const Offset(0, 2)),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xffC9A96E)),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        trailing: trailing ?? const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}

// =========================================
// BANTUAN PAGE
// =========================================
class BantuanPage extends StatelessWidget {
  const BantuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E2723),
        title: const Text(
          'Bantuan',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Search
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 6, offset: const Offset(0, 2)),
              ],
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Cari bantuan...',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // FAQ Section
          const Text('Pertanyaan Umum', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff3E2723))),
          const SizedBox(height: 12),

          _buildFaqItem(
            'Bagaimana cara memesan produk?',
            'Pilih produk yang diinginkan, masukkan ke keranjang, lalu lakukan checkout. Pilih metode pembayaran dan konfirmasi pesanan.',
          ),
          _buildFaqItem(
            'Bagaimana cara melacak pesanan?',
            'Masuk ke menu Pengiriman, pilih pesanan yang ingin dilacak. Nomor resi dan status pengiriman akan ditampilkan.',
          ),
          _buildFaqItem(
            'Berapa lama waktu pengiriman?',
            'Pengiriman biasanya memakan waktu 2-5 hari kerja tergantung lokasi dan jasa kurir yang dipilih.',
          ),
          _buildFaqItem(
            'Bagaimana cara mengembalikan produk?',
            'Hubungi customer service dalam 7 hari setelah penerimaan. Produk harus dalam kondisi asli dan belum dibuka.',
          ),
          _buildFaqItem(
            'Apakah bisa COD (Bayar di Tempat)?',
            'Ya, kami mendukung metode pembayaran COD untuk area Jabodetabek.',
          ),

          const SizedBox(height: 24),

          // Contact
          const Text('Hubungi Kami', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff3E2723))),
          const SizedBox(height: 12),

          _buildContactTile(
            icon: Icons.phone,
            title: 'Telepon',
            subtitle: '+62 21 1234 5678',
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Menghubungi +62 21 1234 5678...')),
            ),
          ),
          _buildContactTile(
            icon: Icons.email,
            title: 'Email',
            subtitle: 'support@tokoparflum.com',
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Mengirim email ke support@tokoparflum.com...')),
            ),
          ),
          _buildContactTile(
            icon: Icons.chat_bubble,
            title: 'Live Chat',
            subtitle: 'Chat langsung dengan CS',
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Live chat segera hadir')),
            ),
          ),
          _buildContactTile(
            icon: Icons.location_on,
            title: 'Alamat',
            subtitle: 'Jl. Sudirman No. 123, Jakarta Pusat',
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Menampilkan lokasi di peta...')),
            ),
          ),

          const SizedBox(height: 20),

          // Social Media
          const Text('Ikuti Kami', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff3E2723))),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialButton(Icons.camera_alt, 'Instagram'),
              const SizedBox(width: 16),
              _buildSocialButton(Icons.facebook, 'Facebook'),
              const SizedBox(width: 16),
              _buildSocialButton(Icons.chat, 'WhatsApp'),
              const SizedBox(width: 16),
              _buildSocialButton(Icons.play_circle, 'YouTube'),
            ],
          ),
        ],
      ),
    );
  }

  static Widget _buildFaqItem(String question, String answer) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 6, offset: const Offset(0, 2)),
        ],
      ),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 16),
        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        title: Text(question, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
        iconColor: const Color(0xffC9A96E),
        collapsedIconColor: Colors.grey,
        children: [
          Text(answer, style: TextStyle(color: Colors.grey[600], fontSize: 13, height: 1.5)),
        ],
      ),
    );
  }

  static Widget _buildContactTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 6, offset: const Offset(0, 2)),
        ],
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xffC9A96E).withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: const Color(0xffC9A96E), size: 22),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey, size: 20),
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }

  static Widget _buildSocialButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xff3E2723).withOpacity(0.1),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(icon, color: const Color(0xff3E2723), size: 24),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 11, color: Colors.grey)),
      ],
    );
  }
}

// =========================================
// PAYMENT METHODS PAGE (from Profile)
// =========================================
class PaymentMethodsPage extends StatefulWidget {
  const PaymentMethodsPage({super.key});

  @override
  State<PaymentMethodsPage> createState() => _PaymentMethodsPageState();
}

class _PaymentMethodsPageState extends State<PaymentMethodsPage> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _paymentMethods = [
    {
      'name': 'Transfer Bank',
      'icon': Icons.account_balance,
      'description': 'BCA, BNI, BRI, Mandiri',
      'color': const Color(0xff1565C0),
      'details': 'Transfer langsung ke rekening bank kami. Verifikasi otomatis dalam 1x24 jam.',
    },
    {
      'name': 'E-Wallet',
      'icon': Icons.phone_android,
      'description': 'GoPay, OVO, DANA, ShopeePay',
      'color': const Color(0xffAD1457),
      'details': 'Bayar instan melalui e-wallet favorit Anda. Konfirmasi langsung.',
    },
    {
      'name': 'COD (Bayar di Tempat)',
      'icon': Icons.money,
      'description': 'Bayar saat barang sampai',
      'color': const Color(0xff2E7D32),
      'details': 'Bayar tunai kepada kurir saat barang diterima. Tersedia untuk area Jabodetabek.',
    },
    {
      'name': 'Virtual Account',
      'icon': Icons.credit_card,
      'description': 'Permata, BCA, BNI Virtual Account',
      'color': const Color(0xff6A1B9A),
      'details': 'Pembayaran via Virtual Account. Nomor VA akan diberikan setelah checkout.',
    },
    {
      'name': 'Kartu Kredit / Debit',
      'icon': Icons.credit_card_outlined,
      'description': 'Visa, Mastercard, JCB',
      'color': const Color(0xffE65100),
      'details': 'Pembayaran langsung dengan kartu kredit atau debit. Aman dan terenkripsi.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E2723),
        title: const Text(
          'Metode Pembayaran',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          // Header info
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: const Color(0xffF5F0E8),
            child: Row(
              children: [
                Icon(Icons.info_outline, color: const Color(0xff3E2723).withOpacity(0.7), size: 20),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Pilih metode pembayaran yang ingin Anda simpan sebagai default.',
                    style: TextStyle(color: const Color(0xff3E2723).withOpacity(0.8), fontSize: 13),
                  ),
                ),
              ],
            ),
          ),

          // Payment methods list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _paymentMethods.length,
              itemBuilder: (context, index) {
                final method = _paymentMethods[index];
                final isSelected = _selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() => _selectedIndex = index);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: isSelected ? method['color'] as Color : Colors.grey.shade200,
                        width: isSelected ? 2 : 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              isSelected
                                  ? Icons.radio_button_checked
                                  : Icons.radio_button_unchecked,
                              color: method['color'] as Color,
                              size: 20,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: (method['color'] as Color).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                method['icon'] as IconData,
                                color: method['color'] as Color,
                                size: 22,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    method['name'] as String,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color(0xff2C2C2C),
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    method['description'] as String,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (isSelected)
                              Icon(Icons.check_circle, color: method['color'] as Color, size: 22),
                          ],
                        ),
                        if (isSelected) ...[
                          const SizedBox(height: 12),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: (method['color'] as Color).withOpacity(0.05),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              method['details'] as String,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Set default button
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '${_paymentMethods[_selectedIndex]['name']} dijadikan metode pembayaran default',
                      ),
                      backgroundColor: const Color(0xff4CAF50),
                      duration: const Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  );
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff3E2723),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Text(
                  'Atur sebagai Default',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// =========================================
// PAYMENT PAGE
// =========================================
class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _selectedPaymentMethod = 0;
  final List<PaymentMethod> paymentMethods = [
    PaymentMethod(
      id: 0,
      name: 'Transfer Bank',
      icon: Icons.account_balance,
      description: 'BCA, BNI, BRI, Mandiri',
      color: const Color(0xff1565C0),
    ),
    PaymentMethod(
      id: 1,
      name: 'E-Wallet',
      icon: Icons.phone_android,
      description: 'GoPay, OVO, DANA, ShopeePay',
      color: const Color(0xffAD1457),
    ),
    PaymentMethod(
      id: 2,
      name: 'COD (Bayar di Tempat)',
      icon: Icons.money,
      description: 'Bayar saat barang sampai',
      color: const Color(0xff2E7D32),
    ),
    PaymentMethod(
      id: 3,
      name: 'Virtual Account',
      icon: Icons.credit_card,
      description: 'Permata, BCA, BNI Virtual Account',
      color: const Color(0xff6A1B9A),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final total = cartItems.fold<double>(0, (sum, item) {
      final price = double.parse(item.price.replaceAll(RegExp(r'[^0-9]'), ''));
      return sum + price;
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E2723),
        title: const Text(
          'Pembayaran',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: cartItems.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined, size: 80, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'Keranjang kosong',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                // Order summary
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Ringkasan Pesanan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3E2723),
                        ),
                      ),
                      const SizedBox(height: 12),
                      ...cartItems.map((product) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                product.name,
                                style: const TextStyle(fontSize: 13),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              product.price,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffC9A96E),
                              ),
                            ),
                          ],
                        ),
                      )),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Rp ${total.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]}.')}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3E2723),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Payment methods
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Metode Pembayaran',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3E2723),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ...paymentMethods.map((method) => Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: _selectedPaymentMethod == method.id
                                  ? method.color
                                  : Colors.grey.shade200,
                              width: _selectedPaymentMethod == method.id ? 2 : 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.04),
                                blurRadius: 6,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: RadioListTile<int>(
                            value: method.id,
                            groupValue: _selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                _selectedPaymentMethod = value!;
                              });
                            },
                            activeColor: method.color,
                            title: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: method.color.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(
                                    method.icon,
                                    color: method.color,
                                    size: 22,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        method.name,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        method.description,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            subtitle: _selectedPaymentMethod == method.id
                                ? Text(
                                    'Terpilih',
                                    style: TextStyle(
                                      color: method.color,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : null,
                          ),
                        )),
                      ],
                    ),
                  ),
                ),

                // Pay button
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, -2),
                      ),
                    ],
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        _processPayment();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff3E2723),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        'Bayar Sekarang',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  void _processPayment() {
    // Create order from cart items
    final orderId = 'ORD-${DateTime.now().millisecondsSinceEpoch.toString().substring(6)}';
    final now = DateTime.now();
    final trackingNumber = 'JNE-${now.millisecondsSinceEpoch.toString().substring(5)}';

    for (final product in cartItems) {
      final newOrder = Order(
        id: orderId,
        productName: product.name,
        price: product.price,
        date: now,
        status: 'Dikemas',
        trackingNumber: trackingNumber,
      );
      activeOrders.insert(0, newOrder); // Add to beginning of list
    }

    // Clear cart
    cartItems.clear();

    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Pembayaran berhasil! Pesanan sedang diproses.'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 3),
      ),
    );

    // Navigate to PengirimanPage
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const PengirimanPage()),
    );
  }
}

class PaymentMethod {
  final int id;
  final String name;
  final IconData icon;
  final String description;
  final Color color;

  PaymentMethod({
    required this.id,
    required this.name,
    required this.icon,
    required this.description,
    required this.color,
  });
}
