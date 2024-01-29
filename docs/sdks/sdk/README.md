# SDK


## Overview

Livepeer API Reference: Welcome to the Livepeer API reference docs. Here you will find all the
endpoints exposed on the standard Livepeer API, learn how to use them and
what they return.


### Available Operations

* [get_all](#get_all) - Retrieves signing keys

## get_all

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

    
res = s.get_all()

if ! res.classes.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetSigningKeysResponse)](../../models/operations/getsigningkeysresponse.md)**

