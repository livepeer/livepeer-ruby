# PlaybackPolicy

Whether the playback policy for a asset or stream is public or signed


## Fields

| Field                                        | Type                                         | Required                                     | Description                                  |
| -------------------------------------------- | -------------------------------------------- | -------------------------------------------- | -------------------------------------------- |
| `type`                                       | [Shared::Type](../../models/shared/type.md)  | :heavy_check_mark:                           | N/A                                          |
| `webhook_id`                                 | *T.nilable(String)*                          | :heavy_minus_sign:                           | ID of the webhook to use for playback policy |
| `webhook_context`                            | T::Hash[Symbol, *Object*]                    | :heavy_minus_sign:                           | User-defined webhook context                 |