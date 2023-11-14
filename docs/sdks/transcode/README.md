# Transcode


### Available Operations

* [create](#create) - Transcode a video

## create

Transcode a video

### Example Usage

```ruby
require_relative livepeer


s = Livepeer::SDK.new
s.config_security(
  security=Shared::Security.new(
    api_key="",
  )
)

   
req = Shared::TaskInput.new(
  request=Shared::TaskInput.new(
    type=Shared::TaskType::EXPORT_DATA,
    input_asset_id="09F8B46C-61A0-4254-9875-F71F4C605BC7",
    output_asset_id="09F8B46C-61A0-4254-9875-F71F4C605BC7",
    params=Shared::Params.new(
      upload=Shared::TaskUpload.new(
        url="https://cdn.livepeer.com/ABC123/filename.mp4",
        encryption=Shared::Encryption.new(
          encrypted_key="string",
        ),
        recorded_session_id="78df0075-b5f3-4683-a618-1086faca35dc",
      ),
      import=Shared::Upload.new(
        url="https://cdn.livepeer.com/ABC123/filename.mp4",
        encryption=Shared::Encryption.new(
          encrypted_key="string",
        ),
        recorded_session_id="78df0075-b5f3-4683-a618-1086faca35dc",
      ),
      export="string",
      export_data=Shared::ExportData.new(
        content=Shared::Content.new(),
        ipfs=Shared::IpfsExportParams.new(
          nft_metadata_template=Shared::NftMetadataTemplate::FILE,
          nft_metadata=Shared::NftMetadata.new(),
          pinata="string",
        ),
        type="string",
        id="<ID>",
      ),
      transcode=Shared::Transcode.new(
        profile=Shared::FfmpegProfile.new(
          width=1280,
          name="720p",
          height=720,
          bitrate=4000,
          fps=30,
          fps_den=1,
          gop="60",
          profile=Shared::Profile::H264_HIGH,
          encoder=Shared::Encoder::H264,
        ),
      ),
      transcode_file=Shared::TranscodeFile.new(
        input=Shared::Input.new(
          url="https://cdn.livepeer.com/ABC123/filename.mp4",
        ),
        storage=Shared::TaskStorage.new(
          url="s3+https://accessKeyId:secretAccessKey@s3Endpoint/bucket",
        ),
        outputs=Shared::Outputs.new(
          hls=Shared::Hls.new(
            path="/samplevideo/hls",
          ),
          mp4=Shared::Mp4.new(
            path="/samplevideo/mp4",
          ),
        ),
        profiles=.new[
          Shared::FfmpegProfile.new(
            width=1280,
            name="720p",
            height=720,
            bitrate=4000,
            fps=30,
            fps_den=1,
            gop="60",
            profile=Shared::Profile::H264_HIGH,
            encoder=Shared::Encoder::H264,
          ),
        ],
        target_segment_size_secs=6384.24,
        creator_id="string",
      ),
    ),
    clip=Shared::Clip.new(
      url="https://impartial-dump.com",
      clip_strategy=Shared::ClipStrategy.new(
        start_time=7865.46,
        end_time=690.25,
        playback_id="string",
      ),
      catalyst_pipeline_strategy=Shared::CatalystPipelineStrategy::EXTERNAL,
      session_id="string",
      input_id="string",
    ),
    output=Shared::TaskOutput.new(
      upload=.new{
        "grey": "string",
      },
      import=.new{
        "technology": "string",
      },
      export=Shared::TaskExport.new(
        ipfs=Shared::TaskIpfsInput.new(
          video_file_cid="string",
          nft_metadata_cid="string",
        ),
      ),
      export_data=Shared::TaskExportData.new(
        ipfs=Shared::TaskSchemasIpfs.new(
          cid="string",
        ),
      ),
      transcode=Shared::TaskTranscode.new(
        asset=.new{
          "East": "string",
        },
      ),
    ),
  ),
)
    
res = s.transcode.create(req)

if ! res.task.nil?
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `request`                                             | [Shared::TaskInput](../../models/shared/taskinput.md) | :heavy_check_mark:                                    | The request object to use for the request.            |


### Response

**[T.nilable(Operations::TranscodeResponse)](../../models/operations/transcoderesponse.md)**

