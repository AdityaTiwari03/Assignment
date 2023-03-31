# import sys
# l=[]
# n=35
# for i in range(n):
#     l.append(str(i))
#     a=sys.getsizeof(l)
#     print(f'LENGTH:  {i} SIZE: {a}' )

# from re import L


import pdb
import ctypes  
class DynamicArray:
    def __init__(self,l):
        self.n=0 #actual number of elements but not the length of array
        self.capacity=l # default array capacity
        self.A = self.make_array(self.capacity) #low level array
    def len (self):
        return self.n
    def getitem (self,k):
        if not 0<=k<self.n:
            return "Out of index"
        return self.A[k] #retrieve from array
    
    def append(self, b):
        if self.n == self.capacity: #not enough room
            self.resize(2*self.capacity) #so double capacity
        self.A[self.n] = b
        self.n+=1
    def pop(self):
        p=self.A[self.n-1]
        self.resize(self.n-1)
        return p
    
    def resize(self, c): #non republic capacity
        B = self.make_array(c)
        if c > self.n:
            for k in range(self.n):
                B[k]=self.A[k]
        else:
            for k in range(c):
                B[k] = self.A[k]
            self.n = c
        self.A = B
        self.capacity = c
    def make_array(self, p): #nonpublic utility
        return (p* ctypes.py_object)()
    def print_arr(self):
        for i in range(self.n):
            print(self.A[i])

pdb.set_trace()
p=DynamicArray(3)
p.print_arr()
p.append(1)
p.append(2)
p.append(3)
p.pop()
print(p.getitem(1))
print(p.getitem(4))
p.print_arr()
