# What is Big O? Why do we care?

Big O is the worst case scenario. We need to write algorithms that finish in a timely manner. Speed comes from how you write algorithms

# Things to Remember

Many factors affect the time  it takes for a function to run: speed of processor, what else the computer is running, etc. _Big-O notation is only concerned with the performan relative to input size

An algorithm may have steps that seems expensive when _n_ is small

Big-O notation describes an algorithms _worst_ case

Big-O talks about _orders_, not about specifics.

Memory is cheap and abundant. Time is more valuable than space.

# Asymptotes

An asymptote of a curse is a line such that the distance between the curve and the line approaches zero as the input size grows to infinity.

# Examples

1. Sort 100,000,000 people by social security number

2. Is the number 6,700,300 prime?

3. Search the entire internet for "cat pictures" and rank result by by relevance.

`12n^3 + 3n^2 + 10` becomes `O(n^3)`

`5*2^n + 3n!` becomes `O(n!)`

# Big-O hierarchy

1. Constant `(1)`
2. Logarithmic `(log n)`
3. Linear `(n)`
4. Linearithmic `(n log n)`
5. Polynomial / Quadratic `(n^2)`
6. Exponential `(2^n)`
7. Factorial `(n!)`

`word.chars` is an O(n)

`.each {}` is an O(n). A chain is always an O(n)

`|char| count[char]` is a O(1) as it puts into a hash

`first_thing(array) => array.first` is a O(1) constant

`three_hundred_thousant_puts(name)` is a O(1) constant

`print_arr(array)` is O(n) because it iterates over the input

`most_common_char(word)` is O(n) because it makes a hash, then the word.chars.

`def bsearch` is a (log n). Every time we recurse, we cut the input in half while disregarding the other side. Very dependent on if array is sorted.

`def merge_sort` is a 0(n log n). _Linearithmic_. Splitting an array in half is O(n). But if you only splitting it by changing pointers of reference, then it is 0(log n)

`def all_pair_sums(array)` is O(n^2) because when you have a nested operation, you multiply instead of adding.

`def largest_pair_sum(array)` is O(n^2) because we are iterating over n^2 length from the sums.

`def subsets(array)` is O(2^n). If the length of the array is 3, then 2^3 is 8 which is the length of the subsets. _Exponential_. Maintains ordering.

`def permutations` is an O(n!). Allows you to change ordering. ex. N! => 3! results 6 which is the length of the end result.

`bsearch` is the fastest because it slices as you go.

`.include?` has to search the ENTIRE array

`O(log(n))` is faster than `O(n)`

# Space Complexity

Refers to additional memory used(new data structures)

We can also use Big-O notation. Space is the form of RAM and it's relatively abundant.

# Where is matters

1. Interviews
2. Building large scalable applications
3. Building apps for limited hardware
4. Fixing bottlenecks in performance
5. 9 / 10 times, READABLE code is much more important than efficient code.
6. If you optimize 100% of your code, you're wasting 90% of your time.

_The enemy of the Junior Developer is optimization_
