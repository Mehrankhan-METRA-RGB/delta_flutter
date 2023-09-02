extension Unique<E, Id> on List<E> {
  ///Will return a unique (Type or Model) data  from a list
  List<E> unique([Id Function(E element)? id, bool inPlace = true]) {
    final ids = <E>{};
    var list = inPlace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add((id != null ? id(x) : x as Id) as E));
    return list;
  }
}
