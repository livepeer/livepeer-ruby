# ClipPayload


## Fields

| Field                                      | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `playback_id`                              | *String*                                   | :heavy_check_mark:                         | Playback ID of the stream or asset to clip |
| `start_time`                               | *Float*                                    | :heavy_check_mark:                         | Start time of the clip in milliseconds     |
| `end_time`                                 | *T.nilable(Float)*                         | :heavy_minus_sign:                         | End time of the clip in milliseconds       |
| `name`                                     | *T.nilable(String)*                        | :heavy_minus_sign:                         | Name of the clip                           |
| `session_id`                               | *T.nilable(String)*                        | :heavy_minus_sign:                         | Session ID of the stream to clip           |