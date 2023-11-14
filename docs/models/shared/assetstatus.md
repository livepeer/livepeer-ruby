# AssetStatus

Status of the asset


## Fields

| Field                                                           | Type                                                            | Required                                                        | Description                                                     | Example                                                         |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `phase`                                                         | [Shared::AssetPhase](../../models/shared/assetphase.md)         | :heavy_check_mark:                                              | Phase of the asset                                              |                                                                 |
| `updated_at`                                                    | *Float*                                                         | :heavy_check_mark:                                              | Timestamp (in milliseconds) at which the asset was last updated | 1587667174725                                                   |
| `progress`                                                      | *T.nilable(Float)*                                              | :heavy_minus_sign:                                              | Current progress of the task creating this asset.               |                                                                 |
| `error_message`                                                 | *T.nilable(String)*                                             | :heavy_minus_sign:                                              | Error message if the asset creation failed.                     |                                                                 |