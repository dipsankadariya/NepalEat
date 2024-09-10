class UnboardingContenet {
  String image;
  String title;
  String description;
  UnboardingContenet(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContenet> contents = [
  UnboardingContenet(
      description: "Authentic food at your doorstep",
      image: "images/img1.jpg",
      title: "welcome to Nepal Eats"),
  UnboardingContenet(
      description:
          "Select the food from the menu \n  From Wide variety of options ,",
      image: "images/img2.jpg",
      title: "Good Food ,Good Mood"),
  UnboardingContenet(
      description: "Pay through cash, or Card",
      image: "images/img3.jpg",
      title: "Easy and Fast Payment"),
];
