# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/multistream'
require_relative '../shared/playback_policy'

module Livepeer
  module Shared

    class StreamPatchPayload < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :creator_id, T.nilable(Object), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('creatorId') } }

      field :multistream, T.nilable(Shared::Multistream), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('multistream') } }
      # Whether the playback policy for a asset or stream is public or signed
      field :playback_policy, T.nilable(Shared::PlaybackPolicy), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('playbackPolicy') } }
      # Should this stream be recorded? Uses default settings. For more
      # customization, create and configure an object store.
      # 
      field :record, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('record') } }
      # If currently suspended
      field :suspended, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('suspended') } }


      sig { params(creator_id: T.nilable(Object), multistream: T.nilable(Shared::Multistream), playback_policy: T.nilable(Shared::PlaybackPolicy), record: T.nilable(T::Boolean), suspended: T.nilable(T::Boolean)).void }
      def initialize(creator_id: nil, multistream: nil, playback_policy: nil, record: nil, suspended: nil)
        @creator_id = creator_id
        @multistream = multistream
        @playback_policy = playback_policy
        @record = record
        @suspended = suspended
      end
    end
  end
end
