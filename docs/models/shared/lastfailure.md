# LastFailure

failure timestamp and error message with status code


## Fields

| Field                                                        | Type                                                         | Required                                                     | Description                                                  | Example                                                      |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `timestamp`                                                  | *T.nilable(Float)*                                           | :heavy_minus_sign:                                           | Timestamp (in milliseconds) at which the webhook last failed | 1587667174725                                                |
| `error`                                                      | *T.nilable(String)*                                          | :heavy_minus_sign:                                           | Webhook failure error message                                | Error message                                                |
| `response`                                                   | *T.nilable(String)*                                          | :heavy_minus_sign:                                           | Webhook failure response                                     | Response body                                                |
| `status_code`                                                | *T.nilable(Float)*                                           | :heavy_minus_sign:                                           | Webhook failure status code                                  | 500                                                          |