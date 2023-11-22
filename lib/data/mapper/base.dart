abstract class BaseMapper<E, M> {
  E toEntity(M m);
  M toModel(E e);
}
