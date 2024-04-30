int convertBytesToMegabytes(int bytes) {
  // Convert bytes to megabytes and round to the nearest integer
  return (bytes / (1024 * 1024)).round();
}
