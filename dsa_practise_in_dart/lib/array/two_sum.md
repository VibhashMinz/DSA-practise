Visual Trace: Two Sum O(n) Solution
Inputs:

numbers (List): [4, 7, 2, 11]

target (int): 9

seen (Map): {} (Empty initially)

Index (i)	Current Number (numbers[i])	Constraint Calculation	seen.containsKey(constrain)?	Action	seen Map After Iteration	Output
0	4	constrain = 9−4=5	No. (Map is empty)	Add 4 and its index 0 to the map.	{4: 0}	
1	7	constrain = 9−7=2	No. (Map only contains 4)	Add 7 and its index 1 to the map.	{4: 0, 7: 1}	
2	2	constrain = 9−2=7	Yes!	The required number 7 is found in seen.		[1, 2]
3	11	(Skipped)	(Skipped)	(Skipped)	(Skipped)	

Export to Sheets
Line-by-Line Explanation
Code Line	Current State / Value	Explanation of Logic
Map<int, int> seen = {};	seen: {}	Initialize the map. This is our memory. Key is the number, Value is its index.
for (var i = 0; i < numbers.length; i++) {	i starts at 0.	We begin iterating through the list.
Iteration 1: i = 0 (Number is 4)		
int constrain = target - numbers[i];	constrain: 5	Calculate the number we need to find the solution: 9−4=5.
if (seen.containsKey(constrain)) {	Checks for 5. False.	We haven't seen 5 yet, so we continue.
seen[numbers[i]] = i;	seen[4] = 0	Store the current number (4) and its index (0) into our memory for future checks.
Iteration 2: i = 1 (Number is 7)		
int constrain = target - numbers[i];	constrain: 2	Calculate the number we need: 9−7=2.
if (seen.containsKey(constrain)) {	Checks for 2. False.	We haven't seen 2 yet, so we continue.
seen[numbers[i]] = i;	seen[7] = 1	Store the current number (7) and its index (1) into our memory.
Iteration 3: i = 2 (Number is 2)		
int constrain = target - numbers[i];	constrain: 7	Calculate the number we need: 9−2=7.
if (seen.containsKey(constrain)) {	Checks for 7. True!	We found the match! 7 is in the map.
return [seen[constrain]!, i];	seen[7] is 1. i is 2.	Return the index of 7 (which is 1) and the current index (2). O(1) lookup is the key here.
Function returns	[1, 2]	The loop immediately terminates.

Export to Sheets
The key takeaway is that the Hash Map acts as a quick look-up table (O(1)) of all numbers seen so far, allowing you to solve a problem that would normally require checking every pair (O(n²)) in a single pass (O(n)).