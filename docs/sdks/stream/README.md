# Stream


### Available Operations

* [get_all](#get_all) - Retrieve streams
* [create](#create) - Create a stream
* [delete](#delete) - Delete a stream
* [get](#get) - Retrieve a stream
* [update](#update) - Update a stream
* [terminate](#terminate) - Terminates a live stream
* [create_clip](#create_clip) - Create a clip
* [get_all_clips](#get_all_clips) - Retrieve clips of a livestream
* [create_multistream_target](#create_multistream_target) - Add a multistream target
* [delete_multistream_target](#delete_multistream_target) - Remove a multistream target

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

if ! res.classes.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `streamsonly`      | *String*           | :heavy_minus_sign: | N/A                |


### Response

**[T.nilable(Operations::GetStreamsResponse)](../../models/operations/getstreamsresponse.md)**


## create

The only parameter you are required to set is the name of your stream,
but we also highly recommend that you define transcoding profiles
parameter that suits your specific broadcasting configuration.
\
\
If you do not define transcoding rendition profiles when creating the
stream, a default set of profiles will be used. These profiles include
240p,  360p, 480p and 720p.
\
\
The playback policy is set to public by default for new streams. It can
also be added upon the creation of a new stream by adding
`"playbackPolicy": {"type": "jwt"}`


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
      webhook_id="string",
      webhook_context=.new{
        "bluetooth": "string",
      },
    ),
    profiles=.new[
      Shared::FfmpegProfile.new(
        width=859213,
        name="720p",
        height=417458,
        bitrate=288408,
        fps=134365,
        fps_den=786546,
        quality=69025,
        gop="string",
        profile=Shared::Profile::H264_CONSTRAINED_HIGH,
        encoder=Shared::Encoder::VP9,
      ),
    ],
    record=false,
    multistream=Shared::Multistream.new(
      targets=.new[
        Shared::Target.new(
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

if ! res.classes.nil?
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


This will also suspend any active stream sessions, so make sure to wait
until the stream has finished. To explicitly interrupt an active
session, consider instead updating the suspended field in the stream
using the PATCH stream API.


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
          Shared::Target.new(
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
        webhook_id="string",
        webhook_context=.new{
          "New": "string",
        },
      ),
      profiles=.new[
        Shared::FfmpegProfile.new(
          width=344620,
          name="720p",
          height=708455,
          bitrate=991464,
          fps=270324,
          fps_den=627690,
          quality=684199,
          gop="string",
          profile=Shared::Profile::H264_MAIN,
          encoder=Shared::Encoder::HEVC,
        ),
      ],
    ),
  ),
  stream_patch_payload=Shared::StreamPatchPayload.new(
    creator_id="string",
    record=false,
    suspended=false,
    multistream=Shared::Multistream.new(
      targets=.new[
        Shared::Target.new(
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
      webhook_id="string",
      webhook_context=.new{
        "Arizona": "string",
      },
    ),
    profiles=.new[
      Shared::FfmpegProfile.new(
        width=278281,
        name="720p",
        height=896501,
        bitrate=499557,
        fps=446863,
        fps_den=369182,
        quality=311507,
        gop="string",
        profile=Shared::Profile::H264_CONSTRAINED_HIGH,
        encoder=Shared::Encoder::H264,
      ),
    ],
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


## terminate

`DELETE /stream/{id}/terminate` can be used to terminate an ongoing
session on a live stream. Unlike suspending the stream, it allows the
streamer to restart streaming even immediately, but it will force
terminate the current session and stop the recording.
\
\
A 204 No Content status response indicates the stream was successfully
terminated.


### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::TerminateStreamRequest.new(
  path_params=Operations::TerminateStreamRequest.new(
    id="<ID>",
  ),
)
    
res = s.stream.terminate(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | ID of the stream   |


### Response

**[T.nilable(Operations::TerminateStreamResponse)](../../models/operations/terminatestreamresponse.md)**


## create_clip

Create a clip

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

if ! res.object.nil?
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

if ! res.classes.nil?
  # handle response
end

```

### Parameters

| Parameter                                              | Type                                                   | Required                                               | Description                                            |
| ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| `id`                                                   | *String*                                               | :heavy_check_mark:                                     | ID of the parent stream or playbackId of parent stream |


### Response

**[T.nilable(Operations::GetStreamIdClipsResponse)](../../models/operations/getstreamidclipsresponse.md)**


## create_multistream_target

Add a multistream target

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::AddMultistreamTargetRequest.new(
  path_params=Operations::AddMultistreamTargetRequest.new(
    id="<ID>",
    target_add_payload=Shared::TargetAddPayload.new(
      profile="720p",
      video_only=false,
      id="<ID>",
      spec=Shared::TargetAddPayloadSpec.new(
        name="string",
        url="rtmps://live.my-service.tv/channel/secretKey",
      ),
    ),
  ),
  target_add_payload=Shared::TargetAddPayload.new(
    profile="720p",
    video_only=false,
    id="<ID>",
    spec=Shared::TargetAddPayloadSpec.new(
      name="string",
      url="rtmps://live.my-service.tv/channel/secretKey",
    ),
  ),
)
    
res = s.stream.create_multistream_target(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `id`                                                                | *String*                                                            | :heavy_check_mark:                                                  | ID of the parent stream                                             |
| `target_add_payload`                                                | [Shared::TargetAddPayload](../../models/shared/targetaddpayload.md) | :heavy_check_mark:                                                  | N/A                                                                 |


### Response

**[T.nilable(Operations::AddMultistreamTargetResponse)](../../models/operations/addmultistreamtargetresponse.md)**


## delete_multistream_target

Remove a multistream target

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::RemoveMultistreamTargetRequest.new(
  path_params=Operations::RemoveMultistreamTargetRequest.new(
    id="<ID>",
    target_id="string",
  ),
)
    
res = s.stream.delete_multistream_target(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `id`                         | *String*                     | :heavy_check_mark:           | ID of the parent stream      |
| `target_id`                  | *String*                     | :heavy_check_mark:           | ID of the multistream target |


### Response

**[T.nilable(Operations::RemoveMultistreamTargetResponse)](../../models/operations/removemultistreamtargetresponse.md)**

