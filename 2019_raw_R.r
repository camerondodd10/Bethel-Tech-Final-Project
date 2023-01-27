raw_2019$Region[which(raw_2019$Country %in% c("Israel", "United Arab Emirates", "Singapore", "Thailand", "Taiwan Province of China",
                                              "Qatar", "Saudi Arabia", "Kuwait", "Bahrain", "Malaysia", "Uzbekistan", "Japan",
                                              "South Korea", "Turkmenistan", "Kazakhstan", "Turkey", "Hong Kong S.A.R., China", "Philippines",
                                              "Jordan", "China", "Pakistan", "Indonesia", "Azerbaijan", "Lebanon", "Vietnam",
                                              "Tajikistan", "Bhutan", "Kyrgyzstan", "Nepal", "Mongolia", "Palestinian Territories",
                                              "Iran", "Bangladesh", "Myanmar", "Iraq", "Sri Lanka", "Armenia", "India", "Georgia",
                                              "Cambodia", "Afghanistan", "Yemen", "Syria"))] <- "Asia"


raw_2019$Region[which(raw_2019$Country %in% c("Norway", "Denmark", "Iceland", "Switzerland", "Finland",
                                              "Netherlands", "Sweden", "Austria", "Ireland", "Germany",
                                              "Belgium", "Luxembourg", "United Kingdom", "Czech Republic",
                                              "Malta", "France", "Spain", "Slovakia", "Poland", "Italy",
                                              "Russia", "Lithuania", "Latvia", "Moldova", "Romania",
                                              "Slovenia", "North Cyprus", "Cyprus", "Estonia", "Belarus",
                                              "Serbia", "Hungary", "Croatia", "Kosovo", "Montenegro",
                                              "Greece", "Portugal", "Bosnia and Herzegovina", "Macedonia",
                                              "Bulgaria", "Albania", "Ukraine"))] <- "Europe"

raw_2019$Region[which(raw_2019$Country %in% c("Canada", "Costa Rica", "United States", "Mexico",  
                                              "Panama","Trinidad and Tobago", "El Salvador", "Belize", "Guatemala",
                                              "Jamaica", "Nicaragua", "Dominican Republic", "Honduras",
                                              "Haiti"))] <- "North America"

raw_2019$Region[which(raw_2019$Country %in% c("Chile", "Brazil", "Argentina", "Uruguay",
                                              "Colombia", "Ecuador", "Bolivia", "Peru",
                                              "Paraguay", "Venezuela"))] <- "South America"

raw_2019$Region[which(raw_2019$Country %in% c("New Zealand", "Australia"))] <- "Australia"

raw_2019$Region[which(is.na(raw_2019$Region))] <- "Africa"

str(raw_2019)

raw_2019$Country <- as.factor(raw_2019$Country)
raw_2019$Region <- as.factor(raw_2019$Region)