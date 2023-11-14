# Metrics


### Available Operations

* [get_viewership](#get_viewership) - Query viewership metrics
* [get_creator_viewership](#get_creator_viewership) - Query creator viewership metrics
* [get_public_total_views](#get_public_total_views) - Query public total views metrics
* [get_usage](#get_usage) - Query usage metrics

## get_viewership

Query viewership metrics

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetViewershipsMetricsRequest.new(
  query_params=Operations::GetViewershipsMetricsRequest.new(
    playback_id="string",
    from="string",
    to="string",
    time_step=Operations::TimeStep::YEAR,
    asset_id="string",
    stream_id="string",
    creator_id="string",
    breakdown_by=.new[
      Operations::BreakdownBy::CREATOR_ID,
    ],
  ),
)
    
res = s.metrics.get_viewership(req)

if ! res.data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `request`                                                                                           | [Operations::GetViewershipsMetricsRequest](../../models/operations/getviewershipsmetricsrequest.md) | :heavy_check_mark:                                                                                  | The request object to use for the request.                                                          |


### Response

**[T.nilable(Operations::GetViewershipsMetricsResponse)](../../models/operations/getviewershipsmetricsresponse.md)**


## get_creator_viewership

Query creator viewership metrics

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetCreatorMetricsRequest.new(
  query_params=Operations::GetCreatorMetricsRequest.new(
    from="string",
    to="string",
    time_step=Operations::QueryParamTimeStep::DAY,
    asset_id="string",
    stream_id="string",
    creator_id="string",
    breakdown_by=.new[
      Operations::QueryParamBreakdownBy::DEVICE,
    ],
  ),
)
    
res = s.metrics.get_creator_viewership(req)

if ! res.data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `request`                                                                                   | [Operations::GetCreatorMetricsRequest](../../models/operations/getcreatormetricsrequest.md) | :heavy_check_mark:                                                                          | The request object to use for the request.                                                  |


### Response

**[T.nilable(Operations::GetCreatorMetricsResponse)](../../models/operations/getcreatormetricsresponse.md)**


## get_public_total_views

Query public total views metrics

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetPublicTotalViewsMetricsRequest.new(
  path_params=Operations::GetPublicTotalViewsMetricsRequest.new(
    playback_id="string",
  ),
)
    
res = s.metrics.get_public_total_views(req)

if ! res.data.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                             | Type                                                                                                                                                  | Required                                                                                                                                              | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `playback_id`                                                                                                                                         | *String*                                                                                                                                              | :heavy_check_mark:                                                                                                                                    | The playback ID to filter the query results. This can be a canonical<br/>playback ID from Livepeer assets or streams, or dStorage identifiers<br/>for assets<br/> |


### Response

**[T.nilable(Operations::GetPublicTotalViewsMetricsResponse)](../../models/operations/getpublictotalviewsmetricsresponse.md)**


## get_usage

Query usage metrics

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Operations::GetUsageMetricsRequest.new(
  query_params=Operations::GetUsageMetricsRequest.new(
    from=224089,
    to=231125,
    time_step=Operations::GetUsageMetricsQueryParamTimeStep::DAY,
    creator_id="string",
  ),
)
    
res = s.metrics.get_usage(req)

if ! res.usage_metric.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `from`                                                                                                        | *Integer*                                                                                                     | :heavy_minus_sign:                                                                                            | Start millis timestamp for the query range (inclusive)<br/>                                                   |
| `to`                                                                                                          | *Integer*                                                                                                     | :heavy_minus_sign:                                                                                            | End millis timestamp for the query range (exclusive)<br/>                                                     |
| `time_step`                                                                                                   | [Operations::GetUsageMetricsQueryParamTimeStep](../../models/operations/getusagemetricsqueryparamtimestep.md) | :heavy_minus_sign:                                                                                            | The time step to aggregate viewership metrics by<br/>                                                         |
| `creator_id`                                                                                                  | *String*                                                                                                      | :heavy_minus_sign:                                                                                            | The creator ID to filter the query results<br/>                                                               |


### Response

**[T.nilable(Operations::GetUsageMetricsResponse)](../../models/operations/getusagemetricsresponse.md)**

