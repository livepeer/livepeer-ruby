# Livepeer Ruby Library

The Livepeer Ruby library provides convenient access to the Livepeer Studio API from applications written in Ruby.

## Documentation

For full documentation and examples, please visit [docs.livepeer.org](https://docs.livepeer.org/sdks/ruby/).

## Installation

Install the library:

```bash
gem install livepeer
```

If you want to build the gem from source:

```bash
gem build livepeer.gemspec
```

### Requirements

- Ruby: = 3.0

## Usage

The library needs to be configured with your Livepeer Studio account's API key, which is available in the [Studio Dashboard](httpss://livepeer.studio)

```ruby
require_relative livepeer


lpClient = Livepeer::SDK.new
lpClient.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)


res = lpClient.stream.get_all()

if ! res.data.nil?
  # handle response
end

```

## Available Resources and Operations

### [Stream](docs/sdks/stream/README.md)

- [get_all](docs/sdks/stream/README.md#get_all) - Retrieve streams
- [create](docs/sdks/stream/README.md#create) - Create a stream
- [delete](docs/sdks/stream/README.md#delete) - Delete a stream
- [get](docs/sdks/stream/README.md#get) - Retrieve a stream
- [update](docs/sdks/stream/README.md#update) - Update a stream
- [create_clip](docs/sdks/stream/README.md#create_clip) - Create a clip
- [get_all_clips](docs/sdks/stream/README.md#get_all_clips) - Retrieve clips of a livestream

### [MultistreamTarget](docs/sdks/multistreamtarget/README.md)

- [get_all](docs/sdks/multistreamtarget/README.md#get_all) - Retrieve Multistream Targets
- [create](docs/sdks/multistreamtarget/README.md#create) - Create a multistream target
- [delete](docs/sdks/multistreamtarget/README.md#delete) - Delete a multistream target
- [get](docs/sdks/multistreamtarget/README.md#get) - Retrieve a multistream target
- [update](docs/sdks/multistreamtarget/README.md#update) - Update Multistream Target

### [Webhook](docs/sdks/webhook/README.md)

- [get_all](docs/sdks/webhook/README.md#get_all) - Retrieve a Webhook
- [create](docs/sdks/webhook/README.md#create) - Create a webhook
- [delete](docs/sdks/webhook/README.md#delete) - Delete a webhook
- [get](docs/sdks/webhook/README.md#get) - Retrieve a webhook
- [update](docs/sdks/webhook/README.md#update) - Update a webhook

### [Asset](docs/sdks/asset/README.md)

- [get_all](docs/sdks/asset/README.md#get_all) - Retrieve assets
- [create](docs/sdks/asset/README.md#create) - Upload an asset
- [create_via_url](docs/sdks/asset/README.md#create_via_url) - Upload asset via URL
- [delete](docs/sdks/asset/README.md#delete) - Delete an asset
- [get](docs/sdks/asset/README.md#get) - Retrieves an asset
- [update](docs/sdks/asset/README.md#update) - Update an asset

### [Metrics](docs/sdks/metrics/README.md)

- [get_viewership](docs/sdks/metrics/README.md#get_viewership) - Query viewership metrics
- [get_creator_viewership](docs/sdks/metrics/README.md#get_creator_viewership) - Query creator viewership metrics
- [get_public_total_views](docs/sdks/metrics/README.md#get_public_total_views) - Query public total views metrics
- [get_usage](docs/sdks/metrics/README.md#get_usage) - Query usage metrics

### [Session](docs/sdks/session/README.md)

- [get_all](docs/sdks/session/README.md#get_all) - Retrieve sessions
- [get](docs/sdks/session/README.md#get) - Retrieve a session
- [get_recorded](docs/sdks/session/README.md#get_recorded) - Retrieve Recorded Sessions
- [get_all_clips](docs/sdks/session/README.md#get_all_clips) - Retrieve clips of a session

### [AccessControl](docs/sdks/accesscontrol/README.md)

- [get_signing_keys](docs/sdks/accesscontrol/README.md#get_signing_keys) - Retrieves signing keys
- [create_signing_key](docs/sdks/accesscontrol/README.md#create_signing_key) - Create a signing key
- [delete_signing_key](docs/sdks/accesscontrol/README.md#delete_signing_key) - Delete Signing Key
- [get_signing_key](docs/sdks/accesscontrol/README.md#get_signing_key) - Retrieves a signing key
- [update_signing_key](docs/sdks/accesscontrol/README.md#update_signing_key) - Update a signing key

### [Task](docs/sdks/task/README.md)

- [get_all](docs/sdks/task/README.md#get_all) - Retrieve Tasks
- [get](docs/sdks/task/README.md#get) - Retrieve a Task

### [Transcode](docs/sdks/transcode/README.md)

- [create](docs/sdks/transcode/README.md#create) - Transcode a video

### [Playback](docs/sdks/playback/README.md)

- [get](docs/sdks/playback/README.md#get) - Retrieve Playback Info
