class MyStack {
  List<int> arr = [];
  MyStack() {
    arr = [];
  }

  void push(int x) {
    arr.add(x);
  }

  int pop() {
    return arr.removeAt(arr.length - 1);
  }

  int top() {
    return arr[arr.length - 1];
  }

  bool empty() {
    // bool f=true;
    for (int i = 0; i < arr.length; i++) if (arr[i] != []) return false;
    return true;
  }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * MyStack obj = MyStack();
 * obj.push(x);
 * int param2 = obj.pop();
 * int param3 = obj.top();
 * bool param4 = obj.empty();
 */