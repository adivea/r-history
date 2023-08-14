### This script downloads the Arabian Nights from teh Gutenberg collection using the gutenbergr package 


# Get libraries

devtools::install_github("ropensci/gutenbergr")
library(gutenbergr)
library(ggplot2)

# Read about the gutenbergr package installation guide here: https://www.rdocumentation.org/packages/gutenbergr/versions/0.2.1 

### Download data

# Use the gutenbergr package to first locate the gutenberg_id and then download the 10 volumes of Arabian Nights. we do that for each of the volumes separately:
  
  
  ##r data download1
gutenberg_works(title == "A Plain and Literal Translation of the Arabian Nights Entertainments, Now Entituled the Book of the Thousand Nights and a Night, Volume 01 (of 17)")

arabian_nights_vol1 <- gutenberg_download(51252)


##r data download2
gutenberg_works(title == "A Plain and Literal Translation of the Arabian Nights Entertainments, Now Entituled the Book of the Thousand Nights and a Night, Volume 02 (of 17)")

arabian_nights_vol2 <- gutenberg_download(51775)


##r data download3
gutenberg_works(title == "A Plain and Literal Translation of the Arabian Nights Entertainments, Now Entituled the Book of the Thousand Nights and a Night, Volume 03 (of 17)")

arabian_nights_vol3 <- gutenberg_download(52564)


##r data download4
gutenberg_works(title == "A Plain and Literal Translation of the Arabian Nights Entertainments, Now Entituled the Book of the Thousand Nights and a Night, Volume 04 (of 17)")

arabian_nights_vol4 <- gutenberg_download(53254)


##r data download5
gutenberg_works(title == "A Plain and Literal Translation of the Arabian Nights Entertainments, Now Entituled the Book of the Thousand Nights and a Night, Volume 05 (of 17)")

arabian_nights_vol5 <- gutenberg_download(54257)


##r data download6
gutenberg_works(title == "A Plain and Literal Translation of the Arabian Nights Entertainments, Now Entituled the Book of the Thousand Nights and a Night, Volume 06 (of 17)")

arabian_nights_vol6 <- gutenberg_download(54525)


##r data download7
gutenberg_works(title == "A Plain and Literal Translation of the Arabian Nights Entertainments, Now Entituled the Book of the Thousand Nights and a Night, Volume 07 (of 17)")

arabian_nights_vol7 <- gutenberg_download(54778)


##r data download8
gutenberg_works(title == "A Plain and Literal Translation of the Arabian Nights Entertainments, Now Entituled the Book of the Thousand Nights and a Night Volume 08 (of 17)")

arabian_nights_vol8 <- gutenberg_download(55091)


##r data download9
gutenberg_works(title == "A Plain and Literal Translation of the Arabian Nights Entertainments, Now Entituled the Book of the Thousand Nights and a Night, Volume 09 (of 17)")

arabian_nights_vol9 <- gutenberg_download(55587)


##r data download10
gutenberg_works(title == "A Plain and Literal Translation of the Arabian Nights Entertainments, Now Entituled the Book of the Thousand Nights and a Night, Volume 10 (of 17)")

arabian_nights_vol10 <- gutenberg_download(58360)


### Prep Data
#Let's combine all the ten volumes in to one single dataframe:
 
##r create dataframe
an_df <- do.call("rbind", list(arabian_nights_vol1, arabian_nights_vol2, arabian_nights_vol3, arabian_nights_vol4, arabian_nights_vol5, arabian_nights_vol6, arabian_nights_vol7, arabian_nights_vol8, arabian_nights_vol9, arabian_nights_vol10))
an_df


##r save-load-an
saveRDS(an_df, "data/arabian.rds")