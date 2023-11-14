# Task


### Available Operations

* [get_all](#get_all) - Retrieve Tasks
* [get](#get) - Retrieve a Task

## get_all

Retrieve Tasks

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

    
res = s.task.get_all()

if ! res.data.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetTasksResponse)](../../models/operations/gettasksresponse.md)**


## get

Retrieve a Task

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetTaskRequest.new(
  path_params=Operations::GetTaskRequest.new(
    task_id="string",
  ),
)
    
res = s.task.get(req)

if ! res.task.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `task_id`          | *String*           | :heavy_check_mark: | ID of the task     |


### Response

**[T.nilable(Operations::GetTaskResponse)](../../models/operations/gettaskresponse.md)**

