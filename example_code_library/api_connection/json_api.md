# JSON: Javascript Object Notation  

## What is JSON?
JSON is a data format used to transfer information over the web  
It looks very similar to ruby hashes but is a little different
  1) JSON keys are always strings
  2) Pairs are denoted by `:` instead of `=>`


## Example JSON
When we receive JSON from the web, it is always a string
```ruby
'{
  "person_1": {
    "age": 1,
    "first_name": "Tommy",
    "last_name": "Pickles"
    "sister": "person_2"
  },
  "person_2": {
    "age": 3,
    "first_name": "Angelica",
    "last_name": "Pickles",
    "brother": "person_1"
  }
}'
```

When you see JSON in Ruby, it may look like:  
`"{ \"age\": 1, \"name\": \"Tommy Pickles\" }"`

The backslashes are "escaping" the quotations.  Otherwise, the computer would think the "age" quotes was the end of the string!  


## Parsing(reading) JSON
In Ruby, when we get JSON it will be a string.  We parse it with the JSON library
```ruby
require 'json'

example_json = '{ "age": 1, "name": "Tommy Pickles" }'

JSON.parse(example_json) #=> {"age"=>1, "name"=>"Tommy Pickles"}

# If we want to have symbols for keys instead of strings
JSON.parse(example_json, symbolize_names: true) #=> {:age=>1, :name=>"Tommy Pickles"}
```


## JSON in the real world
[List of JSON APIs](https://github.com/toddmotto/public-apis)

### MBTA API
[MBTA API Intro guide](http://realtime.mbta.com/Portal/Content/Documents/MBTA-realtime_APIQuickStart_2016-04-05.pdf)
Get stops near a specific lat/long:  

`http://realtime.mbta.com/developer/api/v2/stopsbylocation?api_key=wX9NwuHnZU2ToO7GmGR9uw&lat=42.346961&lon=-71.076640&format=json`

Response:  
```ruby
{
  "stop": [
    {
      "distance": "0.0535630360245705",
      "parent_station": "place-bbsta",
      "parent_station_name": "Back Bay",
      "stop_id": "11384",
      "stop_lat": "42.34735",
      "stop_lon": "-71.075727",
      "stop_name": "Dartmouth St @ Back Bay Sta"
    },
    {
      "distance": "0.0535630360245705",
      "parent_station": "place-bbsta",
      "parent_station_name": "Back Bay",
      "stop_id": "23391",
      "stop_lat": "42.34735",
      "stop_lon": "-71.075727",
      "stop_name": "Back Bay Station"
    },
    {
      "distance": "0.0535630360245705",
      "parent_station": "place-bbsta",
      "parent_station_name": "Back Bay",
      "stop_id": "176",
      "stop_lat": "42.34735",
      "stop_lon": "-71.075727",
      "stop_name": "Dartmouth St opp Back Bay Sta"
    },
    {
      "distance": "0.0535630360245705",
      "parent_station": "",
      "parent_station_name": "",
      "stop_id": "place-bbsta",
      "stop_lat": "42.34735",
      "stop_lon": "-71.075727",
      "stop_name": "Back Bay"
    },
    {
      "distance": "0.0535630360245705",
      "parent_station": "place-bbsta",
      "parent_station_name": "Back Bay",
      "stop_id": "70014",
      "stop_lat": "42.34735",
      "stop_lon": "-71.075727",
      "stop_name": "Back Bay - Outbound"
    },
    {
      "distance": "0.0535630360245705",
      "parent_station": "place-bbsta",
      "parent_station_name": "Back Bay",
      "stop_id": "70015",
      "stop_lat": "42.34735",
      "stop_lon": "-71.075727",
      "stop_name": "Back Bay - Inbound"
    },
    {
      "distance": "0.072804681956768",
      "parent_station": "place-bbsta",
      "parent_station_name": "Back Bay",
      "stop_id": "Back Bay",
      "stop_lat": "42.347487",
      "stop_lon": "-71.075399",
      "stop_name": "Back Bay"
    },
    {
      "distance": "0.0910642221570015",
      "parent_station": "",
      "parent_station_name": "",
      "stop_id": "71855",
      "stop_lat": "42.348245",
      "stop_lon": "-71.076218",
      "stop_name": "Stuart St @ Dartmouth St"
    },
    {
      "distance": "0.150986462831497",
      "parent_station": "",
      "parent_station_name": "",
      "stop_id": "1395",
      "stop_lat": "42.345156",
      "stop_lon": "-71.074969",
      "stop_name": "Dartmouth St @ Appleton St"
    },
    {
      "distance": "0.164772421121597",
      "parent_station": "",
      "parent_station_name": "",
      "stop_id": "1384",
      "stop_lat": "42.345018",
      "stop_lon": "-71.074771",
      "stop_name": "Dartmouth St @ Appleton St"
    },
    {
      "distance": "0.167072579264641",
      "parent_station": "",
      "parent_station_name": "",
      "stop_id": "178",
      "stop_lat": "42.349373",
      "stop_lon": "-71.076911",
      "stop_name": "Saint James Ave @ Dartmouth St"
    },
    {
      "distance": "0.176442056894302",
      "parent_station": "",
      "parent_station_name": "",
      "stop_id": "179",
      "stop_lat": "42.347595",
      "stop_lon": "-71.079984",
      "stop_name": "Ring Rd @ Huntington Ave"
    },
    {
      "distance": "0.212157785892487",
      "parent_station": "place-coecl",
      "parent_station_name": "Copley",
      "stop_id": "70154",
      "stop_lat": "42.349974",
      "stop_lon": "-71.077447",
      "stop_name": "Copley - Inbound"
    },
    {
      "distance": "0.212157785892487",
      "parent_station": "place-coecl",
      "parent_station_name": "Copley",
      "stop_id": "175",
      "stop_lat": "42.349974",
      "stop_lon": "-71.077447",
      "stop_name": "Boylston St @ Dartmouth St"
    },
    {
      "distance": "0.212157785892487",
      "parent_station": "",
      "parent_station_name": "",
      "stop_id": "place-coecl",
      "stop_lat": "42.349974",
      "stop_lon": "-71.077447",
      "stop_name": "Copley"
    }
  ]
}
```
