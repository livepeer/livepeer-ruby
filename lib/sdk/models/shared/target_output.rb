# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Livepeer
  module Shared

    class TargetOutput < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # Name of transcoding profile that should be sent. Use
      # "source" for pushing source stream data
      # 
      field :profile, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('profile') } }
      # ID of multistream target object where to push this stream
      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }
      # If true, the stream audio will be muted and only silent
      # video will be pushed to the target.
      # 
      field :video_only, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('videoOnly') } }


      sig { params(profile: String, id: T.nilable(String), video_only: T.nilable(T::Boolean)).void }
      def initialize(profile: nil, id: nil, video_only: nil)
        @profile = profile
        @id = id
        @video_only = video_only
      end
    end
  end
end
