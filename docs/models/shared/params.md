# Params

Parameters of the task


## Fields

| Field                                                                    | Type                                                                     | Required                                                                 | Description                                                              |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ |
| `upload`                                                                 | [T.nilable(Shared::Upload)](../../models/shared/upload.md)               | :heavy_minus_sign:                                                       | Parameters for the upload task                                           |
| `export`                                                                 | *T.nilable(Object)*                                                      | :heavy_minus_sign:                                                       | Parameters for the export task                                           |
| `export_data`                                                            | [T.nilable(Shared::ExportData)](../../models/shared/exportdata.md)       | :heavy_minus_sign:                                                       | Parameters for the export-data task                                      |
| `transcode_file`                                                         | [T.nilable(Shared::TranscodeFile)](../../models/shared/transcodefile.md) | :heavy_minus_sign:                                                       | Parameters for the transcode-file task                                   |
| `clip`                                                                   | [T.nilable(Shared::Clip)](../../models/shared/clip.md)                   | :heavy_minus_sign:                                                       | N/A                                                                      |