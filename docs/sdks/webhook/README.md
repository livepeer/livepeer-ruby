# Webhook


### Available Operations

* [get_all](#get_all) - Retrieve a Webhook
* [create](#create) - Create a webhook
* [delete](#delete) - Delete a webhook
* [get](#get) - Retrieve a webhook
* [update](#update) - Update a webhook

## get_all

Retrieve a Webhook

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

    
res = s.webhook.get_all()

if ! res.classes.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetWebhooksResponse)](../../models/operations/getwebhooksresponse.md)**


## create

To create a new webhook, you need to make an API call with the events you want to listen for and the URL that will be called when those events occur.


### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

    
res = s.webhook.create()

if ! res.webhook.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::CreateWebhookResponse)](../../models/operations/createwebhookresponse.md)**


## delete

Delete a webhook

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::DeleteWebhookRequest.new(
  path_params=Operations::DeleteWebhookRequest.new(
    id="<ID>",
  ),
)
    
res = s.webhook.delete(req)

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(Operations::DeleteWebhookResponse)](../../models/operations/deletewebhookresponse.md)**


## get

Retrieve a webhook

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetWebhookRequest.new(
  path_params=Operations::GetWebhookRequest.new(
    id="<ID>",
  ),
)
    
res = s.webhook.get(req)

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(Operations::GetWebhookResponse)](../../models/operations/getwebhookresponse.md)**


## update

Update a webhook

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::UpdateWebhookRequest.new(
  path_params=Operations::UpdateWebhookRequest.new(
    id="<ID>",
  ),
)
    
res = s.webhook.update(req)

if ! res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | N/A                |


### Response

**[T.nilable(Operations::UpdateWebhookResponse)](../../models/operations/updatewebhookresponse.md)**

