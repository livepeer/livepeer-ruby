# Asset


### Available Operations

* [get_all](#get_all) - Retrieve assets
* [create](#create) - Upload an asset
* [create_via_url](#create_via_url) - Upload asset via URL
* [delete](#delete) - Delete an asset
* [get](#get) - Retrieves an asset
* [update](#update) - Patch an asset

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

if ! res.classes.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetAssetsResponse)](../../models/operations/getassetsresponse.md)**


## create

To upload an asset, your first need to request for a direct upload URL
and only then actually upload the contents of the asset.
\
\
Once you created a upload link, you have 2 options, resumable or direct
upload. For a more reliable experience, you should use resumable uploads
which will work better for users with unreliable or slow network
connections. If you want a simpler implementation though, you should
just use a direct upload.


## Direct Upload
For a direct upload, make a PUT request to the URL received in the url
field of the response above, with the raw video file as the request
body. response above:


## Resumable Upload
Livepeer supports resumable uploads via Tus. This section provides a
simple example of how to use tus-js-client to upload a video file.
\
\
From the previous section, we generated a URL to upload a video file to
Livepeer on POST /api/asset/request-upload. You should use the
tusEndpoint field of the response to upload the video file and track the
progress:

``` 
# This assumes there is an `input` element of `type="file"` with id
`fileInput` in the HTML


const input = document.getElementById('fileInput');

const file = input.files[0];

const upload = new tus.Upload(file, {
  endpoint: tusEndpoint, // URL from `tusEndpoint` field in the
`/request-upload` response
  metadata: {
    filename,
    filetype: 'video/mp4',
  },
  uploadSize: file.size,
  onError(err) {
    console.error('Error uploading file:', err);
  },
  onProgress(bytesUploaded, bytesTotal) {
    const percentage = ((bytesUploaded / bytesTotal) * 100).toFixed(2);
    console.log('Uploaded ' + percentage + '%');
  },
  onSuccess() {
    console.log('Upload finished:', upload.url);
  },
});

const previousUploads = await upload.findPreviousUploads();

if (previousUploads.length > 0) {
  upload.resumeFromPreviousUpload(previousUploads[0]);
}

upload.start();

```

> Note: If you are using tus from node.js, you need to add a custom URL
storage to enable resuming from previous uploads. On the browser, this
is enabled by default using local storage. In node.js, add urlStorage:
new tus.FileUrlStorage("path/to/tmp/file"), to the UploadFile object
definition above.


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
      webhook_id="string",
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
    c2pa=false,
  ),
)
    
res = s.asset.create(req)

if ! res.object.nil?
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
      webhook_id="string",
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
    c2pa=false,
  ),
)
    
res = s.asset.create_via_url(req)

if ! res.object.nil?
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

Patch an asset

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::UpdateAssetRequest.new(
  path_params=Operations::UpdateAssetRequest.new(
    asset_id="string",
    asset_patch_payload=Shared::AssetPatchPayload.new(
      name="filename.mp4",
      creator_id="string",
      playback_policy=Shared::PlaybackPolicy.new(
        type=Shared::Type::WEBHOOK,
        webhook_id="string",
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
      webhook_id="string",
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

**[T.nilable(Operations::UpdateAssetResponse)](../../models/operations/updateassetresponse.md)**

