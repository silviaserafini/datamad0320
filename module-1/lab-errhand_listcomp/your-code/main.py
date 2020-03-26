#Example: 

eggs = (1,3,8,3,2)

my_listComprehension = [1/egg for egg in eggs]

print(my_listComprehension)

#Insert here the module/library import statements 

import math
import os
import random
import sys

#1. Calculate the square number of the first 20 numbers. Use square as the name of the list.
# Remember to use list comprehensions and to print your results

square=[n**2 for n in range(21) ]
#print(square)



#2. Calculate the first 50 power of two. Use power_of_two as the name of the list.
# Remember to use list comprehensions and to print your results

power_of_two=[2**i for i in range(51)]
#print(power_of_two)


#3. Calculate the square root of the first 100 numbers. Use sqrt as the name of the list.
# You will probably need to install math library with pip and import it in this file.  
# Remember to use list comprehensions and to print your results

sqrt =[math.sqrt(n) for n in range(101)]
#print(sqrt)


#4. Create this list [-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0]. Use my_list as the name of the list.
# Remember to use list comprehensions and to print your results

my_list = [n for n in range(-10,1)]
#print(my_list)

#5. Find the odd numbers from 1-100. Use odds as the name of the list. 
# Remember to use list comprehensions and to print your results

odds =[n  for n in range(101) if n%2==1]
#print(odds)

#6. Find all of the numbers from 1-1000 that are divisible by 7. Use divisible_by_seven as the name of the list.
# Remember to use list comprehensions and to print your results

divisible_by_seven=[n for n in range(1,1001) if n%7==0]
#print(divisible_by_seven)



#7. Remove all of the vowels in a string. Hint: make a list of the non-vowels. Use non_vowels as the name of the list.
# Remember to use list comprehensions and to print your results
# You can use the following test string but feel free to modify at your convenience

teststring = 'Find all of the words in a string that are monosyllabic'

non_vowels= [l for l in teststring if l not in ' aeiou'] #list of non vowels

def convert(s):  
    new = "" 
    for x in s: 
        new += x  
    return new 

non_vowels_string=convert(non_vowels) #string of non vowels
#print(non_vowels_string)
#print(non_vowels)


#8. Find the capital letters (and not white space) in the sentence 'The Quick Brown Fox Jumped Over The Lazy Dog'. 
# Use capital_letters as the name of the list.  
# Remember to use list comprehensions and to print your results

sentence='The Quick Brown Fox Jumped Over The Lazy Dog'
capital_letters =[l for l in sentence if l.isupper() ]
#print(capital_letters)


#9. Find all the consonants in the sentence 'The quick brown fox jumped over the lazy dog'.
# Use consonants as the name of the list.
# Remember to use list comprehensions and to print your results.

sentence= 'The quick brown fox jumped over the lazy dog'

consonants=[l for l in sentence if l not in 'aeiou ']

#print(consonants)


#10. Find the folders you have in your madrid-oct-2018 local repo. Use files as name of the list.  
# You will probably need to import os library and some of its modules. You will need to make some online research.
# Remember to use list comprehensions and to print your results.


files=[x[1] for x in os.walk('/Users/silviaserafini/datamad0320')]
#print(files)


#11. Create 4 lists of 10 random numbers between 0 and 100 each. Use random_lists as the name of the list. 
#You will probably need to import random module
# Remember to use list comprehensions and to print your results

random_lists=[[random.randint(0,100) for x in range(10)] for n in range(4)]
#print(random_lists)




#12. Flatten the following list of lists. Use flatten_list as the name of the output.
# Remember to use list comprehensions and to print your results

list_of_lists = [[1,2,3],[4,5,6],[7,8,9]]



flatten_list =[ e for sublist in list_of_lists  for e in sublist ]

#print(flatten_list)

#13. Convert the numbers of the following nested list to floats. Use floats as the name of the list. 
# Remember to use list comprehensions and to print your results.

list_of_lists = [['40', '20', '10', '30'], ['20', '20', '20', '20', '20', '30', '20'], \
['30', '20', '30', '50', '10', '30', '20', '20', '20'], ['100', '100'], ['100', '100', '100', '100', '100'], \
['100', '100', '100', '100']]

floats=[float(e) for sublist in list_of_lists for e in sublist ]
#print(floats)
'''
#14. Handle the exception thrown by the code below by using try and except blocks. 


for i in ['a','b','c']:
    try:
        print(i**2)
    except Exception as e:
        print('no se puede')


#15. Handle the exception thrown by the code below by using try and except blocks. 
#Then use a finally block to print 'All Done.'
# Check in provided resources the type of error you may use. 


x = 5
y = 0

try:
    z = x/y
except ZeroDivisionError:
    print('no se puede')
finally:
    print('All Done')



#16. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 

abc=[10,20,20]
try:
    print(abc[3])
except IndexError:
    print('error: index numbers run from 0 to 2')





#17. Handle at least two kind of different exceptions when dividing a couple of numbers provided by the user. 
# Hint: take a look on python input function. 
# Check in provided resources the type of error you may use. 

inputs=[]

while len(inputs)<2:
    inputs.append(input("inser a number"))
try:

    a=int(inputs[0])
    b=int(inputs[1])

    result=a/b
    print(result)
except ZeroDivisionError:
    print('ZeroDivisionError')
except ValueError:
    print('ValueError')
    



#18. Handle the exception thrown by the code below by using try and except blocks. 
# Check in provided resources the type of error you may use. 


try:
    f = open('testfile','r')
    f.write('Test write this')
except  FileNotFoundError:
    print('Wrong file or file path')
except  IOError:
    print("you can't write in here")






#19. Handle the exceptions that can be thrown by the code below using try and except blocks. 
#Hint: the file could not exist and the data could not be convertable to int

try:
    fp = open('myfile.txt')
    line = f.readline()
    i = int(s.strip())
except  FileNotFoundError:
    print('Wrong file or file path')
except  TypeError:
    print('can\'t convert char in int')
except  EOFError:
    print('end of file condition without reading any data')


#20. The following function can only run on a Linux system. 
# The assert in this function will throw an exception if you call it on an operating system other than Linux. 
# Handle this exception using try and except blocks. 
# You will probably need to import sys 

def linux_interaction():
    try:
        assert ('linux' in sys.platform), "Function can only run on Linux systems."
        print('Doing something.')
    except AssertionError:
        print('sorry, it works for Linux only')




# Bonus Questions:

# You will need to make some research on dictionary comprehension to solve the following questions

#21.  Write a function that asks for an integer and prints the square of it. 
# Hint: we need to continually keep checking until we get an integer.
# Use a while loop with a try,except, else block to account for incorrect inputs.

def square():
    n=0
    while True:
        try:
            
            n = int(input("Please insert an integer number: "))
        except ValueError:
            print("Sorry, I didn't understand that.")
            
            continue
        else:
            #number was successfully passed
            #we're ready to exit the loop.
            
            break
    return n**2

print(square())



# 22. Find all of the numbers from 1-1000 that are divisible by any single digit besides 1 (2-9). 
# Use results as the name of the list 
numbers_to_test= range(1,1001)
single_digits=range(2,10)
resto=0

results=[]

for i in numbers_to_test:
    resto=0
    for j in single_digits:
        resto=i%j
        if resto==0:
            results.append(i)
            break
    
print(results)
'''
# 23. Define a customised exception to handle not accepted values. 
# You have the following user inputs and the Num_of_sections can not be less than 2.
# Hint: Create a class derived from the pre-defined Exception class in Python

# class LassThan2 is derived from super class Exception 
class LassThan2Error(Exception):
    def __init__(self, *args):
        if args:
            self.message = args[0]
        else:
            self.message = None

    def __str__(self):
        print('calling str')
        if self.message:
            return 'LassThan2Error, {0} '.format(self.message)
        else:
            return 'LassThan2Error has been raised'


  

try:
    Total_Marks = int(input("Enter Total Marks Scored: ")) 
    Num_of_Sections = int(input("Enter Num of Sections: "))
    if Num_of_Sections<2:
        raise LassThan2Error('problem')
except LassThan2Error:  
    print('Num_of_sections can not be less than 2')    
except Exception:
    print('other exception accurred')

