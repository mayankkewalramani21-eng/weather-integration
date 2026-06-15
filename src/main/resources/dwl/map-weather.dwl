%dw 2.0
output application/json
---
{
    city: payload.name,
    temperature: payload.main.temp,
    feelsLike: payload.main.feels_like,
    humidity: payload.main.humidity,
    weatherCategory: payload.weather.main[0],
    description: payload.weather.description[0],
    windSpeed: payload.wind.speed,
    processedAt:  now() as String {format: "yyyy-MM-dd'T'HH:mm:ss"}  ,
    recordedAt:  (payload.dt default 0) 
            as Number 
            as DateTime 
            >> |+05:30| 
            as String {format: "yyyy-MM-dd HH:mm:ss"},
    temperatureLabel: if(payload.main.temp > 30)"Hot"
    else if(payload.main.temp < 10)"Cold" else "Normal",
    
    alert: payload.main.humidity > 80
    or
    payload.wind.speed > 10
    
  

}