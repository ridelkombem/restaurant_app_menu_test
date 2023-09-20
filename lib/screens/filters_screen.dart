import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/filters_provider.dart';
import '../widgets/build_filter_switch_tile.dart';

class FilterScreen extends ConsumerWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                'Adjust your meal selection.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              BuildSwitchTile(
                  title: 'Gluten-free',
                  subtitle: 'Only include gluten-free meals.',
                  currentValue: activeFilters[Filter.gluttenFree]!,
                  updateValue: (isChecked) {
                    ref
                        .read(filtersProvider.notifier)
                        .setFilter(Filter.gluttenFree, isChecked);
                  }),
              BuildSwitchTile(
                title: 'Lactose-free',
                subtitle: 'Only include lactose-free meals.',
                currentValue: activeFilters[Filter.lactoseFree]!,
                updateValue: (isChecked) {
                  ref
                      .read(filtersProvider.notifier)
                      .setFilter(Filter.lactoseFree, isChecked);
                },
              ),
              BuildSwitchTile(
                title: 'Vegan',
                subtitle: 'Only include vegan meals.',
                currentValue: activeFilters[Filter.vegan]!,
                updateValue: (isChecked) {
                  ref
                      .read(filtersProvider.notifier)
                      .setFilter(Filter.vegan, isChecked);
                },
              ),
              BuildSwitchTile(
                title: 'Vegetarian',
                subtitle: 'Only include Vegetarian meals.',
                currentValue: activeFilters[Filter.vegetarian]!,
                updateValue: (isChecked) {
                  ref
                      .read(filtersProvider.notifier)
                      .setFilter(Filter.vegetarian, isChecked);
                },
              )
            ],
          ))
        ],
      ),
    );
  }
}


