extension SafeListAccess<T> on List<T> {
  T safeElementAt(int index, T defaultValue) {
    return index < length ? this[index] : defaultValue;
  }
}
