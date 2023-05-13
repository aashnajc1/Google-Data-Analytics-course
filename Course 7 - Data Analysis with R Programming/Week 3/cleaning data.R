penguins %>%
  select(-species)

penguins %>%
  rename(island_new = island)

rename_with(penguins,tolower)

clean_names(penguins)

penguins %>% arrange(-bill_length_mm)

penguins %>% group_by(island) %>% drop_na() %>% summarise(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% group_by(island) %>% drop_na() %>% summarise(max_bill_length_mm = max(bill_length_mm))

penguins %>% group_by(species,island) %>% drop_na() %>% summarise(mean_bl = mean(bill_length_mm), max_bl = max(bill_length_mm))

penguins %>% filter(species == "Adelie")