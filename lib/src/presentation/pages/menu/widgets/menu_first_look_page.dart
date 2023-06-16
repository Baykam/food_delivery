part of '../menu.dart';

class MenuLookPage extends StatelessWidget {
  const MenuLookPage(
      {super.key,
      required this.id,
      required this.name,
      required this.price,
      required this.ingredients,
      required this.categoryName,
      required this.image});

  final int id;
  final String name;
  final int price;
  final String ingredients;
  final String categoryName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const OutlineInputBorder(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          categoryName,
          style: const TextStyle(fontSize: 28),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined)),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.48,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(12)),
            margin: const EdgeInsets.only(bottom: 5),
            child: CarouselSlider.builder(
              itemBuilder: (BuildContext context, int index, int realIndex) {
                final urlImage = image[index];
                return Image.network(
                  urlImage,
                  fit: BoxFit.cover,
                );
              },
              itemCount: image.length,
              options: CarouselOptions(
                  autoPlayAnimationDuration: const Duration(seconds: 1)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'name',
                      style: TextStyle(fontSize: 32),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'data',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
                Text('price as String', style: TextStyle(fontSize: 30)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(26),
            child: Text(
              ingredients,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      leading: TextButton(
                          onPressed: () {
                            context.read<CounterCubit>().decrement();
                          },
                          child:
                              const Icon(Icons.remove_circle_outline_outlined)),
                      title: Text(''),
                      trailing: TextButton(
                          onPressed: () {
                            context.read<CounterCubit>().increment();
                          },
                          child: const Icon(Icons.add_outlined)),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
