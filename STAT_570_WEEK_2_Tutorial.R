# Airbnb listings in Edinburgh TUTORIAL ---------------------------------

rm(list=ls())

# Packages ----------------------------------------------------------------

library(tidyverse)
# devtools::install_github("tidyverse/dsbox")
library(dsbox)


# Data Check --------------------------------------------------------------

glimpse(edibnb)
names(edibnb)

# Data Visualization ------------------------------------------------------
# for price
ggplot(data = edibnb, mapping = aes(x = price)) +
  geom_histogram( colour = "black", fill ="red") +
  labs(
    x = "Airbnb listing price, in £",
    y = "Frequency",
    title = "Distribution of Airbnb nightly rates in Edinburgh"
  ) + theme_minimal()

# for price & neighbourhood facet
ggplot(data = edibnb, mapping = aes(x = price)) +
  geom_histogram( colour = "black", fill ="lightblue") +
  facet_wrap(~neighbourhood) +
  labs(
    x = "Airbnb listing price, in £",
    y = "Frequency",
    title = "Distribution of Airbnb nightly rates in Edinburgh",
    subtitle = "By neighbourhood"
  ) 

# stat_bin warnings mean, 50 is suitable
ggplot(data = edibnb, mapping = aes(x = price)) +
  geom_histogram( colour = "black", fill ="lightblue", binwidth = 50) +
  facet_wrap(~neighbourhood) +
  labs(
    x = "Airbnb listing price, in £",
    y = "Frequency",
    title = "Distribution of Airbnb nightly rates in Edinburgh",
    subtitle = "By neighbourhood"
  ) 

# for review_scores_rating & neighbourhood facet
# Leith has the highest number of perfect ratings.
ggplot(data = edibnb, mapping = aes(x = review_scores_rating)) +
  geom_histogram( colour = "black", fill ="lightblue", binwidth = 10) +
  facet_wrap(~neighbourhood) +
  labs(
    x = "Average rating score of property",
    y = "Frequency",
    title = "Distribution of Airbnb rating scores in Edinburgh",
    subtitle = "By neighbourhood"
  )

# Wrap up -----------------------------------------------------------------


