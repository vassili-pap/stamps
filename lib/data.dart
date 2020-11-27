class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo(
    this.position, {
    this.name,
    this.iconImage,
    this.description,
    this.images,
  });
}

List<PlanetInfo> planets = [
  PlanetInfo(1,
      name: 'Starbucks Coffee',
      iconImage: 'assets/starbucks.png',
      description:
          "Ist deine Stempelkarte voll, erhälst Du einen großen Kaffee umsonst.",
      images: [
        'https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg',
        'https://cdn.pixabay.com/photo/2014/07/01/11/38/planet-381127_1280.jpg',
        'https://cdn.pixabay.com/photo/2015/06/26/18/48/mercury-822825_1280.png',
        'https://image.shutterstock.com/image-illustration/mercury-high-resolution-images-presents-600w-367615301.jpg'
      ]),
  PlanetInfo(2,
      name: 'Coffee Fellows',
      iconImage: 'assets/coffeefellows.png',
      description:
          "Ist deine Stempelkarte voll, erhälst Du einen großen Kaffee umsonst.",
      images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/39/venus-11022_1280.jpg',
        'https://image.shutterstock.com/image-photo/solar-system-venus-second-planet-600w-515581927.jpg'
      ]),
  PlanetInfo(3,
      name: 'Café Bonjour',
      iconImage: 'assets/bonjour.png',
      description:
          "Ist deine Stempelkarte voll, erhälst Du einen großen Kaffee umsonst.",
      images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015_1280.jpg',
        'https://cdn.pixabay.com/photo/2011/12/14/12/11/astronaut-11080_1280.jpg',
        'https://cdn.pixabay.com/photo/2016/01/19/17/29/earth-1149733_1280.jpg',
        'https://image.shutterstock.com/image-photo/3d-render-planet-earth-viewed-600w-1069251782.jpg'
      ]),
  // PlanetInfo(4,
  //     name: 'The Bulldog',
  //     iconImage: 'assets/mars.png',
  //     description:
  //         "The fourth planet from the sun is Mars, and it's a cold, desert-like place covered in dust. This dust is made of iron oxides, giving the planet its iconic red hue. Mars shares similarities with Earth: It is rocky, has mountains, valleys and canyons, and storm systems ranging from localized tornado-like dust devils to planet-engulfing dust storms. ",
  //     images: []),
  // PlanetInfo(5,
  //     name: 'Burger King',
  //     iconImage: 'assets/jupiter.png',
  //     description:
  //         "The fifth planet from the sun, Jupiter is a giant gas world that is the most massive planet in our solar system — more than twice as massive as all the other planets combined, according to NASA. Its swirling clouds are colorful due to different types of trace gases. And a major feature in its swirling clouds is the Great Red Spot, a giant storm more than 10,000 miles wide. It has raged at more than 400 mph for the last 150 years, at least. Jupiter has a strong magnetic field, and with 75 moons, it looks a bit like a miniature solar system.",
  //     images: []),
  // PlanetInfo(6,
  //     name: 'McDonalds',
  //     iconImage: 'assets/saturn.png',
  //     description:
  //         "The sixth planet from the sun, Saturn is known most for its rings. When polymath Galileo Galilei first studied Saturn in the early 1600s, he thought it was an object with three parts: a planet and two large moons on either side. Not knowing he was seeing a planet with rings, the stumped astronomer entered a small drawing — a symbol with one large circle and two smaller ones — in his notebook, as a noun in a sentence describing his discovery. More than 40 years later, Christiaan Huygens proposed that they were rings. The rings are made of ice and rock and scientists are not yet sure how they formed. The gaseous planet is mostly hydrogen and helium and has numerous moons.",
  //     images: []),
  PlanetInfo(7,
      name: 'KFC',
      iconImage: 'assets/kfc.png',
      description:
          "Ist deine Stempelkarte voll, erhälst Du einen großen Kaffee umsonst.",
    	images: []),
  PlanetInfo(8,
      name: 'Aroma Veggie',
      iconImage: 'assets/aroma.png',
      description:
          "Ist deine Stempelkarte voll, erhälst Du einen großen Kaffee umsonst.",
      images: []),
];
