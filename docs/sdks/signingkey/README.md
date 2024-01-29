# SigningKey


### Available Operations

* [create](#create) - Create a signing key
* [delete](#delete) - Delete Signing Key
* [get](#get) - Retrieves a signing key
* [update](#update) - Update a signing key

## create


The publicKey is a representation of the public key, encoded as base 64 and is passed as a string, and  the privateKey is displayed only on creation. This is the only moment where the client can save the private key, otherwise it will be lost. Remember to decode your string when signing JWTs.
Up to 10 signing keys can be generated, after that you must delete at least one signing key to create a new one.


### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

    
res = s.signing_key.create()

if ! res.signing_key.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::CreateSigningKeyResponse)](../../models/operations/createsigningkeyresponse.md)**


## delete

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
    
res = s.signing_key.delete(req)

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


## get

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
    
res = s.signing_key.get(req)

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


## update

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
    
res = s.signing_key.update(req)

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

