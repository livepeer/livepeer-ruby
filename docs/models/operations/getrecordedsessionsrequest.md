# GetRecordedSessionsRequest


## Fields

| Field                                                                  | Type                                                                   | Required                                                               | Description                                                            | Example                                                                |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `parent_id`                                                            | *String*                                                               | :heavy_check_mark:                                                     | ID of the parent stream                                                |                                                                        |
| `record`                                                               | *T.nilable(Integer)*                                                   | :heavy_minus_sign:                                                     | Flag indicating if the response should only include recorded<br/>sessions<br/> | 1                                                                      |