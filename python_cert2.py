"""i = 1
while i < 5:
    print(i)
    i += 1
else:
    print("else:", i)

for i in range(5):
    print(i)
else:
    print("else:", i)



number=int(input("Write a number: "))
steps=0

while number !=1:
     if number %2==0:
         number=number//2
         steps+=1
         print(number)
     else:
         number=3*number+1
         steps+=1
         print(number)
print("Number of steps= ", steps)
"""

for i in range(1, 7, -2):
    print(i, end=" ")  # Outputs: 6, 4, 2

text = "OpenEDG Python Institute"
for letter in text:
    if letter == "P":
        break
    print(letter, end="")

i = 1
j = not not i
print(j, i)

x=16
y=bin(x)
print(y)

x = 4
y = 1

a = x & y# False
b = x | y #True
c = ~x  # tricky! 
d = x ^ 5
e = x >> 2
f = x << 2

print(a, b, c, d, e, f)

nb_of_el=int(input("Write a number of elements of list :"))
list=[]
for i in range(nb_of_el):
    el=int(input("Write elemnt of list: "))
    list.append(el)
    
print("Your list: ", list)

answear=int(input("Would you like to remove element or change? \nPress 1 to remove \nPress 2 to change \nPress 0 to exit: "))


if answear==0:
    print("Bye")
    exit()
elif answear==1:
    index_to_remove=int(input("Write value object to remove :"))
    for x in list:
        if x==el_to_remove:
           print("Do you want to remove object ",x, "from the list?")   
           q2=input("Press Y or N: ")
               if q2=='Y':
                 del list[el_to_remove]
                 print("Your new list:", list)
               else:
                 print("You didn't answear!")
else:
    el_to_change=int(input("Wite element to change: "))
    change=int(input("Write value of new element: "))
    list[el_to_change]=change
    print(list)


    

    

"""
input_string = input('Enter elements of a list separated by space ')
print("\n")
user_list = input_string.split()
# print list
print('list: ', user_list)

# convert each item to int type
for i in range(len(user_list)):
    # convert each item to int type
    user_list[i] = int(user_list[i])

# Calculating the sum of list elements
print("Sum = ", sum(user_list))
"""

list=[1,2,3]
y=3
for x in list:
    if x==y:
        print("You have this item on the list")

