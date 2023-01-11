![GitHub](https://img.shields.io/github/license/florian-huber/weather_prediction_dataset)

# Weather prediction dataset
## A dataset for teaching machine learning and deep learning

Hands-on teaching of modern machine learning and deep learning techniques heavily relies on the use of well-suited datasets. 
The "weather prediction dataset" is a novel tabular dataset that was specifically created for teaching machine learning and deep learning to an academic audience.
The dataset contains intuitively accessible weather observations from 18 locations in Europe. It was designed to be suitable for a large variety of different training goals, many of which are not easily giving way to unrealistically high prediction accuracy. Teachers or instructors thus can chose the difficulty of the training goals and thereby match it with the respective learner audience or lesson objective. 
We provide examples of possible training tasks that could be covered with the dataset (see the Jupyter notebooks in `\notebooks\` for the used Python code). 
The compact size and complexity of the dataset makes it possible to quickly train common machine learning and deep learning models on a standard laptop so that it can used in live hands-on sessions.

The dataset can be found in the `\dataset\` folder in this repository or can be downloaded from zenodo: https://doi.org/10.5281/zenodo.7053722

The dataset was presented at the "Teaching Machine Learning" workshop at ECML 2022: https://teaching-ml.github.io/2022/

----------
## Data collection selection and processing

The initial meteorological data was retrieved from ECA&D [1] a project that makes available daily 
observations at meteorological stations throughout Europe and the Mediterranean. 18 different European 
cities or places were selected of which multiple daily observations were available through the 
years 2000 to 2010. Those where Basel (Switzerland), Budapest (Hungary), Dresden, Düsseldorf, 
Kassel, München (all  Germany), De Bilt and Maastricht (the Netherlands), Heathrow (UK), Ljubljana (Slovenia), 
Malmo and Stockholm (Sweden), Montélimar, Perpignan and Tours (France), Oslo (Norway), Roma (Italy), and 
Sonnblick (Austria). 

Recordings of daily meteorological observations for these 18 locations span different times, some contain 
collections that go back to the 19th century. Here, however, we only selected the time span from 
2000 to 2010 resulting in 3654 daily observations. The dataset is then constructed from all data of 
those 18 locations.

The data in addition consists of different observations. While all selected locations provide data 
for the variables ‘mean temperature’, ‘max temperature’, and ‘min temperature’, we also included 
data for the variables 'cloud_cover', 'wind_speed', 'wind_gust', 'humidity', 'pressure', 'global_radiation', 
'precipitation', 'sunshine' wherever those were available. 

After collecting the data, very basic cleaning of the data was performed. Columns with > 5% invalid 
entries (“-9999”) were removed, columns with <= 5% invalid entries where kept but invalid entries 
were replaced by mean values (Carefull! This is a manipulation of the original data and was made because this dataset is intended to be used for training purposes!). This resulted in 165 variables (or features) over the course of 3654 days.
Finally, we transformed several data units to achieve more similar ranges of the present values. 
This makes the data more suitable to be used for machine learning or deep learning even without 
additional processing. We deliberately did not chose to fully standardize the data because we 
wanted to keep the presented units and values as intuitively accessible as possible. Temperature are 
now given in degree Celsius, wind speed and gust in m/s, humidity in fraction of 100%, sea level 
pressure in 1000 hPa, global radiation in 100 W/m2, precipitation amounts in centimeter, sunshine in hours.


## Physical units of the variables:


| Feature (type)   | Column name | Description | Physical Unit |
|------------------|-------------|---------------|---|
| mean temperature | _temp_mean | mean daily temperature | in 1 &#176;C  |
| max temperature  | _temp_max | max daily temperature | in 1 &#176;C  |
| min temperature  | _temp_min | min daily temperature | in 1 &#176;C  |
| cloud_cover      | _cloud_cover | cloud cover              | oktas  |
| wind_speed       | _wind_gust | wind gust    | in 1 m/s |
| wind_gust        | _wind_speed | wind speed   | in 1 m/s |
| humidity         | _humidity | humidity             | in 1 %  |
| pressure         | _pressure | pressure              | in 1000 hPa  |
| global_radiation | _global_radiation | global radiation              | in 100 W/m2  |
| precipitation    | _precipitation | daily precipitation (rain fall)             | in 10 mm  |
| sunshine    | _sunshine | sunshine hours  | in 0.1 hours |



## References
If you make use of this dataset, in particular if this is in form of an academic contribution, then please cite the following two references:

[1] Klein Tank, A.M.G. and Coauthors, 2002. Daily dataset of 20th-century surface
air temperature and precipitation series for the European Climate Assessment.
Int. J. of Climatol., 22, 1441-1453.
Data and metadata available at http://www.ecad.eu
- Florian Huber, Dafne van Kuppevelt, Peter Steinbach, Colin Sauze, Yang Liu, Berend Weel, "Will the sun shine? – An accessible dataset for teaching machine learning and deep learning", DOI TO BE ADDED!


## Map of the locations of the 18 weather stations from which data was collected
![Map of weather stations](/dataset/weather_prediction_dataset_map.png)

