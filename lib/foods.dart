class Foods {
  final String foodTitle;
  final String image;
  final String subTitle;
  final String type;
  final int calories;
  final double protein;
  final double fat;
  final double sugar;
  final double energy;
  final double carbos;
  final String pros;
  final String cons;
  //final List<Foods> foodList1;
  const Foods(
      {this.foodTitle,
        this.image,
        this.subTitle,
        this.type,
        this.calories,
        this.protein,
        this.fat,
        this.sugar,
        this.energy,
        this.carbos,
        this.pros,
        this.cons});

  static const List<Foods> foodList = <Foods>[
    //Foods(foodTitle:'Apple',image:'images/apple.png'),
    Foods(
        foodTitle: 'Banana',
        image: 'images/banana.png',
        subTitle: 'Bananas are good for you',
        type: 'quantity',
        calories: 105,
        protein: 1.3,
        fat: 0.4,
        sugar: 14,
        carbos: 27,
        pros:
        'Bananas are full of Fibre and Antioxidants, Vitamin B6 and, Potassium essential for blood pressure control and linked to heart health and better kidney function.',
        cons:
        'Diabetics should monitor their blood sugar after eating bananas.'),
    //Foods(foodTitle:'Curd',image:'images/curd.png'),
    Foods(
        foodTitle: 'Rice',
        image: 'images/rice.png',
        subTitle: 'Rice Contains starch',
        type: 'weight',
        calories: 123,
        protein: 2.7,
        fat: 1,
        sugar: 0.2,
        carbos: 26,
        pros: 'Good source of carbohydrates and provide instant energy.',
        cons:
        'White rice is commonly tied to obesity. Despite it may be a source of energy, eating white rice without exercise may gain weight.'),
    Foods(
        foodTitle: 'Strawberry',
        image: 'images/strawberry.png',
        subTitle: 'Strawberries are red',
        type: 'quantity',
        calories: 4,
        protein: 0.1,
        fat: 0,
        sugar: 0.6,
        carbos: 0.9,
        pros:
        'Antioxidants present in strawberries can help boost immune system and fight free radicals',
        cons:
        'Some health professionals believe that oxalates contribute the formation of kidney stones.'),
    Foods(
        foodTitle: 'Chicken',
        image: 'images/chicken.png',
        subTitle: 'Excess of chicken is bad',
        type: 'weight',
        calories: 239,
        protein: 27,
        fat: 14,
        sugar: 0,
        carbos: 0,
        pros: 'A source of protein.',
        cons: 'Can raise cholestrol levels in blood.'),
    Foods(
        foodTitle: 'Fish',
        image: 'images/fish.png',
        subTitle: 'Fish is good for eyesight',
        type: 'weight',
        calories: 140,
        protein: 20,
        fat: 1.7,
        sugar: 0,
        carbos: 0,
        pros: 'Fish oils are the best source of omega-3 fatty acids',
        cons:
        'If you’re eating fish for health reasons make sure you know where it comes from.'),
    Foods(
        foodTitle: 'Cake',
        image: 'images/cake.png',
        subTitle: 'Perfect birthday delicacy',
        type: 'weight',
        calories: 311,
        protein: 5.2,
        fat: 10,
        sugar: 20,
        carbos: 52,
        pros: 'Everyone is fond of cakes because of their taste.',
        cons: 'High content of sugar.'),
    Foods(
        foodTitle: 'Brinjal',
        image: 'images/brinjal.png',
        subTitle: 'Cultivation of eggplant started 600 years BC',
        type: 'weight',
        calories: 25,
        protein: 1,
        fat: 0.2,
        sugar: 3.5,
        carbos: 5.9,
        pros:
        'The skin of eggplant has a number of nutritional benefits. Eggplant is ranked among the top 10 vegetables in oxygen radical absorbance capacity.',
        cons: 'The oxalates in this vegetable can cause stones in the kidney.'),
    Foods(
      foodTitle: 'Avocado',
      image: 'images/avocado.png',
      subTitle:
      'Avocados mature on the tree, but only ripen once they are taken off the tree.',
      type: 'quantity',
      calories: 160,
      protein: 2,
      fat: 15,
      sugar: 0.7,
      carbos: 8.5,
      pros:
      'They are an excellent source of B vitamins, which help the body fight disease and infection.',
      cons: 'Avocados are a high-fat food',
    ),
    Foods(
      foodTitle: 'Bacon',
      image: 'images/bacon.png',
      subTitle: 'Word Bacon refers to back of pig',
      type: 'weight',
      calories: 548,
      protein: 36,
      fat: 43,
      sugar: 0,
      carbos: 1.4,
      pros: 'Proteins which ensure muscle gain and help people stay fit.',
      cons:
      'Bacon is a salted and smoked product. Therefore, it should be consumed in moderation as sodium retains water in body disturbing the water-salt balance.',
    ),
    Foods(
      foodTitle: 'Biscuits',
      image: 'images/biscuits.png',
      subTitle: 'Word Bacon refers to back of pig',
      type: 'weight',
      calories: 406,
      protein: 7.1,
      fat: 11,
      sugar: 21,
      carbos: 71,
      pros:
      'Digestive biscuits contain fiber that contributes to fullness while not increasing weight and does not make the person hungry when eating fatty foods.',
      cons: 'They contain high amounts of sugar.',
    ),
    Foods(
      foodTitle: 'Peas',
      image: 'images/peas.png',
      subTitle: 'The Romans grew over 37 varieties of peas.',
      type: 'weight',
      calories: 81,
      protein: 5.4,
      fat: 0.4,
      sugar: 5.7,
      carbos: 14,
      pros:
      'It helps to prevent and fight against various heart diseases and controls high blood pressure.',
      cons: 'Consuming excess peas can buildup uric acid in the body.',
    ),
    Foods(
      foodTitle: 'Blueberries',
      image: 'images/blueberries.png',
      subTitle: 'Blueberries freeze in just 4 minutes.',
      type: 'weight',
      calories: 57,
      protein: 0.7,
      fat: 0.3,
      sugar: 10,
      carbos: 14,
      pros:
      'Blueberries can help to prevent cancer, can help to prevent cogitative decline normally associated with the aging process.',
      cons:
      'The biggest complain that people have against blueberries is a personal one. Some people hate the texture of blueberries.',
    ),
    Foods(
      foodTitle: 'Boiled Egg',
      image: 'images/boiledegg.png',
      subTitle:
      'How Thick an Egg Shell is Depends on the Age of the Laying Hen',
      type: 'quantity',
      calories: 77,
      protein: 6.3,
      fat: 5.3,
      sugar: 0.51,
      carbos: 0.6,
      pros:
      'Rich in vitamin A, eggs give you healthy and strong hair and good eyesight.',
      cons:
      'About 60 percent of the calories in eggs are from fat—much of which is saturated fat. Eggs are also loaded with cholesterol—about 200 milligrams for an average-sized egg.',
    ),
    Foods(
        foodTitle: 'Watermelon',
        image: 'images/watermelon.png',
        subTitle: 'Watermelons are both a fruit and a vegetable',
        type: 'weight',
        calories: 30,
        protein: 0.6,
        fat: 0.2,
        sugar: 6.2,
        carbos: 7.6,
        pros:
        'Watermelon is an ideal health food because it doesn’t contain any fat or cholesterol, is high in fiber and vitamins A & C and is a good source of potassium',
        cons:
        'The lycopene content in watermelons is much more than what is found in tomatoes'),
    Foods(
        foodTitle: 'Wrap',
        image: 'images/wrap.png',
        subTitle: 'Eating smaller meals may not harm you',
        type: 'quantity',
        calories: 275,
        protein: 11,
        fat: 15,
        sugar: 2.5,
        carbos: 23,
        pros:
        'Having a minimum amount of junk food just for change can be good for your digestion',
        cons:
        'Fast foods and junk foods are high in fat, sodium and sugar, which can lead to obesity and a range of attendant health problems'),
    Foods(
        foodTitle: 'Turkey',
        image: 'images/turkey.png',
        subTitle: 'The Turkey Is Almost Certainly Named for Turkey',
        type: 'weight',
        calories: 115,
        protein: 23,
        fat: 1.9,
        sugar: 0.1,
        carbos: 0.1,
        pros:
        'Turkey is a great source of protein! In fact, there are 32 grams of protein in a 4-ounce serving.',
        cons:
        'Turkey can be detrimental for people with gout because it contains high levels of purines, which are known to trigger gout attacks'),
    Foods(
        foodTitle: 'Tomato',
        image: 'images/tomato.png',
        subTitle:
        'There are more than 7500 tomato varieties grown around the world',
        type: 'weight',
        calories: 26,
        protein: 0.9,
        fat: 0.2,
        sugar: 3.5,
        carbos: 6.2,
        pros:
        'It’s scientifically proven that tomato has positive impact on skin.',
        cons:
        'Don’t eat tomatoes with fish, eggs and bread. These combinations lead to slow down digestion'),
    Foods(
        foodTitle: 'Toffee',
        image: 'images/toffee.png',
        subTitle: 'Americans buy 600 million pounds of candy every Halloween.',
        type: 'quantity',
        calories: 67,
        protein: 0.1,
        fat: 3.9,
        sugar: 7.6,
        carbos: 7.8,
        pros:
        'Sugar activates the part of our brain that is responsible for pleasure, so a quick sugary snack will give us an immediate feeling of euphoria.',
        cons:
        'Unfortunately, sugar isn’t a good source of energy for the everyday person.'),
    Foods(
        foodTitle: 'Toast',
        image: 'images/toast.png',
        subTitle:
        'The word “toast” comes from the latin “tostare,” meaning “to toast',
        type: 'quantity',
        calories: 75,
        protein: 3.1,
        fat: 1,
        sugar: 1.5,
        carbos: 13,
        pros:
        'When you toast your bread though, it lowers the glycemic index. That means that the bread will have less effect on your blood sugar.',
        cons: ' it provides you with few nutrients and little fiber.'),
    Foods(
        foodTitle: 'Tea',
        image: 'images/tea.png',
        subTitle:
        'It takes around 2,000 tiny leaves to make just one pound of finished tea.',
        type: 'quantity',
        calories: 40,
        protein: 1,
        fat: 1,
        sugar: 6,
        carbos: 6,
        pros:
        'Milk tea is loaded with antioxidants that are powerful enough to neutralize excess free radicals before they wreak havoc on your cells and tissues.',
        cons:
        'Milk tea or the plain kind is not suited for those who are extremely sensitive to caffeine.'),
    Foods(
        foodTitle: 'Sushi',
        image: 'images/sushi.png',
        subTitle: 'Sushi is swimming in health benefits.',
        type: 'weight',
        calories: 160,
        protein: 4,
        fat: 1,
        sugar: 4,
        carbos: 27,
        pros:
        'Omega-3 fatty acids present in sushi are natural anti-inflammatory compounds that contribute to cardiovascular and brain health as well as hair and skin conditioning.',
        cons:
        'Sushi can contain high amounts of sodium ,can lead to high blood pressure.'),
    Foods(
        foodTitle: 'Spaghetti',
        image: 'images/spaghetti.png',
        subTitle: 'January 4th is National Spaghetti Day.',
        type: 'weight',
        calories: 130,
        protein: 4.6,
        fat: 0.6,
        sugar: 0,
        carbos: 26,
        pros:
        'It is a good source of energy and can give you fiber, too, if it is made from whole grain.',
        cons:
        'Eating multiple servings of pasta can cause you to consume too many calories, leading to weight gain.'),
  ];
}
