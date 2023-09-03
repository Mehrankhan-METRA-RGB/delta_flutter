extension Unique<E, Id> on List<E> {
  ///Will return a unique (Type) data  from a list
  List<E> unique([Id Function(E element)? id, bool inPlace = true]) {
    final ids = <E>{};
    var list = inPlace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add((id != null ? id(x) : x as Id) as E));
    return list;
  }

  ///Filtering and Mapping: While Flutter provides various ways to filter and map lists, custom extensions can be created to simplify these operations based on specific criteria.
  List<E> filter(bool Function(E) test) {
    return where(test).toList();
  }

  List<R> mapIndexed<R>(R Function(int index, E item) f) {
    final List<R> result = [];
    for (int i = 0; i < length; i++) {
      result.add(f(i, this[i]));
    }
    return result;
  }

  ///Sorting: Flutter provides basic sorting functions, but custom extensions can be created to enable more complex sorting based on specific object properties.
  List<E> customSort(int Function(E a, E b) compare) {
    final List<E> copy = [...this];
    copy.sort(compare);
    return copy;
  }

  ///Pagination: If you're working with paginated data, you can create custom extensions to handle pagination-related operations.
  List<E> paginate(int page, int itemsPerPage) {
    final startIndex = (page - 1) * itemsPerPage;
    final endIndex = startIndex + itemsPerPage;
    if (startIndex >= length) return [];
    return sublist(startIndex, endIndex.clamp(0, length));
  }

  ///Flutter doesn't have built-in extensions for grouping items in a list, but you can use this extension to achieve your goals

  Map<K, List<E>> groupBy<K>(K Function(E item) keyFunction) {
    final Map<K, List<E>> result = {};
    for (final item in this) {
      final key = keyFunction(item);
      result.putIfAbsent(key, () => []).add(item);
    }
    return result;
  }
}
