class MedianFinder {
  late List<int> l;
  MedianFinder() {
    l = [];
  }
  void addNum(int num) {
    if (l.length == 0)
      l.add(num);
    else {
      int i = 0;
      while (l[i] <= num && i < l.length - 1) i++;
      if (l[i] <= num)
        l.insert(i + 1, num);
      else
        l.insert(i, num);
    }
  }

  double findMedian() {
    int len = l.length;
    int mid = (len / 2).floor();
    if (len % 2 != 0) {
      return l[mid] / 1;
    }
    return (l[mid] + l[mid - 1]) / 2;
  }
}

/**
 * Your MedianFinder object will be instantiated and called as such:
 * MedianFinder obj = MedianFinder();
 * obj.addNum(num);
 * double param2 = obj.findMedian();
 */