# Playback


### Available Operations

* [get](#get) - Retrieve Playback Info

## get

Retrieve Playback Info

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetPlaybackInfoRequest.new(
  path_params=Operations::GetPlaybackInfoRequest.new(
    id="<ID>",
  ),
)
    
res = s.playback.get(req)

if ! res.playback_info.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `id`                   | *String*               | :heavy_check_mark:     | The ID of the playback |


### Response

**[T.nilable(Operations::GetPlaybackInfoResponse)](../../models/operations/getplaybackinforesponse.md)**

