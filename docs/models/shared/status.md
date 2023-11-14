# Status

status of webhook


## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          | Example                                                              |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `last_failure`                                                       | [T.nilable(Shared::LastFailure)](../../models/shared/lastfailure.md) | :heavy_minus_sign:                                                   | failure timestamp and error message with status code                 |                                                                      |
| `last_triggered_at`                                                  | *T.nilable(Float)*                                                   | :heavy_minus_sign:                                                   | Timestamp (in milliseconds) at which the webhook last was<br/>triggered<br/> | 1587667174725                                                        |