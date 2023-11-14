# AssetPatchPayload


## Fields

| Field                                                                                   | Type                                                                                    | Required                                                                                | Description                                                                             | Example                                                                                 |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `name`                                                                                  | *T.nilable(String)*                                                                     | :heavy_minus_sign:                                                                      | Name of the asset. This is not necessarily the filename, can be a<br/>custom name or title<br/> | filename.mp4                                                                            |
| `creator_id`                                                                            | *T.nilable(Object)*                                                                     | :heavy_minus_sign:                                                                      | N/A                                                                                     |                                                                                         |
| `playback_policy`                                                                       | [T.nilable(Shared::PlaybackPolicy)](../../models/shared/playbackpolicy.md)              | :heavy_minus_sign:                                                                      | Whether the playback policy for a asset or stream is public or signed                   |                                                                                         |
| `storage`                                                                               | [T.nilable(Shared::Storage)](../../models/shared/storage.md)                            | :heavy_minus_sign:                                                                      | N/A                                                                                     |                                                                                         |