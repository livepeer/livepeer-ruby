# AccessControl


### Available Operations

* [get_signing_keys](#get_signing_keys) - Retrieves signing keys
* [create_signing_key](#create_signing_key) - Create a signing key
* [delete_signing_key](#delete_signing_key) - Delete Signing Key
* [get_signing_key](#get_signing_key) - Retrieves a signing key
* [update_signing_key](#update_signing_key) - Update a signing key

## get_signing_keys

Retrieves signing keys

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

    
res = s.access_control.get_signing_keys()

if ! res.data.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetSigningKeysResponse)](../../models/operations/getsigningkeysresponse.md)**


## create_signing_key

Create a signing key

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

    
res = s.access_control.create_signing_key()

if ! res.signing_key_response_payload.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::CreateSigningKeyResponse)](../../models/operations/createsigningkeyresponse.md)**


## delete_signing_key

Delete Signing Key

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::DeleteSigningKeyRequest.new(
  path_params=Operations::DeleteSigningKeyRequest.new(
    key_id="string",
  ),
)
    
res = s.access_control.delete_signing_key(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `key_id`              | *String*              | :heavy_check_mark:    | ID of the signing key |


### Response

**[T.nilable(Operations::DeleteSigningKeyResponse)](../../models/operations/deletesigningkeyresponse.md)**


## get_signing_key

Retrieves a signing key

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetSigningKeyRequest.new(
  path_params=Operations::GetSigningKeyRequest.new(
    key_id="string",
  ),
)
    
res = s.access_control.get_signing_key(req)

if ! res.signing_key.nil?
  # handle response
end

```

### Parameters

| Parameter             | Type                  | Required              | Description           |
| --------------------- | --------------------- | --------------------- | --------------------- |
| `key_id`              | *String*              | :heavy_check_mark:    | ID of the signing key |


### Response

**[T.nilable(Operations::GetSigningKeyResponse)](../../models/operations/getsigningkeyresponse.md)**


## update_signing_key

Update a signing key

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::UpdateSigningKeyRequest.new(
  path_params=Operations::UpdateSigningKeyRequest.new(
    key_id="string",
    request_body=Operations::UpdateSigningKeyRequestBody.new(
      disabled=false,
      name="string",
    ),
  ),
  request_body=Operations::UpdateSigningKeyRequestBody.new(
    disabled=false,
    name="string",
  ),
)
    
res = s.access_control.update_signing_key(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `key_id`                                                                                          | *String*                                                                                          | :heavy_check_mark:                                                                                | ID of the signing key                                                                             |
| `request_body`                                                                                    | [Operations::UpdateSigningKeyRequestBody](../../models/operations/updatesigningkeyrequestbody.md) | :heavy_check_mark:                                                                                | N/A                                                                                               |


### Response

**[T.nilable(Operations::UpdateSigningKeyResponse)](../../models/operations/updatesigningkeyresponse.md)**

