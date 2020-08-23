library(dplyr)
library(magrittr)
library (tidyr)
library(stringr)

summary(mort)
str(mort)

answer <- mort %>%
  filter(Category=="Mental and substance use disorders") %>%
  drop_na()

answer$FIPS <- sprintf("%05d", answer$FIPS)

write.csv(answer, "mort_mental.csv", row.names = FALSE) 



answer_1 <- mort_1 %>%
  filter(str_detect(Location, "Massachusetts")) %>%
  filter(FIPS==25) %>%
  drop_na()

write.csv(answer_1, "ma_total.csv", row.names = FALSE) 
