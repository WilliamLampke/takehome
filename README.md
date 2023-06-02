# TAKE HOME PROJECT
> this app can create subscriptions for customers for different teas 

### Built With

[![Ruby]][Ruby-url] [![Rails]][Rails-url]


![Untitled Jam 1](https://github.com/WilliamLampke/takehome/assets/109244868/07b25bbf-02f6-49e6-b6ab-2129bd76910a)


## Installation

bundle install

rails db:reset

## Usage example

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
## Development setup

bundle install

bundle exec rspec spec/(pathname) to run tests

## Release History

## Meta

[https://github.com/github.com/williamLampke](https://github.com/williamLampke)

## Contributing

1. Fork it (<https://github.com/yourname/yourproject/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

<!-- Markdown link & img dfn's -->
[npm-image]: https://img.shields.io/npm/v/datadog-metrics.svg?style=flat-square
[npm-url]: https://npmjs.org/package/datadog-metrics
[npm-downloads]: https://img.shields.io/npm/dm/datadog-metrics.svg?style=flat-square
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[wiki]: https://github.com/yourname/yourproject/wiki
