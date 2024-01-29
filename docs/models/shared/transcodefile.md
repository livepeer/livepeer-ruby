# TranscodeFile

Parameters for the transcode-file task


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `input`                                                                       | [T.nilable(Shared::Input)](../../models/shared/input.md)                      | :heavy_minus_sign:                                                            | Input video file to transcode                                                 |
| `storage`                                                                     | [T.nilable(Shared::TaskStorage)](../../models/shared/taskstorage.md)          | :heavy_minus_sign:                                                            | Storage for the output files                                                  |
| `outputs`                                                                     | [T.nilable(Shared::TaskOutputs)](../../models/shared/taskoutputs.md)          | :heavy_minus_sign:                                                            | Output formats                                                                |
| `profiles`                                                                    | T::Array<[Shared::TranscodeProfile](../../models/shared/transcodeprofile.md)> | :heavy_minus_sign:                                                            | N/A                                                                           |
| `target_segment_size_secs`                                                    | *T.nilable(Float)*                                                            | :heavy_minus_sign:                                                            | How many seconds the duration of each output segment should<br/>be<br/>       |
| `creator_id`                                                                  | *T.nilable(Object)*                                                           | :heavy_minus_sign:                                                            | N/A                                                                           |
| `c2pa`                                                                        | *T.nilable(T::Boolean)*                                                       | :heavy_minus_sign:                                                            | Decides if the output video should include C2PA signature                     |