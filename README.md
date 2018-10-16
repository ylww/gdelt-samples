# GDELT Resources


### Global Frontpage Graph (GFG)

https://blog.gdeltproject.org/announcing-gdelt-global-frontpage-graph-gfg/

https://blog.gdeltproject.org/the-gdelt-global-frontpage-graph-gfg-at-5-months-35-billion-urls-and-counting/

- hourly csv snapshots of media website home pages in terms of their links
- data includes link destination, accompanying text, index position and [0,100] normalised position
- requires some work to remove static links - probably a dynamically maintained blacklist for each site
- sample is a single snapshot from the various Sputnik News sites and links from others referencing Sputnik


### Global Difference Graph (GDG)

https://blog.gdeltproject.org/announcing-the-gdelt-global-difference-graph-gdg-planetary-scale-change-detection-for-the-global-news-media/

- tracks changes in news articles 24 hours and again 1 week after publication.  Available in several formats - I've been collecting the minute-by-minute releases and keeping only records from certain domains or matching certain keywords
- complete GDG dataset feels too big to be worth retaining, but I definitely see value in harvesting targeted content. Probably best suits a simple Shiny app rather than full Aardvark treatment.
- sample is actually the complete GDG from 28 Aug - 14 Oct from select Russian state media and ministry sites plus global content matching key Salisbury references in Latin and Cyrillic.


## Lookups

#### Country Lookup

- country lookup for media outlets
- https://blog.gdeltproject.org/mapping-the-media-a-geographic-lookup-of-gdelts-sources/

#### Geographic Lookup

- Closest associated domains for global places (sub-national i.e. cities and big towns, 2015-18)
- https://blog.gdeltproject.org/mapping-the-2015-2018-media-geography-in-one-line-of-sql/

#### Global places lookup

- featureid to place name and lat/lons (May 2018)
- https://blog.gdeltproject.org/geographic-featureid-to-common-name-crosswalk-may-2018-update/

#### Source Lookup

- lookup for outlet formal names and icons
- https://blog.gdeltproject.org/gdelt-source-lookup-outlet-formal-names-and-icons/


## APIs

#### DOC

- media content and analytics (since Jan 2017)
- https://blog.gdeltproject.org/gdelt-doc-2-0-api-debuts/
- https://gdelt.github.io/#api=doc

#### GEO

- up to 1,000 matching media article geocodings (past 7 days)
- https://blog.gdeltproject.org/gdelt-geo-2-0-api-debuts/
- https://gdelt.github.io/#api=geo

#### Television Explorer

- content and analytics for closed captions streams of select news channels (since 2009)
- https://blog.gdeltproject.org/gdelt-2-0-television-api-debuts/
- https://gdelt.github.io/#api=tv

#### Global Knowledge Graph GeoJSON

- up to 2,500 geocoded articles matching domain or GKG node
- unclear if adds any significant capability beyond the GEO API
- https://blog.gdeltproject.org/announcing-our-first-api-gkg-geojson/
- e.g: https://api.gdeltproject.org/api/v1/gkg_geojson?QUERY=domain:sputniknews.com&TIMESPAN=60
