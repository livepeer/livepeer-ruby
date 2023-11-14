# MultistreamTarget


### Available Operations

* [get_all](#get_all) - Retrieve Multistream Targets
* [create](#create) - Create a multistream target
* [delete](#delete) - Delete a multistream target
* [get](#get) - Retrieve a multistream target
* [update](#update) - Update Multistream Target

## get_all

Retrieve Multistream Targets

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

    
res = s.multistream_target.get_all()

if ! res.data.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetMultistreamTargetsResponse)](../../models/operations/getmultistreamtargetsresponse.md)**


## create

Create a multistream target

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Shared::MultistreamTargetInput.new(
  request=Shared::MultistreamTargetInput.new(
    name="My Multistream Target",
    url="rtmps://live.my-service.tv/channel/secretKey",
    disabled=false,
  ),
)
    
res = s.multistream_target.create(req)

if ! res.classes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `request`                                                                       | [Shared::MultistreamTargetInput](../../models/shared/multistreamtargetinput.md) | :heavy_check_mark:                                                              | The request object to use for the request.                                      |


### Response

**[T.nilable(Operations::CreateMultistreamTargetResponse)](../../models/operations/createmultistreamtargetresponse.md)**


## delete

Delete a multistream target

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::DeleteMultistreamTargetRequest.new(
  path_params=Operations::DeleteMultistreamTargetRequest.new(
    id="<ID>",
  ),
)
    
res = s.multistream_target.delete(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `id`                         | *String*                     | :heavy_check_mark:           | ID of the multistream target |


### Response

**[T.nilable(Operations::DeleteMultistreamTargetResponse)](../../models/operations/deletemultistreamtargetresponse.md)**


## get

Retrieve a multistream target

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetMultistreamTargetRequest.new(
  path_params=Operations::GetMultistreamTargetRequest.new(
    id="<ID>",
  ),
)
    
res = s.multistream_target.get(req)

if ! res.multistream_target.nil?
  # handle response
end

```

### Parameters

| Parameter                    | Type                         | Required                     | Description                  |
| ---------------------------- | ---------------------------- | ---------------------------- | ---------------------------- |
| `id`                         | *String*                     | :heavy_check_mark:           | ID of the multistream target |


### Response

**[T.nilable(Operations::GetMultistreamTargetResponse)](../../models/operations/getmultistreamtargetresponse.md)**


## update

Update Multistream Target

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::UpdateMultistreamTargetRequest.new(
  path_params=Operations::UpdateMultistreamTargetRequest.new(
    id="<ID>",
    multistream_target_patch_payload=Shared::MultistreamTargetPatchPayload.new(
      name="My Multistream Target",
      url="rtmps://live.my-service.tv/channel/secretKey",
      disabled=false,
    ),
  ),
  multistream_target_patch_payload=Shared::MultistreamTargetPatchPayload.new(
    name="My Multistream Target",
    url="rtmps://live.my-service.tv/channel/secretKey",
    disabled=false,
  ),
)
    
res = s.multistream_target.update(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `id`                                                                                          | *String*                                                                                      | :heavy_check_mark:                                                                            | ID of the multistream target                                                                  |
| `multistream_target_patch_payload`                                                            | [Shared::MultistreamTargetPatchPayload](../../models/shared/multistreamtargetpatchpayload.md) | :heavy_check_mark:                                                                            | N/A                                                                                           |


### Response

**[T.nilable(Operations::UpdateMultistreamTargetResponse)](../../models/operations/updatemultistreamtargetresponse.md)**

