plusOne [1, 2, 3] = [2, 3, 4]

plusOne [1, 2, 3]
= 1+1 : plusOne [2, 3]
= 2 : 2+1 : plusOne [3]
= 2 : 3 : 3+1 : plusOne []
= 2 : 3 : 4 : []
= [2, 3, 4]