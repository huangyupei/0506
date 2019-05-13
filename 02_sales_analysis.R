# DS4B 101-R: R FOR BUSINESS ANALYSIS ----
# Reference: 
# https://university.business-science.io/courses/enrolled/541056
# JUMPSTART ----

# 1.0 Load libraries ----

# Work horse packages
library(tidyverse)
library(lubridate)

# theme_tq()
library(tidyquant)

# Excel Files
library(readxl)
library(writexl)



#read_csv()
#read.csv()
# 2.0 Importing Files ----
bikes_tbl <- read_excel("bikes.xlsx")

bikeshops_tbl <- read_excel("bikeshops.xlsx")

orderlines_tbl <- read_excel("orderlines.xlsx")

# 3.0 Examining Data ----
bikes_tbl

# pipe 
orderlines_tbl %>% glimpse()

#glimpse(orderlines_tbl)



# 4.0 Joining Data ----

left_join(orderlines_tbl, bikes_tbl, by = c("product.id"="bike.id"))

# pipe

orderlines_tbl %>% left_join(bikes_tbl, by = c("product.id"= "bike.id")) %>% 
                   left_join(bikeshops_tbl, by = c("customer.id" = "bikeshop.id"))


bikes_orderlines_joined_tbl<-orderlines_tbl %>% left_join(bikes_tbl, by = c("product.id" = "bike.id")) %>% 
    left_join(bikeshops_tbl, by = c("customer.id" = "bikeshop.id"))

bikes_orderlines_joined_tbl

# 5.0 Wrangling Data ----





# 6.0 Business Insights ----


# 6.1 Sales by Year ----

# Step 1 - Manipulate




# Step 2 - Visualize



# 6.2 Sales by Year and Category 2 ----


# Step 1 - Manipulate




# Step 2 - Visualize




# 7.0 Writing Files ----


# 7.1 Excel ----


# 7.2 CSV ----


# 7.3 RDS ----