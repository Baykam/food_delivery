part of '../menu_page.dart';

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
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            shape: OutlineInputBorder(),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              categoryName,
              style: TextStyle(fontSize: 28),
            ),
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_new_outlined)),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border_outlined)),
            ],
          ),
          body: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(12)),
                margin: EdgeInsets.only(bottom: 5),
                child: CarouselSlider.builder(
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
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
              Padding(
                padding: const EdgeInsets.all(26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          name.toString(),
                          style: const TextStyle(fontSize: 32),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          'data',
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                    Text(price.toString(),
                        style: const TextStyle(fontSize: 30)),
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
                          leading:
                              BlocSelector<CounterCubit, CounterState, bool>(
                            selector: (state) {
                              return state.count <= 0;
                            },
                            builder: (context, isDisabled) {
                              return IconButton(
                                onPressed: () {
                                  if (isDisabled) return;
                                  context.read<CounterCubit>().decrement(id);
                                },
                                icon: const Icon(
                                    Icons.remove_circle_outline_outlined),
                                color: isDisabled
                                    ? Colors.grey
                                    : Colors.lightGreenAccent,
                                splashColor:
                                    isDisabled ? Colors.grey : Colors.amber,
                              );
                            },
                          ),
                          title: Text(state.toString()),
                          trailing: TextButton.icon(
                            onPressed: () {
                              context.read<CounterCubit>().increment(id);
                            },
                            icon: const Icon(Icons.add_outlined),
                            label: Text(''),
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        );
      },
    );
  }
}
