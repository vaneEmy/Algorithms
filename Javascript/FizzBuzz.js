/*
Write a program that print all the numbers from 1 to 100 with two exceptions. For numbers divisible by 3, print "Fizz" instead of the number, and for number divisible by 5 (and not 3), print "Buzz" instead.

When you have that working, modify your program to print "FizzBuzz" for numbers that are divisible by both 3 and 5.

 * */

for(var number = 1; number <= 100; number++){
  if(((number % 3) == 0) && ((number % 5) == 0))
    console.log("FizzBuzz");
  else if((number % 3) == 0)
    console.log("Fizz");
  else if((number % 5) == 0)
    console.log("Buzz");
  else
    console.log(number);
}
