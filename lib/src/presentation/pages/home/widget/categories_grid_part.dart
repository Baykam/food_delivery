part of '../home_page.dart';

class _CategoriesGridPart extends StatelessWidget {
  _CategoriesGridPart({super.key});

  final _categoriesCubit = i<CategoriesCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
        ),
      ),
      body: BlocConsumer<CategoriesCubit, CategoriesState>(
          bloc: _categoriesCubit,
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeWhen(
              success: (categories) => GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                padding: const EdgeInsets.all(
                  16,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    context.router.push(
                      MenuRoute(
                        categoryName: categories[index].name!['tk'].toString(),
                      ),
                    );
                  },
                  child: GridTile(
                    header: Container(
                      height: 32,
                      padding: const EdgeInsets.all(
                        8,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.black12,
                      ),
                      child: Text(
                        categories[index].name!['tk'].toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    child: Image.network(
                      categories[index].image!['original_url'].toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                itemCount: categories.length,
              ),
              orElse: () =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              failed: (message) => Text('Your Connection failed: $message'),
            );
          }),
    );
  }
}
