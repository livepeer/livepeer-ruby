# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/playback_policy'
require_relative '../shared/multistream'

module Livepeer
  module Shared

    class NewStreamPayload < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :name, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      field :creator_id, T.nilable(Object), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('creatorId') } }

      field :multistream, T.nilable(Shared::Multistream), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('multistream') } }
      # Whether the playback policy for a asset or stream is public or signed
      field :playback_policy, T.nilable(Shared::PlaybackPolicy), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('playbackPolicy') } }

      field :profiles, T.nilable(T::Array[Shared::FfmpegProfile]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('profiles') } }
      # Should this stream be recorded? Uses default settings. For more
      # customization, create and configure an object store.
      # 
      field :record, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('record') } }


      sig { params(name: String, creator_id: T.nilable(Object), multistream: T.nilable(Shared::Multistream), playback_policy: T.nilable(Shared::PlaybackPolicy), profiles: T.nilable(T::Array[Shared::FfmpegProfile]), record: T.nilable(T::Boolean)).void }
      def initialize(name: nil, creator_id: nil, multistream: nil, playback_policy: nil, profiles: nil, record: nil)
        @name = name
        @creator_id = creator_id
        @multistream = multistream
        @playback_policy = playback_policy
        @profiles = profiles
        @record = record
      end
    end
  end
end
