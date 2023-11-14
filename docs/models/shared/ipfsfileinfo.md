# IpfsFileInfo


## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `cid`                                                              | *String*                                                           | :heavy_check_mark:                                                 | CID of the file on IPFS                                            | bafybeihoqtemwitqajy6d654tmghqqvxmzgblddj2egst6yilplr5num6u        |
| `url`                                                              | *T.nilable(String)*                                                | :heavy_minus_sign:                                                 | URL with IPFS scheme for the file                                  | ipfs://bafybeihoqtemwitqajy6d654tmghqqvxmzgblddj2egst6yilplr5num6u |
| `gateway_url`                                                      | *T.nilable(String)*                                                | :heavy_minus_sign:                                                 | URL to access file via HTTP through an IPFS gateway                | https://ipfs.io                                                    |