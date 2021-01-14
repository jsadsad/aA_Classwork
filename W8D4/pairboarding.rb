C:
R: ROADMAP
E: EXECUTE CODE
P:
E: EFFICIENCY

Given two non-empty binary trees s and t, check whether tree t has exactly the same structure and node values with a subtree of s. A subtree of s is a tree consists of a node in s and all of this node's descendants. The tree s could also be considered as a subtree of itself.
Example 1:Given tree s:
     3
    / \
   4   5
  / \
 1   2
Given tree t:
     3
    / \
   4   5
  / \
 1   2
Return true, because t has the same structure and node values with a subtree of s.
We want to check the value of the parent node in both trees to make sure they’re equivalent
Then we have to get the children of the parent node and add them to our queue, and keep checking their values and adding the children to the queue until either all the nodes have been checked or one of the nodes is not equivalent in either tree

def eqTree?(tree1, tree2)
	queue1 = [tree1]
	queue2 = [tree2]

	while !queue1.empty? && !queue2.empty?
		return false if queue1[0].val != queue2[0].val
		queue1 << queue1[0].children
queue2 << queue2[0].children
queue1.shift
queue2.shift

	end

	true
end



----------------------------------------------------------------------------------------

Given a sequence of words, check whether it forms a valid word square.
A sequence of words forms a valid word square if the kth row and column read the exact same string, where 0 ≤ k < max(numRows, numColumns).

Note:
The number of words given is at least 1 and does not exceed 500.
Word length will be at least 1 and does not exceed 500.
Each word contains only lowercase English alphabet a-z.
Example 1:
Input:
[
  "abcd",
  "bnrt",
  "crmy",
  "dtye"
]
Output:
True

Explanation:
The first row and first column both read "abcd".
The second row and second column both read "bnrt".
The third row and third column both read "crmy".
The fourth row and fourth column both read "dtye".
Therefore, it is a valid word square.

Base case: if array is empty, return false
Iterate twice looking at each char
We would need to compare. I = a, j=a => i =b , j =
word[i][j] != word[j][i]

Def word_square(array)
	Return false if array.empty?
	array.each_with_index  do |subarr, idx1|
		Subarr.each_with_index do |char, idx2|

end
	true
end
