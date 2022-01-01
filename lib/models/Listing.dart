class Listing {
  final String description, address, image, time;
  final bool isActive;
  final double price;
  final int applicants;

  Listing(
      {this.description = '',
      this.image = '',
      this.time = '',
      this.address = '',
      this.isActive = false,
      this.price = 0,
      this.applicants = 0});
}

List listingData = [
  Listing(
      description: "2 Bed 2 Bath Apartment near University",
      address: "307-975 Academy Way, V1V3C8",
      image: "assets/images/kitchen.jpeg",
      time: "3w ago",
      isActive: true,
      price: 700.0,
      applicants: 170),
  Listing(
      description: "Nice appartment with single bed & bath",
      address: "Vancouver, BC V6M 3W6, Canada",
      image: "assets/images/kitchen.jpeg",
      time: "2w ago",
      isActive: true,
      price: 700.0,
      applicants: 170),
  Listing(
      description: "3 Bed 3 Bath Apartment near University",
      address: "402-975 Academy Way, V1V3C8",
      image: "assets/images/kitchen.jpeg",
      time: "3w ago",
      isActive: true,
      price: 700.0,
      applicants: 170),
  Listing(
      description: "2 Bed 2 Bath Apartment near City Center",
      address: "Vancouver, BC V5P 3W2",
      image: "assets/images/kitchen.jpeg",
      time: "3w ago",
      isActive: true,
      price: 700.0,
      applicants: 170),
  Listing(
      description: "2 Bed 2 Bath Apartment near University",
      address: "404-882 Academy Way, V1V3C8",
      image: "assets/images/kitchen.jpeg",
      time: "3w ago",
      isActive: true,
      price: 700.0,
      applicants: 170)
];
