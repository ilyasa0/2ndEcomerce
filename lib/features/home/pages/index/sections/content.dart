part of '../page.dart';



class AllShoes extends StatelessWidget {
  const AllShoes({super.key});

  final List<Product> products = const [
     Product(
        image: 'assets/images/popular.png',
        category: 'hiking',
        title: 'TERREX URBAN LOW..',
        price: '\$143,98'),
    Product(
        image: 'assets/images/popular3.png',
        category: 'hiking',
        title: 'COURT VISION 2.0',
        price: '\$58,67'),
    Product(
        image: 'assets/images/popular2.png',
        category: 'Training',
        title: 'SL 72 SHOES',
        price: '\$115,19'),
  ];

  final List<Product> newArrivals = const [
    Product(
        image: 'assets/images/basketball.png',
        category: 'Basketball',
        title: 'Court Vision 2.0 Shoes',
        price: '\$143,98'),
    Product(
        image: 'assets/images/running.png',
        category: 'running',
        title: 'Ultra 4D 5 Shoes',
        price: '\$285,73'),
    Product(
        image: 'assets/images/training.png',
        category: 'Training',
        title: 'LEGO® SPORT SHOES',
        price: '\$92,72'),
    Product(
        image: 'assets/images/popular.png',
        category: 'hiking',
        title: 'TERREX URBAN LOW',
        price: '\$143,98'),
    Product(
        image: 'assets/images/popular3.png',
        category: 'hiking',
        title: 'COURT VISION 2.0',
        price: '\$58,67'),
    Product(
        image: 'assets/images/popular2.png',
        category: 'Training',
        title: 'SL 72 SHOES',
        price: '\$115,19'),
  ];



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Popular Product',
              style: TextStyle(
                  color: AppColor.whiteText,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              height: 270,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  final product = products[index];
                  return Container(
                    width: 215,
                    decoration: BoxDecoration(
                        color: AppColor.whiteText,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(product.image),
                        const SizedBox(
                          height: 30,
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 15),
                          child: Column(
                            children: [
                              Text(
                                product.category,
                                style: const TextStyle(
                                    color: AppColor.silverText,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                product.title,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.blackText,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                product.price,
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: AppColor.blueText,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 20,
                  );
                },
                itemCount: products.length,
              ),
            ),
          ]),


          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'New arrivals',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColor.whiteText),
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final product = newArrivals[index];
                  return Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(product.image,height: 100,width: 130,),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                       Expanded(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                             product.category,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColor.silverText,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              product.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: AppColor.whiteText),
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                             product.price,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: AppColor.blueText),
                            )
                          ],
                                               ),
                       ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 16,
                  );
                },
                itemCount: newArrivals.length,
              )
            ],
          )
        ],
      ),
    );
  }
}

class RunningShoes extends StatelessWidget {
  const RunningShoes({super.key});

  final List<Product> newArrivals = const [
    Product(
        image: 'assets/images/basketball.png',
        category: 'Basketball',
        title: 'Court Vision 2.0 Shoes',
        price: '\$143,98'),
    Product(
        image: 'assets/images/running.png',
        category: 'running',
        title: 'Ultra 4D 5 Shoes',
        price: '\$285,73'),
    Product(
        image: 'assets/images/training.png',
        category: 'Training',
        title: 'LEGO® SPORT SHOES',
        price: '\$92,72'),
    Product(
        image: 'assets/images/popular.png',
        category: 'hiking',
        title: 'TERREX URBAN LOW',
        price: '\$143,98'),
    Product(
        image: 'assets/images/popular3.png',
        category: 'hiking',
        title: 'COURT VISION 2.0',
        price: '\$58,67'),
    Product(
        image: 'assets/images/popular2.png',
        category: 'Training',
        title: 'SL 72 SHOES',
        price: '\$115,19'),
  ];

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text('For you',style: TextStyle(
              color: AppColor.whiteText,
              fontWeight: FontWeight.w600,
              fontSize: 20
          ),),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              final product = newArrivals[index];
              return Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(product.image,height: 100,width: 130,),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.category,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.silverText,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        product.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColor.whiteText),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        product.price,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: AppColor.blueText),
                      )
                    ],
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 16,
              );
            },
            itemCount: newArrivals.length,
          )
        ],
      ),
    );
  }
}

class TrainingShoes extends StatelessWidget {
  const TrainingShoes({super.key});
  final List<Product> newArrivals = const [
    Product(
        image: 'assets/images/basketball.png',
        category: 'Basketball',
        title: 'Court Vision 2.0 Shoes',
        price: '\$143,98'),
    Product(
        image: 'assets/images/running.png',
        category: 'running',
        title: 'Ultra 4D 5 Shoes',
        price: '\$285,73'),
    Product(
        image: 'assets/images/training.png',
        category: 'Training',
        title: 'LEGO® SPORT SHOES',
        price: '\$92,72'),
    Product(
        image: 'assets/images/popular.png',
        category: 'hiking',
        title: 'TERREX URBAN LOW',
        price: '\$143,98'),
    Product(
        image: 'assets/images/popular3.png',
        category: 'hiking',
        title: 'COURT VISION 2.0',
        price: '\$58,67'),
    Product(
        image: 'assets/images/popular2.png',
        category: 'Training',
        title: 'SL 72 SHOES',
        price: '\$115,19'),
  ];

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text('For you',style: TextStyle(
              color: AppColor.whiteText,
              fontWeight: FontWeight.w600,
              fontSize: 20
          ),),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              final product = newArrivals[index];
              return Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(product.image,height: 100,width: 130,),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.category,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.silverText,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        product.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColor.whiteText),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        product.price,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: AppColor.blueText),
                      )
                    ],
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 16,
              );
            },
            itemCount: newArrivals.length,
          )
        ],
      ),
    );
  }
}

class BasketballShoes extends StatelessWidget {
  const BasketballShoes({super.key});
  final List<Product> newArrivals = const [
    Product(
        image: 'assets/images/basketball.png',
        category: 'Basketball',
        title: 'Court Vision 2.0 Shoes',
        price: '\$143,98'),
    Product(
        image: 'assets/images/running.png',
        category: 'running',
        title: 'Ultra 4D 5 Shoes',
        price: '\$285,73'),
    Product(
        image: 'assets/images/training.png',
        category: 'Training',
        title: 'LEGO® SPORT SHOES',
        price: '\$92,72'),
    Product(
        image: 'assets/images/popular.png',
        category: 'hiking',
        title: 'TERREX URBAN LOW',
        price: '\$143,98'),
    Product(
        image: 'assets/images/popular3.png',
        category: 'hiking',
        title: 'COURT VISION 2.0',
        price: '\$58,67'),
    Product(
        image: 'assets/images/popular2.png',
        category: 'Training',
        title: 'SL 72 SHOES',
        price: '\$115,19'),
  ];

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text('For you',style: TextStyle(
              color: AppColor.whiteText,
              fontWeight: FontWeight.w600,
              fontSize: 20
          ),),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              final product = newArrivals[index];
              return Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(product.image,height: 100,width: 130,),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.category,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.silverText,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        product.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColor.whiteText),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        product.price,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: AppColor.blueText),
                      )
                    ],
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 16,
              );
            },
            itemCount: newArrivals.length,
          )
        ],
      ),
    );
  }
}

class HikingShoes extends StatelessWidget {
  const HikingShoes({super.key});
  final List<Product> newArrivals = const [
    Product(
        image: 'assets/images/basketball.png',
        category: 'Basketball',
        title: 'Court Vision 2.0 Shoes',
        price: '\$143,98'),
    Product(
        image: 'assets/images/running.png',
        category: 'running',
        title: 'Ultra 4D 5 Shoes',
        price: '\$285,73'),
    Product(
        image: 'assets/images/training.png',
        category: 'Training',
        title: 'LEGO® SPORT SHOES',
        price: '\$92,72'),
    Product(
        image: 'assets/images/popular.png',
        category: 'hiking',
        title: 'TERREX URBAN LOW',
        price: '\$143,98'),
    Product(
        image: 'assets/images/popular3.png',
        category: 'hiking',
        title: 'COURT VISION 2.0',
        price: '\$58,67'),
    Product(
        image: 'assets/images/popular2.png',
        category: 'Training',
        title: 'SL 72 SHOES',
        price: '\$115,19'),
  ];

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text('For you',style: TextStyle(
              color: AppColor.whiteText,
              fontWeight: FontWeight.w600,
              fontSize: 20
          ),),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              final product = newArrivals[index];
              return Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(product.image,height: 100,width: 130,),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.category,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.silverText,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        product.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColor.whiteText),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        product.price,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: AppColor.blueText),
                      )
                    ],
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 16,
              );
            },
            itemCount: newArrivals.length,
          )
        ],
      ),
    );
  }
}
