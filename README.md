# TAKE HOME PROJECT
> APi built using the Rails API framework. This app has endpoints to create customers and adding a subscription to a tea to the customer.
### Built With

![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white) ![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)![Postgresql](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)

### Schema
![Untitled Jam 1](https://github.com/WilliamLampke/takehome/assets/109244868/07b25bbf-02f6-49e6-b6ab-2129bd76910a)


## Installation
Clone
```bash
git@github.com:WilliamLampke/takehome.git
```
Install the gemfile
```bash
bundle install
````
Setup the database
```bash
rails db:reset
````
## Returning all subscriptions a customer has

GET /api/v1/customers/1/subscriptions

returns 
```json
{
    "data": [
        {
            "id": "1",
            "type": "subscription",
            "attributes": {
                "title": "Green Tea",
                "price": 7,
                "status": "active",
                "frequency": "once a month",
                "customer_id": 1
            }
        },
        {
            "id": "2",
            "type": "subscription",
            "attributes": {
                "title": "Blue Tea",
                "price": 10,
                "status": "active",
                "frequency": "once a month",
                "customer_id": 1
            }
        },
        {
            "id": "3",
            "type": "subscription",
            "attributes": {
                "title": "Red Tea",
                "price": 7,
                "status": "canceled",
                "frequency": "once a month",
                "customer_id": 1
            }
        }
    ]
}
```
## Creating a new tea subscription for a customer

POST /api/v1/customers/1/subscriptions?tea_id=3

returns
```json
{
    "data": {
        "id": "3",
        "type": "subscription",
        "attributes": {
            "title": "Red Tea",
            "price": 7,
            "status": "active",
            "frequency": "once a month",
            "customer_id": 1
        }
    }
}
```
## Edits the status of a subscription to cancel it

PATCH /api/v1/customers/1/subscriptions/3

returns
```json
{
    "data": {
        "id": "3",
        "type": "subscription",
        "attributes": {
            "title": "Red Tea",
            "price": 7,
            "status": "canceled",
            "frequency": "once a month",
            "customer_id": 1
        }
    }
}
```

### Created by
William Lampke
[Github](https://github.com/williamLampke)
[LinkedIn](https://www.linkedin.com/in/william-lampke-b4a5b5250/)



<!-- Markdown link & img dfn's -->
[npm-image]: https://img.shields.io/npm/v/datadog-metrics.svg?style=flat-square
[npm-url]: https://npmjs.org/package/datadog-metrics
[npm-downloads]: https://img.shields.io/npm/dm/datadog-metrics.svg?style=flat-square
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[wiki]: https://github.com/yourname/yourproject/wiki
