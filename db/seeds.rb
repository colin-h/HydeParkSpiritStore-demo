State.create!([
  { name: 'Michigan', abbreviation: 'MI'},
  { name: 'South Dakota', abbreviation: 'SD'},
  { name: 'Washington', abbreviation: 'WA'},
  { name: 'Wisconsin', abbreviation: 'WI'},
  { name: 'Arizona', abbreviation: 'AZ'},
  { name: 'Illinois', abbreviation: 'IL'},
  { name: 'New Hampshire', abbreviation: 'NH'},
  { name: 'North Carolina', abbreviation: 'NC'},
  { name: 'Kansas', abbreviation: 'KS'},
  { name: 'Missouri', abbreviation: 'MO'},
  { name: 'Arkansas', abbreviation: 'AR'},
  { name: 'Nevada', abbreviation: 'NV'},
  { name: 'District of Columbia', abbreviation: 'DC'},
  { name: 'Idaho', abbreviation: 'ID'},
  { name: 'Nebraska', abbreviation: 'NE'},
  { name: 'Pennsylvania', abbreviation: 'PA'},
  { name: 'Hawaii', abbreviation: 'HI'},
  { name: 'Utah', abbreviation: 'UT'},
  { name: 'Vermont', abbreviation: 'VT'},
  { name: 'Delaware', abbreviation: 'DE'},
  { name: 'Rhode Island', abbreviation: 'RI'},
  { name: 'Oklahoma', abbreviation: 'OK'},
  { name: 'Louisiana', abbreviation: 'LA'},
  { name: 'Montana', abbreviation: 'MT'},
  { name: 'Tennessee', abbreviation: 'TN'},
  { name: 'Maryland', abbreviation: 'MD'},
  { name: 'Florida', abbreviation: 'FL'},
  { name: 'Virginia', abbreviation: 'VA'},
  { name: 'Minnesota', abbreviation: 'MN'},
  { name: 'New Jersey', abbreviation: 'NJ'},
  { name: 'Ohio', abbreviation: 'OH'},
  { name: 'California', abbreviation: 'CA'},
  { name: 'North Dakota', abbreviation: 'ND'},
  { name: 'Maine', abbreviation: 'ME'},
  { name: 'Indiana', abbreviation: 'IN'},
  { name: 'Texas', abbreviation: 'TX'},
  { name: 'Oregon', abbreviation: 'OR'},
  { name: 'Wyoming', abbreviation: 'WY'},
  { name: 'Alabama', abbreviation: 'AL'},
  { name: 'Iowa', abbreviation: 'IA'},
  { name: 'Mississippi', abbreviation: 'MS'},
  { name: 'Kentucky', abbreviation: 'KY'},
  { name: 'New Mexico', abbreviation: 'NM'},
  { name: 'Georgia', abbreviation: 'GA'},
  { name: 'Colorado', abbreviation: 'CO'},
  { name: 'Massachusetts', abbreviation: 'MA'},
  { name: 'Connecticut', abbreviation: 'CT'},
  { name: 'New York', abbreviation: 'NY'},
  { name: 'South Carolina', abbreviation: 'SC'},
  { name: 'Alaska', abbreviation: 'AK'},
  { name: 'West Virginia', abbreviation: 'WV'},
  { name: 'U.S. Armed Forces - Americas', abbreviation: 'AA'},
  { name: 'U.S. Armed Forces - Europe', abbreviation: 'AE'},
  { name: 'U.S. Armed Forces - Pacific', abbreviation: 'AP'}
])

Category.create!([
  { name: 'Football', active: true},
  { name: 'Volleyball', active: true},
  { name: 'Basketball', active: true},
  { name: 'Baseball', active: true},
  { name: 'Soccer', active: true},
  { name: 'Golf', active: true},
  { name: 'Tennis', active: true},
  { name: 'Spirit Gear', active: true},
  { name: 'Cheer', active: true},
  { name: 'PE and Athletics', active: true}
])

Option.create!([
  { name: "Size"}
])

Product.create!([
# Football Products
  {
    name: "Adult Black Football Hoodie",
    sku: "3362-337291",
    price: 40.00,
    cost: 34.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth Black Football Hoodie",
    sku: "3362-337261",
    price: 40.00,
    cost: 34.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Adult Charcoal Football Dri Fit",
    sku: "3360-N3230",
    price: 20.00,
    cost: 12.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth Charcoal Football Dri Fit",
    sku: "3360-NB3142",
    price: 20.00,
    cost: 12.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Custom Football Decal",
    sku: "DCL-FOOTBALL",
    price:12.00,
    cost:5.75,
    description:"none",
    is_customizable: true,
    active: true,
    featured: false
  },
  {
    name: "Youth Red Football Tshirt",
    sku: "3361-YPC54",
    price: 16.00,
    cost: 5.75,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Adult Red Football Tshirt",
    sku: "3361-PC54",
    price: 16.00,
    cost: 5.75,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Athlete White Nike Gameday Polo",
    sku: "642-402394",
    price: 40.00,
    cost: 34.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Mens Nike Football Polo",
    sku: "642-363807",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Womens Nike Football Polo",
    sku: "642-354067",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Middle School Athlete Gameday Polo",
    sku: "646-363807",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
# PE & Athletic Products
  {
    name: "Adult PE Longsleeve",
    sku: "589-3165",
    price: 20.00,
    cost: 13.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth PE Longsleeve",
    sku: "589-NB3165",
    price: 20.00,
    cost: 13.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "PE Sleeveless",
    sku: "589-N2295",
    price: 16.00,
    cost: 8.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Black Athletic Shorts",
    sku: "588-N5274",
    price: 17.00,
    cost: 10.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "PE Red Shorts 7 Inch",
    sku: "588-NB5301",
    price: 16.00,
    cost: 9.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "PE Red Shorts 9 Inch",
    sku: "588-NM5019",
    price: 16.00,
    cost: 9.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "PE Red Shorts 11 Inch",
    sku: "588-N5274",
    price: 17.00,
    cost: 10.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Adult PE Dri Fit",
    sku: "589-N3142",
    price: 16.00,
    cost: 9.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth PE Dri Fit",
    sku: "589-NB3142",
    price: 16.00,
    cost: 9.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Adult PE Cotton Tshirt",
    sku: "589-5000G",
    price: 13.00,
    cost: 5.50,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth PE Cotton Tshirt",
    sku: "589-5000B",
    price: 13.00,
    cost: 5.50,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Adult Girls Black Nike Shorts",
    sku: "238-P62",
    price: 21.00,
    cost: 15.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth Girls Black Nike Shorts",
    sku: "238-Yp62",
    price: 21.00,
    cost: 15.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
# Volleyball Products
  {
    name: "Custom Volleyball Decal",
    sku: "DCL-VOLLEY",
    price: 12.00,
    cost: 5.75,
    description:"none",
    is_customizable: true,
    active: true,
    featured: false
  },
  {
    name: "Charcoal Volleyball Dri Fit",
    sku: "3363-NW3232",
    price: 20.00,
    cost: 12.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Heather Red Volleyball TShirt",
    sku: "3364-BB401",
    price: 20.00,
    cost: 13.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Adult White Nike Volleyball Hoodie",
    sku: "3364-337291",
    price: 40.00,
    cost: 34.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth White Nike Volleyball Hoodie",
    sku: "3364-337361",
    price: 40.00,
    cost: 34.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Girls Volleyball Black Nike Gameday Polo",
    sku: "645-354067",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Girls Volleyball Red Nike Gameday Polo",
    sku: "645-354067",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Mens Red Nike Volleyball Polo",
    sku: "644-363807",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Womens Red Nike Volleyball Polo",
    sku: "644-354067",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Mizuno Volleyball Shorts",
    sku: "SPANDEX",
    price: 25.00,
    cost: 22.50,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
# Spirit Products
  {
    name: "Womens White V Neck Tshirt",
    sku: "2423-AA4032",
    price: 22.00,
    cost: 14.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Adult White Frocket",
    sku: "3356-G230",
    price: 16.00,
    cost: 8.50,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth White Frocket",
    sku: "3356-YPC54",
    price: 16.00,
    cost: 5.50,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Adult Red HP TShirt",
    sku: "3357-PC54",
    price: 16.00,
    cost: 5.75,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth Red HP TShirt",
    sku: "3357-YPC54",
    price: 16.00,
    cost: 5.75,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Adult HP ACL TShirt",
    sku: "3358-G640",
    price: 18.00,
    cost: 8.50,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth HP ACL TShirt",
    sku: "3358-5000B",
    price: 18.00,
    cost: 8.50,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Womens Heather Red HP TShirt",
    sku: "3359-b8413",
    price: 20.00,
    cost: 12.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "HP Adjustable Black Hat",
    sku: "646-203-BLCK",
    price: 20.00,
    cost: 10.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "HP Adjustable Red Hat",
    sku: "464-203-RED",
    price: 20.00,
    cost: 10.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Adult Red HP Hoodie",
    sku: "3357-1850",
    price: 31.00,
    cost: 18.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth Red HP Hoodie",
    sku: "3357-1850Y",
    price: 31.00,
    cost: 18.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Adult Gray HP Hoodie",
    sku: "3357-1850",
    price: 31.00,
    cost: 18.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth Gray HP Hoodie",
    sku: "3357-1850Y",
    price: 31.00,
    cost: 18.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Mens HP Red Nike Polo",
    sku: "646-363807",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Womens HP Red Nike Polo",
    sku: "646-354067",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Stadium Seat",
    sku: "WSC1",
    price: 50.00,
    cost: 42.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Spirit Blanket",
    sku: "BLANKET",
    price: 28.00,
    cost: 14.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Custom Duffle Bag",
    sku: "BG104",
    price: 32.00,
    cost: 19.00,
    description:"none",
    is_customizable: true,
    active: true,
    featured: false
  },
  {
    name: "Black Drawstring Bag",
    sku: "636-BG81",
    price: 18.00,
    cost: 10.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
# Soccer Products
  {
    name: "Black Soccer Crew Sweatshirt",
    sku: "3717-337292",
    price: 40.00,
    cost: 30.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Black Soccer Hoodie",
    sku: "HOODIE-3717-337292",
    price: 40.00,
    cost: 30.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Custom Soccer Decal",
    sku: "DCL-SOCCER",
    price: 12.00,
    cost: 5.75,
    description:"none",
    is_customizable: true,
    active: true,
    featured: false
  },
  {
    name: "Womens Charcoal Soccer Dri Fit",
    sku: "3716-N3232",
    price: 20.00,
    cost: 12.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Mens Charcoal Soccer Dri Fit",
    sku: "3716-N3230",
    price: 20.00,
    cost: 12.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Heather Gray Soccer Long Sleeve",
    sku: "3719-C6015",
    price: 25.00,
    cost: 15.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Heather Red Soccer Tshirt",
    sku: "3718-C1717",
    price: 17.00,
    cost: 10.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Mens Red Nike Soccer Polo",
    sku: "642-363807",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Womens Red Nike Soccer Polo",
    sku: "642-354067",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
# Basketball Products
  {
    name: "Mens Red Nike Basketball Polo",
    sku: "644-363807",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Womens Red Nike Basketball Polo",
    sku: "644-354067",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Custom Basketball Decal",
    sku: "DCL-BASKETBALL",
    price: 12.00,
    cost: 5.75,
    description:"none",
    is_customizable: true,
    active: true,
    featured: false
  },
  {
    name: "Charcoal Men's Basketball Cotton Feel Dri Fit",
    sku: "3804-N3230",
    price: 20.00,
    cost: 12.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Charcoal LadiesBasketball Cotton Feel Dri Fit",
    sku: "3804-N3232",
    price: 20.00,
    cost: 12.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Washed out Red Comfort Color Basketball Tee",
    sku: "3805-C1717",
    price: 17.00,
    cost: 10.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Youth size Gray Nike Basketball Hoodie",
    sku: "3805-337361",
    price: 40.00,
    cost: 34.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Adult Size Gray Nike Basketball Hoodie",
    sku: "3805-337291",
    price: 40.00,
    cost: 34.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Player Black Nike Basketball Game Day Polo",
    sku: "2813-363807",
    price: 40.00,
    cost: 29.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Nike Long Sleeve Black Dri Fit Shirt",
    sku: "3804-384408",
    price: 30.00,
    cost: 27.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  },
  {
    name: "Washed out red Comfort Color Long Sleeve Basketball T",
    sku: "3805-C6015",
    price: 25.00,
    cost: 15.00,
    description:"none",
    is_customizable: false,
    active: true,
    featured: false
  }
])
