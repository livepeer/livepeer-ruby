# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Livepeer
  module Shared

    class Events < T::Enum
      enums do
        STREAM_STARTED = new('stream.started')
        STREAM_DETECTION = new('stream.detection')
        STREAM_IDLE = new('stream.idle')
        RECORDING_READY = new('recording.ready')
        RECORDING_STARTED = new('recording.started')
        RECORDING_WAITING = new('recording.waiting')
        MULTISTREAM_CONNECTED = new('multistream.connected')
        MULTISTREAM_ERROR = new('multistream.error')
        MULTISTREAM_DISCONNECTED = new('multistream.disconnected')
        PLAYBACK_USER_NEW = new('playback.user.new')
        PLAYBACK_ACCESS_CONTROL = new('playback.accessControl')
        ASSET_CREATED = new('asset.created')
        ASSET_UPDATED = new('asset.updated')
        ASSET_FAILED = new('asset.failed')
        ASSET_READY = new('asset.ready')
        ASSET_DELETED = new('asset.deleted')
        TASK_SPAWNED = new('task.spawned')
        TASK_UPDATED = new('task.updated')
        TASK_COMPLETED = new('task.completed')
        TASK_FAILED = new('task.failed')
      end
    end


    # failure timestamp and error message with status code
    class LastFailure < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # Webhook failure error message
      field :error, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('error') } }
      # Webhook failure response
      field :response, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('response') } }
      # Webhook failure status code
      field :status_code, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('statusCode') } }
      # Timestamp (in milliseconds) at which the webhook last failed
      field :timestamp, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('timestamp') } }


      sig { params(error: T.nilable(String), response: T.nilable(String), status_code: T.nilable(Float), timestamp: T.nilable(Float)).void }
      def initialize(error: nil, response: nil, status_code: nil, timestamp: nil)
        @error = error
        @response = response
        @status_code = status_code
        @timestamp = timestamp
      end
    end

    # status of webhook
    class Status < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # failure timestamp and error message with status code
      field :last_failure, T.nilable(Shared::LastFailure), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('lastFailure') } }
      # Timestamp (in milliseconds) at which the webhook last was
      # triggered
      # 
      field :last_triggered_at, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('lastTriggeredAt') } }


      sig { params(last_failure: T.nilable(Shared::LastFailure), last_triggered_at: T.nilable(Float)).void }
      def initialize(last_failure: nil, last_triggered_at: nil)
        @last_failure = last_failure
        @last_triggered_at = last_triggered_at
      end
    end


    class Webhook < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      field :url, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('url') } }
      # Timestamp (in milliseconds) at which stream object was created
      field :created_at, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('createdAt') } }

      field :events, T.nilable(T::Array[Shared::Events]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('events') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }
      # status of webhook
      field :status, T.nilable(Shared::Status), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('status') } }
      # streamId of the stream on which the webhook is applied
      field :stream_id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('streamId') } }


      sig { params(name: String, url: String, created_at: T.nilable(Float), events: T.nilable(T::Array[Shared::Events]), id: T.nilable(String), status: T.nilable(Shared::Status), stream_id: T.nilable(String)).void }
      def initialize(name: nil, url: nil, created_at: nil, events: nil, id: nil, status: nil, stream_id: nil)
        @name = name
        @url = url
        @created_at = created_at
        @events = events
        @id = id
        @status = status
        @stream_id = stream_id
      end
    end
  end
end
