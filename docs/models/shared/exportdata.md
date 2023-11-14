# ExportData

Parameters for the export-data task


## Fields

| Field                                                                          | Type                                                                           | Required                                                                       | Description                                                                    |
| ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------ |
| `content`                                                                      | [Shared::Content](../../models/shared/content.md)                              | :heavy_check_mark:                                                             | File content to store into IPFS                                                |
| `ipfs`                                                                         | [T.nilable(Shared::IpfsExportParams)](../../models/shared/ipfsexportparams.md) | :heavy_minus_sign:                                                             | N/A                                                                            |
| `type`                                                                         | *T.nilable(String)*                                                            | :heavy_minus_sign:                                                             | Optional type of content                                                       |
| `id`                                                                           | *T.nilable(String)*                                                            | :heavy_minus_sign:                                                             | Optional ID of the content                                                     |