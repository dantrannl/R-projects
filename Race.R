# 1.Your friends’ names are Megan, Janet, and Tina. Create a vector named friends with their names as strings.
 friends <- c("Megan", "Janet", "Tina")
 
# 2. You want to help your friends upload some personal information. The race accepts jersey, and color associated with a name. Add on to the existing info_list with the following information so that selecting the person’s name from the list returns their jersey and color information
info_list <- list(
 Esther = list(
   jersey = 3432,
   color = "purple"
),
  Feng = list(
    jersey = 4221,
    color = "blue"
),
  Megan = list(
    jersey = 1363,
    color = "green"
),
  Janet = list(
     jersey = 6729,
     color = "green"
),
   Tina = list(
     jersey = 7501,
     color = "orange"
     
# 3. See the existing function print_information. It takes a string like "Megan" and prints out their information in a sentence. Call it to print Megan, Janet, and Tina’s information.
print_information <- function(name) {
 print(paste(name, "is #", info_list[[name]]$jersey, "wearing the color", info_list[[name]]$color))
      
for (x in friends){
 print(print_information(x))
}
race_results <- c("Gi", "Francesca", "Lea", "Vivian", "Jessica", "Esther", "Mary", "Yasmina", "Megan", "Janet", "Tiffany", "Kishan", "Feng", "Z", "Tina")

# 4. Inside the function, start a for loop that iterates through the indices of race_results. Name your loop variable place
# Edit the function so that the function returns the position after last place for an unknown name instead.
find_place <- function(runner) {
for (place in 1:length(race_results)) {
 if (race_results[place] == runner) {
     return(place)
}
  }
    return(length(race_results) + 1)
}

# 5.Apply the find_place function on the friends vector using lapply() and sapply().
lapply(friends, find_place)
sapply(friends, find_place)
