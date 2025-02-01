function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

//This code will cause a stack overflow error if the input value of x is too large.
//This is because the function calls itself recursively until it reaches the base case (x==0).
//If x is too large then the function may call itself more times than the stack can handle.