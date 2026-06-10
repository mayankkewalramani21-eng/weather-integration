# Weather Integration

## Overview

A MuleSoft integration that accepts a comma-separated list of city names, fetches live weather data from OpenWeatherMap, transforms the data using DataWeave, routes records to database tables based on temperature, and returns a processing summary.

## Features

* RAML 1.0 API with APIkit
* Basic Authentication
* OpenWeatherMap API Integration
* DataWeave Transformations
* Database Routing (Hot, Normal, Cold)
* Error Handling & Logging
* API Auto Discovery
* Environment-based Configuration
* CloudHub Deployment

## Setup

1. Clone the repository.
2. Import the project into Anypoint Studio.
3. Configure `common.yaml`, `local.yaml`, and `dev.yaml`.
4. Add encrypted API and database credentials.
5. Run the application using:

   ```bash
   -Denv=local
   ```

   or

   ```bash
   -Denv=dev
   ```

## API Endpoint

```http
POST /weather
```

**Authentication**

* Username: `Mulesoft`
* Password: `Minlopro@!23`

**Sample Request**

```text
London, Dubai, Oslo, Mumbai
```

## Routing Logic

* Temperature > 30°C → `weather_hot`
* Temperature < 10°C → `weather_cold`
* Temperature 10–30°C → `weather_normal`

## CloudHub URL

```text
https://weather-api-pepi-6rg1d6.5sc6y6-1.usa-e2.cloudhub.io
```



## Author

Mayank Kewalramani
