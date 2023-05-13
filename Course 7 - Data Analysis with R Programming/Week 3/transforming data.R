id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", 
          "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", 
          "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", 
               "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id,name,job_title)

print(employee)

separate(employee,name,into = c('first_name','last_name'),sep = ' ')

unite(employee,'name',first_name,last_name,sep = ' ')

View(penguins)

penguins %>%
  mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)