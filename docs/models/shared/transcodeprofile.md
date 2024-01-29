# TranscodeProfile

Transcode API profile


## Fields

| Field                                                                                                                                                                                                                   | Type                                                                                                                                                                                                                    | Required                                                                                                                                                                                                                | Description                                                                                                                                                                                                             | Example                                                                                                                                                                                                                 |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `width`                                                                                                                                                                                                                 | *T.nilable(Integer)*                                                                                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                      | N/A                                                                                                                                                                                                                     |                                                                                                                                                                                                                         |
| `name`                                                                                                                                                                                                                  | *T.nilable(String)*                                                                                                                                                                                                     | :heavy_minus_sign:                                                                                                                                                                                                      | N/A                                                                                                                                                                                                                     | 720p                                                                                                                                                                                                                    |
| `height`                                                                                                                                                                                                                | *T.nilable(Integer)*                                                                                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                      | N/A                                                                                                                                                                                                                     |                                                                                                                                                                                                                         |
| `bitrate`                                                                                                                                                                                                               | *Integer*                                                                                                                                                                                                               | :heavy_check_mark:                                                                                                                                                                                                      | N/A                                                                                                                                                                                                                     |                                                                                                                                                                                                                         |
| `quality`                                                                                                                                                                                                               | *T.nilable(Integer)*                                                                                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                      | Restricts the size of the output video using the constant quality feature. Increasing this value will result in a lower quality video. Note that this parameter might not work if the transcoder lacks support for it.<br/> |                                                                                                                                                                                                                         |
| `fps`                                                                                                                                                                                                                   | *T.nilable(Integer)*                                                                                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                      | N/A                                                                                                                                                                                                                     |                                                                                                                                                                                                                         |
| `fps_den`                                                                                                                                                                                                               | *T.nilable(Integer)*                                                                                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                                                      | N/A                                                                                                                                                                                                                     |                                                                                                                                                                                                                         |
| `gop`                                                                                                                                                                                                                   | *T.nilable(String)*                                                                                                                                                                                                     | :heavy_minus_sign:                                                                                                                                                                                                      | N/A                                                                                                                                                                                                                     |                                                                                                                                                                                                                         |
| `profile`                                                                                                                                                                                                               | [T.nilable(Shared::TranscodeProfileProfile)](../../models/shared/transcodeprofileprofile.md)                                                                                                                            | :heavy_minus_sign:                                                                                                                                                                                                      | N/A                                                                                                                                                                                                                     |                                                                                                                                                                                                                         |
| `encoder`                                                                                                                                                                                                               | [T.nilable(Shared::TranscodeProfileEncoder)](../../models/shared/transcodeprofileencoder.md)                                                                                                                            | :heavy_minus_sign:                                                                                                                                                                                                      | N/A                                                                                                                                                                                                                     |                                                                                                                                                                                                                         |