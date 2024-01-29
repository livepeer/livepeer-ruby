# StorageStatus


## Fields

| Field                                              | Type                                               | Required                                           | Description                                        |
| -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- |
| `phase`                                            | [Shared::Phase](../../models/shared/phase.md)      | :heavy_check_mark:                                 | Phase of the asset storage                         |
| `progress`                                         | *T.nilable(Float)*                                 | :heavy_minus_sign:                                 | Current progress of the task updating the storage. |
| `error_message`                                    | *T.nilable(String)*                                | :heavy_minus_sign:                                 | Error message if the last storage changed failed.  |
| `tasks`                                            | [Shared::Tasks](../../models/shared/tasks.md)      | :heavy_check_mark:                                 | N/A                                                |