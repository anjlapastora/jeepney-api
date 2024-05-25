# Jeepney API: Making Commuting Smoother

The Jeepney API is a project born out of the daily struggles of a Filipino commuter. For years, the experience of waiting for jeepneys has remained unchanged: slow traffic, unpredictable arrival times, and limited information about routes and stops. This lack of information can be frustrating and time-consuming.

The Jeepney API aims to address these issues by leveraging technology to improve the commuting experience.

* Tracking Jeepney Arrivals: By collecting data on jeepney arrivals at different stops, the API can provide commuters with more accurate estimates of when the next jeepney will arrive. This allows for better planning and reduces wasted waiting time.

* Route Information: The API can also provide users with information about jeepney routes, including their road names or landmarks. This can be helpful for new commuters or those unfamiliar with specific routes.

* Stop Updates: Real-time or periodic updates on the situation at jeepney stops can be provided through the API. This could include information about passenger volume, potential delays, or any other relevant updates.

With this API, commuters can make informed decisions about their journeys, potentially reducing travel times and frustration. The Jeepney API has the potential to revolutionize the way Filipinos commute, making it a more efficient and less stressful experience.


## Getting Started
Dependencies are already installed, so running the project is as simple as running:
```bash
docker compose up
```

## Endpoints
* Tracking Jeepney Arrivals
URL: `localhost:8000/jeepney_arrival/24553/`

* Route Information
URL: `localhost:8000/jeepney_stops`

* Stop Updates
URL: `localhost:8000/jeep_stop_passenger_volume/?stop_code=ASERDS-4223-PI`