class MyQueue {
  List<int> arr = [];
  MyQueue() {
    arr = [];
  }

  void push(int x) {
    arr.add(x);
  }

  int pop() {
    return arr.removeAt(0);
  }

  int peek() {
    return arr[0];
  }

  bool empty() {
    for (int i = 0; i < arr.length; i++) if (arr[i] != []) return false;
    return true;
  }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue obj = MyQueue();
 * obj.push(x);
 * int param2 = obj.pop();
 * int param3 = obj.peek();
 * bool param4 = obj.empty();
 */