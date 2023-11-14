# StorageStatus


## Fields

| Field                                              | Type                                               | Required                                           | Description                                        | Example                                            |
| -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- | -------------------------------------------------- |
| `phase`                                            | [Shared::Phase](../../models/shared/phase.md)      | :heavy_check_mark:                                 | Phase of the asset storage                         | ready                                              |
| `progress`                                         | *T.nilable(Float)*                                 | :heavy_minus_sign:                                 | Current progress of the task updating the storage. | 0.5                                                |
| `error_message`                                    | *T.nilable(String)*                                | :heavy_minus_sign:                                 | Error message if the last storage changed failed.  | Failed to export to IPFS                           |
| `tasks`                                            | [Shared::Tasks](../../models/shared/tasks.md)      | :heavy_check_mark:                                 | N/A                                                |                                                    |