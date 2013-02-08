# Name:
# Problem Set-2
# Due February 8, 2013 (Friday)
#
# Welcome to MBS! These assignments are designed to ensure you have a good 
# grasp on the foundations of programming. Most of the concepts you will be
# introduced to here are not unique to R although the syntax may differ 
# between R and other languages such as C or Java. If you have any questions
# please come talk to me (Noah) or Pat.

# On the due date you should drop a copy of your code in the dropbox at
# My Courses with the file title being "Your Name - HW1". For example "Noah Dukler - HW1". 
# Please also hand me a printed copy of your code that day in class.


# Problem 1a [1 pt]-Below I have 2 vectors that contains some numerical values representing measured wind speeds.
# I would like you to combine the dat and x vectors into a new vector called answer
x=rep(c(seq(1,10,by=2),-999),times=2)
dat=rep(c(seq(2,10,by=2),-999),times=2)
#Place code below:

answer=x+dat

		answer # DO NOT TOUCH!!

# Problem 1b [1 pt]-Now that you have made this numerical vector, you may realize there are some unrealistic wind speeds
# (ie -999). I would like you to remove these values from the answer vector using the square brackets "[]"
#Place code below:
answer=answer[-6]
answer=answer[-11]


answer # DO NOT TOUCH  


# Problem 2a [1 pt]-For this question, I would like you to make a matrix with 2 rows called "mat" with this set of data:
seq1=seq(1,5)
seq2=seq(6,10)
# I would like the seq1 to be in first row of the matrix and seq2 to be in the second row of the matrix
# Place code below:
mat=matrix(c(seq1,seq2),2,byrow=T)

mat # DO NOT TOUCH

# Problem 2b [1 pt]-Now for some practice with data frames. I would like you to create a data frame with 2 columns
# and have it be called my.datframe. Please place the odd numbers from one to ten in one column and the 
# even numbers from one to ten in the second column. In addition one useful feature of data frame is that you can give columns
# of a dataframe specific names. So, I would also like you to change the column names of the data frame to odd for the
# column containing odd numbers and even for the column containing the even numbers (hint: look at names in the R help) 
# Place code below:
kendodds=seq(1,10,by=2)
kirkstevens=seq(2,10,by=2)
my.datframe=data.frame(odds=kendodds,evens=kirkstevens)
my.datframe # DO NOT TOUCH

# Problem 3 [2 pts]-For this question we will talk about functions. You can write your own functions in R.
# A general format for functions is below:
# function.name=function(variable) variable in this case can be represented by any value or function
# {
#   contents of function using variable
# }
# So for this problem we want you to write a function to determine the mean of any string of numbers
# Place code here:
my.mean= function(string){
	total=sum(string)
	length=length(string)
	return(total/length)
}

# DO NOT TOUCH THIS. It is used for grading.
my.mean(1:10) # 5.5
my.mean(1:5) # 3
my.mean(6:10) # 8

# Problem 4 [2 pts]-So we got some of the basics of functions down. Now we would like you to make an exponent function without using the ^ function. Your
# function must work for both positive and negative exponents. 
# Below is an example of an exponent function but it only works for positive numbers
exponent = function(a,b) # I have defined a function that takes two inputs "a" and "b"
{
	output = 1
	i = 0
	while(i<b)
	{
		output = a * output
		i= i+1
	}
	return(output)
}
# Please place your code below for the improved function:
exponent = function(base,exponent)
{
	i=1
	ans=1
	if(exponent>0){
	for(i in 1:(exponent)){
	ans=ans*base
		}
	}
	if(exponent<0){
		for(i in -1:(exponent)){
			ans=ans/base
		}		
	}
	return(ans)
}



# DO NOT TOUCH THIS. It is used for grading.
print(exponent(2,-3)) # Answer 1/8
print(exponent(5,-4)) # Answer 1/625
print(exponent(3,0))  # Answer 1

# Problem 5 [2 pts]- I want you to make a function using a for loop that can return the triangular number sequence. Please call the function
# TriangleDraw. The for loop should be able to show all the numbers for a set number of rows in a triangle. Also please have the set of numbers
# print to the console. Hint: Information on the triangular number sequence can be found at:
# http://en.wikipedia.org/wiki/Triangular_number
# Place the code below:

TriangleDraw=function(n){
	if(n==0){
		print(0)	
	}else{
		i=1
		for(i in i:n){
			print((i*(i+1))/2)
			i=i+1
		}
	}
	
}
TriangleDraw(1)
#DO NOT TOUCH.This used for grading
TriangleDraw(3) # 1 3 6
TriangleDraw(5) # 1 3 6 10 15
TriangleDraw(10) # 1 3 6 10 15 21 28 36 45 55





#  [1]     3     7    11    15    19 -1998     3     7    11    15    19 -1998
#  [1]     3     7    11    15    19 -1998     3     7    11    15    19 -1998
#  [1]     3     7    11    15    19 -1998     3     7    11    15    19 -1998
# Error: object 'mat' not found
# Error: object 'my.datframe' not found
# Error: could not find function "my.mean"
# Error: could not find function "my.mean"
# Error: could not find function "my.mean"
# [1] 1
# [1] 1
# [1] 1
# Error: could not find function "TriangleDraw"
# Error: could not find function "TriangleDraw"
# Error: could not find function "TriangleDraw"

