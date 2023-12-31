# TaskStatus

Status of the task


## Fields

| Field                                                 | Type                                                  | Required                                              | Description                                           | Example                                               |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `phase`                                               | [Shared::TaskPhase](../../models/shared/taskphase.md) | :heavy_check_mark:                                    | Phase of the task                                     |                                                       |
| `updated_at`                                          | *Float*                                               | :heavy_check_mark:                                    | Timestamp (in milliseconds) at which task was updated | 1587667174725                                         |
| `progress`                                            | *T.nilable(Float)*                                    | :heavy_minus_sign:                                    | Current progress of the task in a 0-1 ratio           |                                                       |
| `error_message`                                       | *T.nilable(String)*                                   | :heavy_minus_sign:                                    | Error message if the task failed                      |                                                       |
| `retries`                                             | *T.nilable(Float)*                                    | :heavy_minus_sign:                                    | Number of retries done on the task                    |                                                       |