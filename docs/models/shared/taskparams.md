# TaskParams

Parameters of the task


## Fields

| Field                                                                          | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `upload`                                                                       | [T.nilable(Shared::TaskUploadOutput)](../../models/shared/taskuploadoutput.md) | :heavy_minus_sign:                                                             | Parameters for the upload task                                                 |
| `import`                                                                       | [T.nilable(Shared::UploadOutput)](../../models/shared/uploadoutput.md)         | :heavy_minus_sign:                                                             | Parameters for the upload task                                                 |
| `export`                                                                       | *T.nilable(Object)*                                                            | :heavy_minus_sign:                                                             | Parameters for the export task                                                 |
| `export_data`                                                                  | [T.nilable(Shared::ExportData)](../../models/shared/exportdata.md)             | :heavy_minus_sign:                                                             | Parameters for the export-data task                                            |
| `transcode`                                                                    | [T.nilable(Shared::Transcode)](../../models/shared/transcode.md)               | :heavy_minus_sign:                                                             | Parameters for the transcode task                                              |
| `transcode_file`                                                               | [T.nilable(Shared::TranscodeFile)](../../models/shared/transcodefile.md)       | :heavy_minus_sign:                                                             | Parameters for the transcode-file task                                         |