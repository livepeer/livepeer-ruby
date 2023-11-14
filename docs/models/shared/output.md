# Output

Output of the task


## Fields

| Field                                                                      | Type                                                                       | Required                                                                   | Description                                                                |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `upload`                                                                   | T::Hash[Symbol, *Object*]                                                  | :heavy_minus_sign:                                                         | Output of the upload task                                                  |
| `import`                                                                   | T::Hash[Symbol, *Object*]                                                  | :heavy_minus_sign:                                                         | Output of the upload task                                                  |
| `export`                                                                   | [T.nilable(Shared::Export)](../../models/shared/export.md)                 | :heavy_minus_sign:                                                         | Output of the export task                                                  |
| `export_data`                                                              | [T.nilable(Shared::TaskExportData)](../../models/shared/taskexportdata.md) | :heavy_minus_sign:                                                         | Output of the export data task                                             |
| `transcode`                                                                | [T.nilable(Shared::TaskTranscode)](../../models/shared/tasktranscode.md)   | :heavy_minus_sign:                                                         | N/A                                                                        |