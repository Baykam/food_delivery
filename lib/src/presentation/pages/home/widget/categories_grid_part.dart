part of '../home_page.dart';

class _CategoriesGridPart extends StatelessWidget {
  _CategoriesGridPart({super.key});

  final _categoriesCubit = i<CategoriesCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categories',
        ),
      ),
      body: BlocBuilder<CategoriesCubit, CategoriesState>(
          bloc: _categoriesCubit,
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
                        categoryName: categories[index].name.getText(Locale('tk',),),
                        categoryId: categories[index].id.id,
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
                        categories[index].name.getText(Locale('tk',),),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    child: Image.network(
                      categories[index].image.getOrigin(),
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
