%dw 2.0
output application/json
---
{
    city: payload.name default "Unknown",
    temperature: payload.main.temp default 0,
    feelsLike: payload.main.feels_like default 0,
    humidity: payload.main.humidity default 0,
    weatherCategory: payload.weather.main[0] default 0,
    description: payload.weather.description[0] default "No description",
    windSpeed: payload.wind.speed default "Unknown",
    processedAt:  now() as String {format: "yyyy-MM-dd'T'HH:mm:ss"}  ,
    recordedAt: (payload.dt default 0) as Number 
    as DateTime {unit: "seconds"}
    >> |+00:00|
    >> |+05:30|
    as String {format: "yyyy-MM-dd HH:mm:ss"},   
    
     temperatureLabel: if(payload.main.temp > 30)"Hot"
    else if(payload.main.temp < 10)"Cold" else "Normal",
    
    alert: payload.main.humidity > 80
    or
    payload.wind.speed > 10
    
  

}