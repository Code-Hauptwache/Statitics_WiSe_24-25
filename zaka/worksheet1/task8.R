# Task 8
# (a) Create a list containing the string “John”, the string “Mary” and the vector (4,6,10). The list describes a family with names of father, mother and the ages of the children.
family <- list('Jhon', 'Mary', childrenAge = c(4, 6, 10))

# (b) Create a second list containing the names Bob, Cate and Susan of the children.
children <- list('Bob', 'Cate', 'Susan')

# (c) Concatenate the lists. Use the c() and the list() function. What are the differences?
holeFamilyVector <- c(family, children)
holeFamilyList <- list(family = family, children = children)
# c(): Merges the elements of all input lists into a single, flat structure.
# list(): Keeps the input lists as separate sublists inside a larger, nested list.

# (d) Access the concatenated list to create directly a list containing for every child name and age
ChildrenInfo <- mapply(paste, holeFamilyList[['children']], holeFamilyList[['family']][['childrenAge']], MoreArgs = list(sep = " - "))

