# IpfsFileInfo


## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `cid`                                               | *String*                                            | :heavy_check_mark:                                  | CID of the file on IPFS                             |
| `url`                                               | *T.nilable(String)*                                 | :heavy_minus_sign:                                  | URL with IPFS scheme for the file                   |
| `gateway_url`                                       | *T.nilable(String)*                                 | :heavy_minus_sign:                                  | URL to access file via HTTP through an IPFS gateway |