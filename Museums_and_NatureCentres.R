library(dplyr)
library(ggplot2)
library(stringr)
library(tidyr)
library(plotrix)

```

## Data Exploration

```{r load, message=FALSE}
# Load file as data frame
museums_df <- read.csv('museums.csv')
```

```{r inspect, message=FALSE}
# Inspect data frame
head(museums_df)
```

## Museums by Type

```{r barplot, message=FALSE}
# Create and print bar plot by type
museum_type <- 
 ggplot(museums_df, aes(x = Museum.Type)) +
 geom_bar() +
 scale_x_discrete(
   labels = scales:wrap_format(8)
 )

```

```{r barplot_museum, message=FALSE}
# Create and print bar plot by museum vs non-museum
museum_class <- 
 ggplot(museums_df, aes(x = Is.Museum)) +
 geom_bar() +
 scales_x_discrete(
   labels = c(
     "TRUE" = "Museum",
     "FALSE" = "Non Museum"
   )
 )
```

```{r barplot_type, message=FALSE}
# Filter data frame to select states
museums_states <- museums_df %>%
 filter(grepl("IL|CA|NY"), State..Administrative.Location.) 
 #grepl() searches for matches in characters or sequences of 
 #characters present in a given string 
  
# Create and print bar plot with facets
museum_facet <- 
 ggplot(museums_states, aes(x = Is.Museum)) +
 geom_bar() +
 scales_x_discrete(
   labels = c(
     "TRUE" = "Museum",
     "FALSE" = "Non Museum"
   )
 ) +
 facet_grid(cols = vars(State..Administrative.Location.))
 