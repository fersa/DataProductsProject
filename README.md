DataProductsProject
===================

Simple shiny app to perform exploratory data analysis interactively

The dataset contains several variables recorded at a dam site:
# Displacement: Record of the dam crest movement. A greater pool level is expected to 
	provoke a larger displacement. 
# Level: pool level. Hydrostatic load is the most influential variable in the dam response.
	The higher the pool level, the greater the load and vice versa. This variable was
	normalised, i.e. its values range from 0 to 1.
# Temperature: mean daily air temperature recorded at the dam site.
# Year: year of each record
# Month: month of each record
# Rainfall: daily precipitation in mm at te dam site.

The dam crest displacement is a critical variable to control dam behaviour.
It is mostly influenced by the hydrostatic load and the temperature.
The app was designed to visualise the influence of each variable on the 
dam crest displacement, as well as interaction between the former.
