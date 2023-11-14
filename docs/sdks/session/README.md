# Session


### Available Operations

* [get_all](#get_all) - Retrieve sessions
* [get](#get) - Retrieve a session
* [get_recorded](#get_recorded) - Retrieve Recorded Sessions
* [get_all_clips](#get_all_clips) - Retrieve clips of a session

## get_all

Retrieve sessions

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

    
res = s.session.get_all()

if ! res.data.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetSessionsResponse)](../../models/operations/getsessionsresponse.md)**


## get

Retrieve a session

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetSessionRequest.new(
  path_params=Operations::GetSessionRequest.new(
    id="<ID>",
  ),
)
    
res = s.session.get(req)

if ! res.session.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `id`               | *String*           | :heavy_check_mark: | ID of the session  |


### Response

**[T.nilable(Operations::GetSessionResponse)](../../models/operations/getsessionresponse.md)**


## get_recorded

Retrieve Recorded Sessions

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetRecordedSessionsRequest.new(
  path_params=Operations::GetRecordedSessionsRequest.new(
    parent_id="string",
    record=1,
  ),
  query_params=Operations::GetRecordedSessionsRequest.new(
    parent_id="string",
    record=1,
  ),
)
    
res = s.session.get_recorded(req)

if ! res.data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                              | Type                                                                   | Required                                                               | Description                                                            | Example                                                                |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| `parent_id`                                                            | *String*                                                               | :heavy_check_mark:                                                     | ID of the parent stream                                                |                                                                        |
| `record`                                                               | *Integer*                                                              | :heavy_minus_sign:                                                     | Flag indicating if the response should only include recorded<br/>sessions<br/> | 1                                                                      |


### Response

**[T.nilable(Operations::GetRecordedSessionsResponse)](../../models/operations/getrecordedsessionsresponse.md)**


## get_all_clips

Retrieve clips of a session

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetSessionIdClipsRequest.new(
  path_params=Operations::GetSessionIdClipsRequest.new(
    id="<ID>",
  ),
)
    
res = s.session.get_all_clips(req)

if ! res.data.nil?
  # handle response
end

```

### Parameters

| Parameter                | Type                     | Required                 | Description              |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `id`                     | *String*                 | :heavy_check_mark:       | ID of the parent session |


### Response

**[T.nilable(Operations::GetSessionIdClipsResponse)](../../models/operations/getsessionidclipsresponse.md)**

