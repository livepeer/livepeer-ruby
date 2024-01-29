<!-- Start SDK Example Usage -->
```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

    
res = s.get_all()

if ! res.classes.nil?
  # handle response
end

```
<!-- End SDK Example Usage -->