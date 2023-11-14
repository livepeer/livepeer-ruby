# Asset


### Available Operations

* [get_all](#get_all) - Retrieve assets
* [create](#create) - Upload an asset
* [create_via_url](#create_via_url) - Upload asset via URL
* [delete](#delete) - Delete an asset
* [get](#get) - Retrieves an asset
* [update](#update) - Update an asset

## get_all

Retrieve assets

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

    
res = s.asset.get_all()

if ! res.data.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetAssetsResponse)](../../models/operations/getassetsresponse.md)**


## create

Upload an asset

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Shared::NewAssetPayload.new(
  request=Shared::NewAssetPayload.new(
    name="filename.mp4",
    static_mp4=true,
    playback_policy=Shared::PlaybackPolicy.new(
      type=Shared::Type::JWT,
      webhook_id="3e02c844-d364-4d48-b401-24b2773b5d6c",
      webhook_context=.new{
        "bluetooth": "string",
      },
    ),
    creator_id="string",
    storage=Shared::NewAssetPayloadStorage.new(
      ipfs="string",
    ),
    url="https://s3.amazonaws.com/my-bucket/path/filename.mp4",
    encryption=Shared::NewAssetPayloadEncryption.new(
      encrypted_key="string",
    ),
  ),
)
    
res = s.asset.create(req)

if ! res.data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `request`                                                         | [Shared::NewAssetPayload](../../models/shared/newassetpayload.md) | :heavy_check_mark:                                                | The request object to use for the request.                        |


### Response

**[T.nilable(Operations::RequestUploadResponse)](../../models/operations/requestuploadresponse.md)**


## create_via_url

Upload asset via URL

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Shared::NewAssetPayload.new(
  request=Shared::NewAssetPayload.new(
    name="filename.mp4",
    static_mp4=true,
    playback_policy=Shared::PlaybackPolicy.new(
      type=Shared::Type::WEBHOOK,
      webhook_id="3e02c844-d364-4d48-b401-24b2773b5d6c",
      webhook_context=.new{
        "Arsenic": "string",
      },
    ),
    creator_id="string",
    storage=Shared::NewAssetPayloadStorage.new(
      ipfs="string",
    ),
    url="https://s3.amazonaws.com/my-bucket/path/filename.mp4",
    encryption=Shared::NewAssetPayloadEncryption.new(
      encrypted_key="string",
    ),
  ),
)
    
res = s.asset.create_via_url(req)

if ! res.data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `request`                                                         | [Shared::NewAssetPayload](../../models/shared/newassetpayload.md) | :heavy_check_mark:                                                | The request object to use for the request.                        |


### Response

**[T.nilable(Operations::UploadAssetViaURLResponse)](../../models/operations/uploadassetviaurlresponse.md)**


## delete

Delete an asset

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::DeleteAssetRequest.new(
  path_params=Operations::DeleteAssetRequest.new(
    asset_id="string",
  ),
)
    
res = s.asset.delete(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `asset_id`         | *String*           | :heavy_check_mark: | ID of the asset    |


### Response

**[T.nilable(Operations::DeleteAssetResponse)](../../models/operations/deleteassetresponse.md)**


## get

Retrieves an asset

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetAssetRequest.new(
  path_params=Operations::GetAssetRequest.new(
    asset_id="string",
  ),
)
    
res = s.asset.get(req)

if ! res.asset.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `asset_id`         | *String*           | :heavy_check_mark: | ID of the asset    |


### Response

**[T.nilable(Operations::GetAssetResponse)](../../models/operations/getassetresponse.md)**


## update

Update an asset

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::PatchAssetAssetIdRequest.new(
  path_params=Operations::PatchAssetAssetIdRequest.new(
    asset_id="string",
    asset_patch_payload=Shared::AssetPatchPayload.new(
      name="filename.mp4",
      creator_id="string",
      playback_policy=Shared::PlaybackPolicy.new(
        type=Shared::Type::WEBHOOK,
        webhook_id="3e02c844-d364-4d48-b401-24b2773b5d6c",
        webhook_context=.new{
          "New": "string",
        },
      ),
      storage=Shared::Storage.new(
        ipfs="string",
      ),
    ),
  ),
  asset_patch_payload=Shared::AssetPatchPayload.new(
    name="filename.mp4",
    creator_id="string",
    playback_policy=Shared::PlaybackPolicy.new(
      type=Shared::Type::JWT,
      webhook_id="3e02c844-d364-4d48-b401-24b2773b5d6c",
      webhook_context=.new{
        "male": "string",
      },
    ),
    storage=Shared::Storage.new(
      ipfs="string",
    ),
  ),
)
    
res = s.asset.update(req)

if ! res.asset.nil?
  # handle response
end

```

### Parameters

| Parameter                                                             | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `asset_id`                                                            | *String*                                                              | :heavy_check_mark:                                                    | ID of the asset                                                       |
| `asset_patch_payload`                                                 | [Shared::AssetPatchPayload](../../models/shared/assetpatchpayload.md) | :heavy_check_mark:                                                    | N/A                                                                   |


### Response

**[T.nilable(Operations::PatchAssetAssetIdResponse)](../../models/operations/patchassetassetidresponse.md)**

