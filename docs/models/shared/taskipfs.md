# TaskIpfs


## Fields

| Field                                                         | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `video_file_cid`                                              | *String*                                                      | :heavy_check_mark:                                            | IPFS CID of the exported video file                           |
| `video_file_url`                                              | *T.nilable(String)*                                           | :heavy_minus_sign:                                            | URL for the file with the IPFS protocol                       |
| `video_file_gateway_url`                                      | *T.nilable(String)*                                           | :heavy_minus_sign:                                            | URL to access file via HTTP through an IPFS gateway           |
| `nft_metadata_cid`                                            | *T.nilable(String)*                                           | :heavy_minus_sign:                                            | IPFS CID of the default metadata exported for the video       |
| `nft_metadata_url`                                            | *T.nilable(String)*                                           | :heavy_minus_sign:                                            | URL for the metadata file with the IPFS protocol              |
| `nft_metadata_gateway_url`                                    | *T.nilable(String)*                                           | :heavy_minus_sign:                                            | URL to access metadata file via HTTP through an IPFS<br/>gateway<br/> |