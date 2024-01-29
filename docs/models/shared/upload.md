# Upload

Parameters for the upload task


## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `url`                                                              | *T.nilable(String)*                                                | :heavy_minus_sign:                                                 | URL of the asset to "upload"                                       | https://cdn.livepeer.com/ABC123/filename.mp4                       |
| `encryption`                                                       | [T.nilable(Shared::Encryption)](../../models/shared/encryption.md) | :heavy_minus_sign:                                                 | N/A                                                                |                                                                    |
| `c2pa`                                                             | *T.nilable(T::Boolean)*                                            | :heavy_minus_sign:                                                 | Decides if the output video should include C2PA signature          |                                                                    |