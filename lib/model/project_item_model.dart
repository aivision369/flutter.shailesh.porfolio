class ProjectItemModel {
  late String prjName;
  late String description;
  late String image;
  late String projectUrl;
  late String mobileThumb;
  late List language;
  late List prjImages;

  ProjectItemModel(
      {required this.prjName,
      required this.description,
      required this.image,
      required this.mobileThumb,
      required this.projectUrl,
      required this.language,
      required this.prjImages});

  static final projectList = [
    ProjectItemModel(
      prjName: "Plegium app",
      description:
          "The Plegium Combo Pepper Spray is a combined pepper spray with siren and strobe LEDs.When we fire this pepper spray, all the functions activates automatically. The pepper spray blinds the attacker, the powerful siren will attract the attention of the scene and the strobe LED lights assist you to plan in the dark place.",
      image: "assets/images/pro_pl_1.png",
      mobileThumb:"assets/images/pro_pl_1.png",
      projectUrl: "https://play.google.com/store/search?q=plegium+app&c=apps",
      language: ["Java", "AWS",],
      prjImages: ["assets/images/pro_pl_1.png","assets/images/pro_pl_2.png", "assets/images/pro_pl_3.png", "assets/images/pro_pl_4.png", "assets/images/pro_pl_5.png",],
    ),
    ProjectItemModel(
      prjName: "Nukkad ",
      description:
          "App Nukkad Se Shopping helps you to avoid for parking hassle free, huge evolution and in return back give you to have save family time to have with your loved ones.",
      image: "assets/images/pro_nukked_1.png",
      mobileThumb:"assets/images/pro_nukked_1.png",
      projectUrl: "https://www.behance.net/gallery/74125171/Nukkad-Se",
      language: ["Java", "Payment"],
      prjImages: ["assets/images/pro_nukked_1.png","assets/images/pro_nukked_2.png","assets/images/pro_nukked_3.png","assets/images/pro_nukked_4.png",],
    ),

    ProjectItemModel(
      prjName: "Diet Box",
      description:
          "Get the trending news on App Diet Box on the roadside stalls to get the best diet food for good health from the Bandee Place. Each and every food which you see on the road makes you meet food trucks and the latest tending food store information.",
      image: "assets/images/pro_diet_1.png",
      mobileThumb:"assets/images/pro_diet_1.png",
      projectUrl: "https://www.behance.net/gallery/40481205/DietBox",
      language: ["Java","SQLite"],
      prjImages: ["assets/images/pro_diet_1.png","assets/images/pro_diet_2.png","assets/images/pro_diet_3.png","assets/images/pro_diet_4.png","assets/images/pro_diet_5.png",],
    ),
    ProjectItemModel(
      prjName: "Bandi Places",
      description:
          "App Bandi Place is the one of the trendy food courts which found on the roadside hygienic food which loved by Family to feel 100% family food, which makes feel new generation to come out with family to expand their love on a family by eating Bandi Place food. Bandi Place will make you meet on the road at food trucks.",
      image: "assets/images/pro_bendi_1.jpg",
      mobileThumb:"assets/images/mob_bendi.png",
      projectUrl: "https://www.behance.net/gallery/64267359/Bandi-Place",
      language: ["Java"],
      prjImages: ["assets/images/pro_bendi_1.jpg","assets/images/pro_bendi_2.png","assets/images/pro_bendi_3.png","assets/images/pro_bendi_4.png","assets/images/pro_bendi_5.png"],
    ),
    ProjectItemModel(
      prjName: "EMB Design",
      description:
          "App offers a curated collection of intricate embroidery designs. Users can browse, preview, and purchase designs for various projects. With a user-friendly interface and secure payment options, it's the ultimate destination for embroidery enthusiasts to find and acquire unique designs for their creations",
      image: "assets/images/pro_emb_1.png",
      mobileThumb:"assets/images/pro_emb_1.png",
      projectUrl: "",
      language: ["Kotlin", "Payment"],
      prjImages: ["assets/images/pro_emb_1.png","assets/images/pro_emb_2.png","assets/images/pro_emb_3.png","assets/images/pro_emb_4.png","assets/images/pro_emb_6.png","assets/images/pro_emb_5.png",],
    ),

    ProjectItemModel(
      prjName: "Food Wave",
      description:
      "App is your go-to app for discovering local food stores and placing orders with ease. Whether you're craving your favorite restaurant dish, seeking a new culinary adventure, or simply looking for convenient grocery delivery, this app has you covered.",
      image: "assets/images/pro_food_wave1.jpg",
      mobileThumb:"assets/images/mob_food.png",
      projectUrl: "https://www.behance.net/gallery/73141851/Food-Wave",
      language: ["Java", "Payment"],
      prjImages: ["assets/images/pro_food_wave1.jpg","assets/images/pro_food_wave2.jpg","assets/images/pro_food_wave3.png","assets/images/pro_food_wave4.png","assets/images/pro_food_wave5.png"],
    ),
    ProjectItemModel(
      prjName: "Stock Stone",
      description:
      "App designed to streamline the process of purchasing tiles for various projects. Whether you're renovating your home, remodeling a commercial space, or embarking on a DIY project, this app offers a seamless experience for browsing, selecting, and ordering tiles from the comfort of your own device.",
      image: "assets/images/pro_ss_1.png",
      mobileThumb:"assets/images/mob_stock.png",
      projectUrl: "",
      language: [
        "Java","Kotlin"
      ],
      prjImages: ["assets/images/pro_ss_1.png", "assets/images/pro_ss_2.png", "assets/images/pro_ss_3.png", "assets/images/pro_ss_4.png", "assets/images/pro_ss_5.png", "assets/images/pro_ss_6.png", "assets/images/pro_ss_7.png", "assets/images/pro_ss_8.png", "assets/images/pro_ss_9.png", "assets/images/pro_ss_10.png", ],
    ),
    ProjectItemModel(
      prjName: "Food Grocery",
      description:
      "This app provides a seamless experience for users to order groceries conveniently from their mobile devices.With intuitive navigation and essential features, users can browse through various categories, add items to their cart, and complete orders effortlessly.",
      image: "assets/images/pro_fg_1.png",
      mobileThumb:"assets/images/mob_food_gro.png",
      projectUrl: "https://github.com/aivision369/Food-Grocery",
      language: [
        "Flutter", "GetX",
      ],
      prjImages: ["assets/images/pro_fg_1.png","assets/images/pro_fg_2.png","assets/images/pro_fg_3.png","assets/images/pro_fg_4.png","assets/images/pro_fg_5.png","assets/images/pro_fg_6.png","assets/images/pro_fg_7.png","assets/images/pro_fg_8.png","assets/images/pro_fg_9.png","assets/images/pro_fg_10.png"],
    ),
    ProjectItemModel(
      prjName: "Travel",
      description:
      "Welcome to the Traveling App, your one-stop destination for exploring popular travel spots around the world. Our app offers an intuitive interface for discovering new places, planning your trips, and finding the best accommodations, food, and activities at each destination.",
      image: "assets/images/travel_home_1.png",
      mobileThumb:"assets/images/mob_travel.png",
      projectUrl: "https://github.com/aivision369/TravelApp",
      language: [
        "Flutter",
      ],
      prjImages: ["assets/images/travel_home_1.png", "assets/images/travel_detail_1.png", "assets/images/travel_detail_2.png", "assets/images/travel_detail_3.png",],
    ),
    ProjectItemModel(
      prjName: "Online Shop",
      description:
      "This is a simple one-page shopping application built with Flutter. The app allows users to browse and purchase various electronic products such as laptops, smartwatches, smartphones, and headphones. Additionally, users can switch between light and dark themes for a better user experience.",
      image: "assets/images/pro_online_1_light.png",
      mobileThumb:"assets/images/mob_e_electric.png",
      projectUrl: "https://github.com/aivision369/OnlineShope",
      language: [
        "Flutter",
      ],
      prjImages: ["assets/images/pro_online_1_light.png", "assets/images/pro_online_2_dark.png",],
    ),
    ProjectItemModel(
      prjName: "Shop Now",
      description:
      "This app provides a seamless experience for users to order groceries conveniently from their mobile devices. With intuitive navigation and essential features, users can browse through various categories, add items to their cart, and complete orders effortlessly.",
      image: "assets/images/pro_online_api_1.png",
      mobileThumb:"assets/images/mob_e_cloths.png",
      projectUrl: "",
      language: [
        "Flutter","http",
      ],
      prjImages: ["assets/images/pro_online_api_1.png", "assets/images/pro_online_api_2.png", "assets/images/pro_online_api_3.png",],
    ),
  ];
}
