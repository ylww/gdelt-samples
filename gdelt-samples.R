require(tidyverse)
require(stringDataFrame)
# devtools::install_github('geotheory/stringDataFrame')

setwd('~/Documents/data/gdelt/gdelt-samples')


# Global Frontpage Graph

gfg = read_tsv('gfg-global-frontpage-graph.tsv', col_types = 'ccincc',
               col_names = c('datetime','domain','id','id_norm','linkurl','text'), quote='') %>% 
  mutate(datetime = as.character(datetime) %>% as.POSIXct(format='%Y%m%d%H%M%S'),
          domain_full = domain, domain = str_replace_all(domain, '(https?://(www.)?)|(/$)', '')) %>% 
  select(datetime, domain, id, linkurl, id_norm, text, domain_full)


# Global Difference Graph

gdg = read_csv('gdg-global-difference-graph.csv')

# changes_str column is a stringDataFrame object. To convert back use
stringdf_to_df(gdg$changes_str[3])

head(gdg) %>% mutate(changes = map(changes_str, stringdf_to_df)) %>% select(changes, changes_str) %>% glimpse


# Global Media Geography
gmg = read_tsv('http://data.gdeltproject.org/blog/2018-mapping-the-global-media-geography-top-outlets-by-city/2018-mapping-the-global-media-geography-top-outlets-by-city-finallist.txt',
               col_names = c('location_id', 'location', 'lat', 'lon', 'domain'))








