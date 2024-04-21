class ProjectItemModel {
  late String prjName;
  late String description;
  late String image;
  late String projectUrl;
  late List language;
  late List prjImages;

  ProjectItemModel(
      {required this.prjName,
      required this.description,
      required this.image,
      required this.projectUrl,
      required this.language,
      required this.prjImages});

  static final projectList = [
    ProjectItemModel(
      prjName: "Plegium app",
      description:
          "The Plegium Combo Pepper Spray is a combined pepper spray with siren and strobe LEDs.When we fire this pepper spray, all the functions activates automatically. The pepper spray blinds the attacker, the powerful siren will attract the attention of the scene and the strobe LED lights assist you to plan in the dark place.",
      image: "assets/images/project_plegium.JPG",
      projectUrl: "https://play.google.com/store/search?q=plegium+app&c=apps",
      language: ["Java", "AWS",],
      prjImages: ["assets/images/pro_plegium_1.jpg", ],
    ),
    ProjectItemModel(
      prjName: "Nukkad ",
      description:
          "App Nukkad Se Shopping helps you to avoid for parking hassle free, huge evolution and in return back give you to have save family time to have with your loved ones.",
      image: "assets/images/project_nukkedse.jpg",
      projectUrl: "https://www.behance.net/gallery/74125171/Nukkad-Se",
      language: ["Java", "Payment"],
      prjImages: ["assets/images/pro_nukked_1.jpg", "assets/images/pro_nukked_2.jpg", "assets/images/pro_nukked_3.jpg", "assets/images/pro_nukked_4.jpg",],
    ),
    ProjectItemModel(
      prjName: "Food Grocery",
      description:
      "This app provides a seamless experience for users to order groceries conveniently from their mobile devices.With intuitive navigation and essential features, users can browse through various categories, add items to their cart, and complete orders effortlessly.",
      image: "",
      projectUrl: "https://github.com/aivision369/Food-Grocery",
      language: [
        "Flutter",
      ],
      prjImages: ["assets/images/food_wave1.jpg", "assets/images/food_wave2.jpg", "assets/images/food_wave3.jpg", "assets/images/food_wave4.jpg", "assets/images/food_wave5.jpg"],
    ),
    ProjectItemModel(
      prjName: "Diet Box",
      description:
          "Get the trending news on App Diet Box on the roadside stalls to get the best diet food for good health from the Bandee Place. Each and every food which you see on the road makes you meet food trucks and the latest tending food store information.",
      image: "assets/images/project_dietbox.jpg",
      projectUrl: "https://www.behance.net/gallery/40481205/DietBox",
      language: ["Java"],
      prjImages: ["assets/images/pro_diet_1.jpg", "assets/images/pro_diet_2.jpg", "assets/images/pro_diet_3.jpg", "assets/images/pro_diet_4.jpg", "assets/images/pro_diet_5.jpg"],
    ),
    ProjectItemModel(
      prjName: "Bandi Places",
      description:
          "App Bandi Place is the one of the trendy food courts which found on the roadside hygienic food which loved by Family to feel 100% family food, which makes feel new generation to come out with family to expand their love on a family by eating Bandi Place food. Bandi Place will make you meet on the road at food trucks.",
      image: "assets/images/project_bandi.jpg",
      projectUrl: "https://www.behance.net/gallery/64267359/Bandi-Place",
      language: ["Java"],
      prjImages: ["assets/images/pro_bendi_1.jpg", "assets/images/pro_bendi_2.jpg", "assets/images/pro_bendi_3.jpg", "assets/images/pro_bendi_4.jpg", "assets/images/pro_bendi_5.jpg"],
    ),
    ProjectItemModel(
      prjName: "Food Wave",
      description:
          "App is your go-to app for discovering local food stores and placing orders with ease. Whether you're craving your favorite restaurant dish, seeking a new culinary adventure, or simply looking for convenient grocery delivery, this app has you covered.",
      image: "assets/images/project_foodwave.jpg",
      projectUrl: "https://www.behance.net/gallery/73141851/Food-Wave",
      language: ["Java", "Payment"],
      prjImages: ["assets/images/food_wave1.jpg", "assets/images/food_wave2.jpg", "assets/images/food_wave3.jpg", "assets/images/food_wave4.jpg", "assets/images/food_wave5.jpg"],
    ),
    ProjectItemModel(
      prjName: "Stock Stone",
      description:
          "App designed to streamline the process of purchasing tiles for various projects. Whether you're renovating your home, remodeling a commercial space, or embarking on a DIY project, this app offers a seamless experience for browsing, selecting, and ordering tiles from the comfort of your own device.",
      image: "",
      projectUrl: "",
      language: [
        "Java","Kotlin"
      ],
      prjImages: ["assets/images/food_wave1.jpg", "assets/images/food_wave2.jpg", "assets/images/food_wave3.jpg", "assets/images/food_wave4.jpg", "assets/images/food_wave5.jpg"],
    ),
    ProjectItemModel(
      prjName: "EMB Design",
      description:
          "App offers a curated collection of intricate embroidery designs. Users can browse, preview, and purchase designs for various projects. With a user-friendly interface and secure payment options, it's the ultimate destination for embroidery enthusiasts to find and acquire unique designs for their creations",
      image: "assets/images/project_emb_design.png",
      projectUrl: "",
      language: ["Kotlin", "Payment"],
      prjImages: ["assets/images/pro_emb_1.png",],
    ),
  ];
}
