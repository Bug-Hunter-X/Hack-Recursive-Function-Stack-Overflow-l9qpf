function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x > 10) {
    return -1; // Or throw an exception
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(15);
}

//This solution prevents stack overflow errors by adding a check for the maximum recursion depth. It returns -1 or throws an exception if the recursion depth exceeds 10 (or your preferred limit).
//This approach limits the recursion to avoid stack overflow, even though it means larger values will not produce a correct factorial.