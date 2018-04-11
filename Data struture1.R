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
#list can have different data typles stored 
list1 - list('dheeraj', )



#Factors----
name = c('s1','s2','s3','s4','s5')
course=c('PHD','MTECH','BTECH','BTECH','PHD') 
gender =c('M','F','M','F','M')
grades =c('A','B','C','A','F')
marks=c(runif(5,50,100))
df=data.frame(name,course,gender,grades,marks)
df
str(df)
df[1,]
df[,1]
df[1:2,]
df[,1:3]
df$name
df$name=as.character(df$name) #conversion of factor to character

str(df)
?factor
df$grades=factor(df$grades , ordered = T,levels  = c('A','B','C','D','E','F'))
df$grades
df$gender=factor(df$gender , ordered = T , levels = c('M','F'))
df$gender

#sample methods 

(L1=letters[1:26])
(L2=LETTERS[1:26])
(M1=month.abb[1:12])
(m2=month.name[1:12])
sample(L1,2)
sample(L1,30) #errow
sample(L1,30,replace=T)
sample(M1)
set.seed(10)#SAME OUTPUT AGN .SEED SHOULD BE SAME 
sample(M1,5)
set.seed(10)
sample(M1,5)
sample(M1,5)

(grades=LETTERS[1:5])
(sgrades= sample(grades , 1000 ,replace=T, prob=c(0.4,0.2,0.2,0.1,0.1)))
table(sgrades)
prop.table(table(sgrades))
LETTERS[1"5"]












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

(mymatrix = matrix(1:4, ncol=2))#syntac for matrix
  
m1 = matrix(1:24, ncol=6)
m1
mymatrix
?matrix
n2 = matrix(1:24, ncol=6, byrow=T) # frst rowns are filled 
n2
n2[,1] #only column
n2[1,] #only row 
n2[2:4,1:2] #box
rn=paste('R',1:4,sep = '_')
cn=paste('C',1:6,sep = '_')  
rn;cn
dimnames(n2)= list(rn,cn)
n2
n2['R_1',]
n2[1,]
n2[c(1,3),]
n2[c(1:3),]
n2[1:4,2:3]
dimnames(n2)= list(c(paste('R',1:4,sep = '_')),c(paste('C',1:6,sep = '_')))
rowsum(n2) # column sum
n2
(myarray=array(101:124 ,dim = c(4,3,2))) #3 dimension array  (row,col,no of matrices)
(myarray=array(101:124 ,dim = c(4,3,2) , dimnames = list(c('s1','s2','s3','s4'), c('sub1','sub2','sub3'),c('dept1','dept2'))))
apply(myarray,1,sum)
apply(myarray,2,sum)
apply(myarray,3,sum)
apply(myarray,1,mean)
apply(myarray,c(2,3),mean)
apply(myarray,c(1,3),mean)
apply(myarray,c(1,2),max)
apply(myarray,c(1,3),max)
marks = array(101:124 ,dim = c(3 ,4 , 2))
(g1 = paste('r',1:3))
(g2 = paste('c',1:4))
(g3=c('dept1','dept2'))
dimnames(marks)=list(g1,g2,g3)
marks
