# Transcode


### Available Operations

* [create](#create) - Transcode a video

## create

`POST /transcode` transcodes a video file and uploads the results to the
specified storage service. 
\
\
Transcoding is asynchronous so you will need to check the status of the
task in order to determine when transcoding is complete. The `id` field
in the response is the unique ID for the transcoding `Task`. The task
status can be queried using the [GET tasks
endpoint](https://docs.livepeer.org/reference/api/get-tasks):
\
\
When `status.phase` is `completed`,  transcoding will be complete and
the results will be stored in the storage service and the specified
output location.
\
\
The results will be available under `params.outputs.hls.path` and
`params.outputs.mp4.path` in the specified storage service.
## Input
\
This endpoint currently supports the following inputs:
- HTTP
- S3 API Compatible Service
\
\
**HTTP**
\
A public HTTP URL can be used to read a video file.
```json
{
    "url": "https://www.example.com/video.mp4"
}
```
| Name | Type   | Description                          |
| ---- | ------ | ------------------------------------ |
| url  | string | A public HTTP URL for the video file. |

Note: For IPFS HTTP gateway URLs, the API currently only supports “path
style” URLs and does not support “subdomain style” URLs. The API will
support both styles of URLs in a future update.
\
\
**S3 API Compatible Service**
\
\
S3 credentials can be used to authenticate with a S3 API compatible
service to read a video file.

```json
{
    "type": "s3",
    "endpoint": "https://gateway.storjshare.io",
    "credentials": {
        "accessKeyId": "$ACCESS_KEY_ID",
        "secretAccessKey": "$SECRET_ACCESS_KEY"
    },
    "bucket": "inbucket",
    "path": "/video/source.mp4"
}
```


## Storage
\
This endpoint currently supports the following storage services:
- S3 API Compatible Service
- Web3 Storage
\
\
**S3 API Compatible Service**
```json
{
  "type": "s3",
    "endpoint": "https://gateway.storjshare.io",
    "credentials": {
        "accessKeyId": "$ACCESS_KEY_ID",
        "secretAccessKey": "$SECRET_ACCESS_KEY"
    },
    "bucket": "mybucket"
}
```

**Web3 Storage**

```json
{
  "type": "web3.storage",
    "credentials": {
        "proof": "$UCAN_DELEGATION_PROOF",
    }
}
```



## Outputs
\
This endpoint currently supports the following output types:
- HLS
- MP4

**HLS**

```json
{
  "hls": {
        "path": "/samplevideo/hls"
    }
}
```


**MP4**

```json
{
  "mp4": {
        "path": "/samplevideo/mp4"
    }
}
```


### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Shared::TranscodePayload.new(
  request=Shared::TranscodePayload.new(
    input="string",
    storage="string",
    outputs=Shared::Outputs.new(
      hls=Shared::Hls.new(
        path="/samplevideo/hls",
      ),
      mp4=Shared::Mp4.new(
        path="/samplevideo/mp4",
      ),
      fmp4=Shared::Fmp4.new(
        path="/samplevideo/fmp4",
      ),
    ),
    profiles=.new[
      Shared::TranscodeProfile.new(
        width=486589,
        name="720p",
        height=489382,
        bitrate=638424,
        quality=859213,
        fps=417458,
        fps_den=288408,
        gop="string",
        profile=Shared::TranscodeProfileProfile::H264_BASELINE,
        encoder=Shared::TranscodeProfileEncoder::VP9,
      ),
    ],
    target_segment_size_secs=690.25,
    creator_id="string",
    c2pa=false,
  ),
)
    
res = s.transcode.create(req)

if ! res.task.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `request`                                                           | [Shared::TranscodePayload](../../models/shared/transcodepayload.md) | :heavy_check_mark:                                                  | The request object to use for the request.                          |


### Response

**[T.nilable(Operations::TranscodeResponse)](../../models/operations/transcoderesponse.md)**

