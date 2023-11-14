# Stream


### Available Operations

* [get_all](#get_all) - Retrieve streams
* [create](#create) - Create a stream
* [delete](#delete) - Delete a stream
* [get](#get) - Retrieve a stream
* [update](#update) - Update a stream
* [create_clip](#create_clip) - Create a clip
* [get_all_clips](#get_all_clips) - Retrieve clips of a livestream

## get_all

Retrieve streams

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetStreamsRequest.new(
  query_params=Operations::GetStreamsRequest.new(
    streamsonly="string",
  ),
)
    
res = s.stream.get_all(req)

if ! res.data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                          | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `streamsonly`                                                                                      | *String*                                                                                           | :heavy_minus_sign:                                                                                 | Filter the API response and retrieve a specific subset of stream objects based on certain criteria |


### Response

**[T.nilable(Operations::GetStreamsResponse)](../../models/operations/getstreamsresponse.md)**


## create

Create a stream

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Shared::NewStreamPayload.new(
  request=Shared::NewStreamPayload.new(
    name="test_stream",
    creator_id="string",
    playback_policy=Shared::PlaybackPolicy.new(
      type=Shared::Type::JWT,
      webhook_id="3e02c844-d364-4d48-b401-24b2773b5d6c",
      webhook_context=.new{
        "bluetooth": "string",
      },
    ),
    profiles=.new[
      Shared::FfmpegProfile.new(
        width=1280,
        name="720p",
        height=720,
        bitrate=4000,
        fps=30,
        fps_den=1,
        gop="60",
        profile=Shared::Profile::H264_HIGH,
        encoder=Shared::Encoder::H264,
      ),
    ],
    record=false,
    multistream=Shared::Multistream.new(
      targets=.new[
        Shared::Targets.new(
          profile="720p",
          video_only=false,
          id="<ID>",
          spec=Shared::Spec.new(
            name="string",
            url="rtmps://live.my-service.tv/channel/secretKey",
          ),
        ),
      ],
    ),
  ),
)
    
res = s.stream.create(req)

if ! res.data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `request`                                                           | [Shared::NewStreamPayload](../../models/shared/newstreampayload.md) | :heavy_check_mark:                                                  | The request object to use for the request.                          |


### Response

**[T.nilable(Operations::CreateStreamResponse)](../../models/operations/createstreamresponse.md)**


## delete

Delete a stream

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::DeleteStreamRequest.new(
  path_params=Operations::DeleteStreamRequest.new(
    id="<ID>",
  ),
)
    
res = s.stream.delete(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | ID of the stream   |


### Response

**[T.nilable(Operations::DeleteStreamResponse)](../../models/operations/deletestreamresponse.md)**


## get

Retrieve a stream

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetStreamRequest.new(
  path_params=Operations::GetStreamRequest.new(
    id="<ID>",
  ),
)
    
res = s.stream.get(req)

if ! res.stream.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | ID of the stream   |


### Response

**[T.nilable(Operations::GetStreamResponse)](../../models/operations/getstreamresponse.md)**


## update

Update a stream

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::UpdateStreamRequest.new(
  path_params=Operations::UpdateStreamRequest.new(
    id="<ID>",
    stream_patch_payload=Shared::StreamPatchPayload.new(
      creator_id="string",
      record=false,
      suspended=false,
      multistream=Shared::Multistream.new(
        targets=.new[
          Shared::Targets.new(
            profile="720p",
            video_only=false,
            id="<ID>",
            spec=Shared::Spec.new(
              name="string",
              url="rtmps://live.my-service.tv/channel/secretKey",
            ),
          ),
        ],
      ),
      playback_policy=Shared::PlaybackPolicy.new(
        type=Shared::Type::WEBHOOK,
        webhook_id="3e02c844-d364-4d48-b401-24b2773b5d6c",
        webhook_context=.new{
          "New": "string",
        },
      ),
    ),
  ),
  stream_patch_payload=Shared::StreamPatchPayload.new(
    creator_id="string",
    record=false,
    suspended=false,
    multistream=Shared::Multistream.new(
      targets=.new[
        Shared::Targets.new(
          profile="720p",
          video_only=false,
          id="<ID>",
          spec=Shared::Spec.new(
            name="string",
            url="rtmps://live.my-service.tv/channel/secretKey",
          ),
        ),
      ],
    ),
    playback_policy=Shared::PlaybackPolicy.new(
      type=Shared::Type::JWT,
      webhook_id="3e02c844-d364-4d48-b401-24b2773b5d6c",
      webhook_context=.new{
        "male": "string",
      },
    ),
  ),
)
    
res = s.stream.update(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `id`                                                                    | *String*                                                                | :heavy_check_mark:                                                      | ID of the stream                                                        |
| `stream_patch_payload`                                                  | [Shared::StreamPatchPayload](../../models/shared/streampatchpayload.md) | :heavy_check_mark:                                                      | N/A                                                                     |


### Response

**[T.nilable(Operations::UpdateStreamResponse)](../../models/operations/updatestreamresponse.md)**


## create_clip

Create a clip from a livestream


### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Shared::ClipPayload.new(
  request=Shared::ClipPayload.new(
    playback_id="string",
    start_time=9418.72,
    end_time=767.7,
    name="string",
    session_id="string",
  ),
)
    
res = s.stream.create_clip(req)

if ! res.data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                 | Type                                                      | Required                                                  | Description                                               |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `request`                                                 | [Shared::ClipPayload](../../models/shared/clippayload.md) | :heavy_check_mark:                                        | The request object to use for the request.                |


### Response

**[T.nilable(Operations::PostClipResponse)](../../models/operations/postclipresponse.md)**


## get_all_clips

Retrieve clips of a livestream

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetStreamIdClipsRequest.new(
  path_params=Operations::GetStreamIdClipsRequest.new(
    id="<ID>",
  ),
)
    
res = s.stream.get_all_clips(req)

if ! res.data.nil?
  # handle response
end

```

### Parameters

| Parameter                                              | Type                                                   | Required                                               | Description                                            |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| `id`                                                   | *String*                                               | :heavy_check_mark:                                     | ID of the parent stream or playbackId of parent stream |


### Response

**[T.nilable(Operations::GetStreamIdClipsResponse)](../../models/operations/getstreamidclipsresponse.md)**

