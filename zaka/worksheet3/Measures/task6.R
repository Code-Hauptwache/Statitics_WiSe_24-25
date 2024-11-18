#Task 6
# Define the data
hike.distance <- c(12.5, 29.9, 14.8, 18.7, 7.6, 16.2, 16.5, 27.4, 12.1, 17.5)
hike.altitude <- c(342, 1245, 502, 555, 398, 670, 796, 912, 238, 466)

# Calculate Interquartile Range (IQR) and Standard Deviation (SD)
iqr_distance <- IQR(hike.distance)
iqr_altitude <- IQR(hike.altitude)

sd_distance <- sd(hike.distance)
sd_altitude <- sd(hike.altitude)

# Display the results
cat("Results:\n")
cat("Interquartile Range (Distance):", iqr_distance, "\n")
cat("Interquartile Range (Altitude):", iqr_altitude, "\n")
cat("Standard Deviation (Distance):", sd_distance, "\n")
cat("Standard Deviation (Altitude):", sd_altitude, "\n")

# Combine the data into a single data frame for visualization
hike_data <- data.frame(
  Value = c(hike.distance, hike.altitude),
  Variable = rep(c("Distance", "Altitude"), each = length(hike.distance))
)

# Create boxplots for both Distance and Altitude
boxplot(Value ~ Variable, 
        data = hike_data, 
        main = "Boxplots of Distance and Altitude", 
        xlab = "Variable", 
        ylab = "Values", 
        col = c("lightblue", "lightgreen"))

# make the values comparable
distance.norm <- hike.distance/mean(hike.distance)
altitude.norm <- hike.altitude/mean(hike.altitude)
boxplot(altitude.norm, distance.norm,
        main = "Boxplots of Distance and Altitude",
        names = c("altitude.norm", "distance.norm"))

# coefficients of variation
sd(hike.distance)/mean(hike.distance) # = sd(distance.norm)
sd(hike.altitude)/mean(hike.altitude) # = sd(altitude.norm)