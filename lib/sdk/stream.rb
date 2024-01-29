# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module Livepeer
  extend T::Sig
  class Stream

    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(streamsonly: T.nilable(String)).returns(Utils::FieldAugmented) }
    def get_all(streamsonly = nil)
      # get_all - Retrieve streams
      request = Operations::GetStreamsRequest.new(
        
        streamsonly: streamsonly
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/stream"
      headers = {}
      query_params = Utils.get_query_params(Operations::GetStreamsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetStreamsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::Stream])
          res.classes = out
        end
      end
      res
    end

    sig { params(request: Shared::NewStreamPayload).returns(Utils::FieldAugmented) }
    def create(request)
      # create - Create a stream
      # The only parameter you are required to set is the name of your stream,
      # but we also highly recommend that you define transcoding profiles
      # parameter that suits your specific broadcasting configuration.
      # \
      # \
      # If you do not define transcoding rendition profiles when creating the
      # stream, a default set of profiles will be used. These profiles include
      # 240p,  360p, 480p and 720p.
      # \
      # \
      # The playback policy is set to public by default for new streams. It can
      # also be added upon the creation of a new stream by adding
      # `"playbackPolicy": {"type": "jwt"}`
      # 
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/stream"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::CreateStreamResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::Stream])
          res.classes = out
        end
      end
      res
    end

    sig { params(id: String).returns(Utils::FieldAugmented) }
    def delete(id)
      # delete - Delete a stream
      # 
      # This will also suspend any active stream sessions, so make sure to wait
      # until the stream has finished. To explicitly interrupt an active
      # session, consider instead updating the suspended field in the stream
      # using the PATCH stream API.
      # 
      request = Operations::DeleteStreamRequest.new(
        
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::DeleteStreamRequest,
        base_url,
        '/stream/{id}',
        request
      )
      headers = {}
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeleteStreamResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      end
      res
    end

    sig { params(id: String).returns(Utils::FieldAugmented) }
    def get(id)
      # get - Retrieve a stream
      request = Operations::GetStreamRequest.new(
        
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetStreamRequest,
        base_url,
        '/stream/{id}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetStreamResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Shared::Stream)
          res.stream = out
        end
      end
      res
    end

    sig { params(id: String, stream_patch_payload: Shared::StreamPatchPayload).returns(Utils::FieldAugmented) }
    def update(id, stream_patch_payload)
      # update - Update a stream
      request = Operations::UpdateStreamRequest.new(
        
        id: id,
        stream_patch_payload: stream_patch_payload
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdateStreamRequest,
        base_url,
        '/stream/{id}',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :stream_patch_payload, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.patch(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::UpdateStreamResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      end
      res
    end

    sig { params(id: String).returns(Utils::FieldAugmented) }
    def terminate(id)
      # terminate - Terminates a live stream
      # `DELETE /stream/{id}/terminate` can be used to terminate an ongoing
      # session on a live stream. Unlike suspending the stream, it allows the
      # streamer to restart streaming even immediately, but it will force
      # terminate the current session and stop the recording.
      # \
      # \
      # A 204 No Content status response indicates the stream was successfully
      # terminated.
      # 
      request = Operations::TerminateStreamRequest.new(
        
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::TerminateStreamRequest,
        base_url,
        '/stream/{id}/terminate',
        request
      )
      headers = {}
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::TerminateStreamResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      end
      res
    end

    sig { params(request: Shared::ClipPayload).returns(Utils::FieldAugmented) }
    def create_clip(request)
      # create_clip - Create a clip
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/clip"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::PostClipResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::PostClipResponseBody)
          res.object = out
        end
      end
      res
    end

    sig { params(id: String).returns(Utils::FieldAugmented) }
    def get_all_clips(id)
      # get_all_clips - Retrieve clips of a livestream
      request = Operations::GetStreamIdClipsRequest.new(
        
        id: id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetStreamIdClipsRequest,
        base_url,
        '/stream/{id}/clips',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetStreamIdClipsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[Shared::Asset])
          res.classes = out
        end
      end
      res
    end

    sig { params(id: String, target_add_payload: Shared::TargetAddPayload).returns(Utils::FieldAugmented) }
    def create_multistream_target(id, target_add_payload)
      # create_multistream_target - Add a multistream target
      request = Operations::AddMultistreamTargetRequest.new(
        
        id: id,
        target_add_payload: target_add_payload
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::AddMultistreamTargetRequest,
        base_url,
        '/stream/{id}/create-multistream-target',
        request
      )
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :target_add_payload, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::AddMultistreamTargetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      end
      res
    end

    sig { params(id: String, target_id: String).returns(Utils::FieldAugmented) }
    def delete_multistream_target(id, target_id)
      # delete_multistream_target - Remove a multistream target
      request = Operations::RemoveMultistreamTargetRequest.new(
        
        id: id,
        target_id: target_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::RemoveMultistreamTargetRequest,
        base_url,
        '/stream/{id}/multistream/{targetId}',
        request
      )
      headers = {}
      headers['Accept'] = '*/*'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::RemoveMultistreamTargetResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      end
      res
    end
  end
end
