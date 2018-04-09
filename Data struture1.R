#Data structures in R

#vectors----
v1=c('A' ,'B','C')  #create vector
v1 #print the vector

class(v1) #print the class of vector
(v2=c(1,2,3)) #assigning and printing 
class(v2)
v3=c('A' ,'B', 'C')
v3
class(v3)
(v4=c(TRUE, FALSE, TRUE))
class(v4)
(v4a <- c(T,F,T))#<- EQUAL TO 


v5 = 100:200 # prints number from 100 to 200
v5
(v6 =seq(1,10,2)) #print a sequence with diff 2 
(v5[c(1,3,4)]) # prints 1st 3 and 4 th number 
(v5[-c(1,3,4)]) # prints all numbers except 1st 3 and 4 th number
(v5[v5>150]) #all numbers greater that 150
v7=c('A','C')
v1[v1 %in% v7] #nested checks if v1 is there in v7
v1
v1[!v1 %in% v7] #whatever values are not there in v7 
v1
length(v5) #no of elements 
v10 =c('a','c')
v11=c('a')
v10[v10 %in% v11]
v10[!v10 %in% v11]









#Matrix----











#Arrays----






#List----



#Factors----


#DataFrame----

rollno=c(1,2,3)
name=c('rohit' , 'Lalit','Hitesh')
course=c('MBA','MBA','MBA')
DEPT=c('dept1','dept2','dept3')
marks=floor(rnorm(3,50,10)) #marks of 3 students normally 
?rnorm #question what rnorm is 
rnorm(3,50,10) # n=3 , mean =50 sd=10 
?floor # 4 types of rounding 
?ceiling
?truncate
?round
students=data.frame(rollno,name,marks,DEPT,course)
students
class(students)
str(students)
summary(students)
?str
# runif = uniform distributiom
trunc(-23.9)
ceiling(-23.9)
floor(-23.9)
round(-23.432)
