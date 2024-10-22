# Task 4
# The length of five cylinders are 2.5, 3.4, 4.8, 3.1, 1.7 and their diameters are 0.7, 0.4, 0.5, 0.5, 0.9.

# Read these vectors into two vectors with appropriate names.
cylinderLength <- c(2.5, 3.4, 4.8, 3.1, 1.7)
cylinderDiameter <- c(0.7, 0.4, 0.5, 0.5, 0.9)

# Calculate the volumes of each cylinder and store it in a new vector.
cylinderVolumes <- pi * ((cylinderDiameter/2)^2) * cylinderLength

# Assume the values are given in centimeter. Recalculate the volumes so that their units are cubic millimeter.
