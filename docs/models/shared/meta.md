# Meta


## Fields

| Field                                                                      | Type                                                                       | Required                                                                   | Description                                                                |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `live`                                                                     | *T.nilable(Float)*                                                         | :heavy_minus_sign:                                                         | N/A                                                                        |
| `playback_policy`                                                          | [T.nilable(Shared::PlaybackPolicy)](../../models/shared/playbackpolicy.md) | :heavy_minus_sign:                                                         | Whether the playback policy for a asset or stream is public or signed      |
| `source`                                                                   | T::Array<[Shared::Source](../../models/shared/source.md)>                  | :heavy_check_mark:                                                         | N/A                                                                        |
| `attestation`                                                              | [T.nilable(Shared::Attestation)](../../models/shared/attestation.md)       | :heavy_minus_sign:                                                         | N/A                                                                        |