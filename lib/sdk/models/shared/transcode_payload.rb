# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Livepeer
  module Shared
    # HLS output format
    class Hls < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # Path for the HLS output
      field :path, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('path') } }


      sig { params(path: String).void }
      def initialize(path: nil)
        @path = path
      end
    end

    # MP4 output format
    class Mp4 < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # Path for the MP4 output
      field :path, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('path') } }


      sig { params(path: String).void }
      def initialize(path: nil)
        @path = path
      end
    end

    # FMP4 output format
    class Fmp4 < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # Path for the FMP4 output
      field :path, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('path') } }


      sig { params(path: String).void }
      def initialize(path: nil)
        @path = path
      end
    end

    # Output formats
    class Outputs < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # FMP4 output format
      field :fmp4, T.nilable(Shared::Fmp4), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('fmp4') } }
      # HLS output format
      field :hls, T.nilable(Shared::Hls), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('hls') } }
      # MP4 output format
      field :mp4, T.nilable(Shared::Mp4), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('mp4') } }


      sig { params(fmp4: T.nilable(Shared::Fmp4), hls: T.nilable(Shared::Hls), mp4: T.nilable(Shared::Mp4)).void }
      def initialize(fmp4: nil, hls: nil, mp4: nil)
        @fmp4 = fmp4
        @hls = hls
        @mp4 = mp4
      end
    end


    class TranscodePayload < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :input, Object, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('input') } }
      # Output formats
      field :outputs, Shared::Outputs, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('outputs') } }

      field :storage, Object, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('storage') } }
      # Decides if the output video should include C2PA signature
      field :c2pa, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('c2pa') } }

      field :creator_id, T.nilable(Object), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('creatorId') } }

      field :profiles, T.nilable(T::Array[Shared::TranscodeProfile]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('profiles') } }
      # How many seconds the duration of each output segment should be
      field :target_segment_size_secs, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('targetSegmentSizeSecs') } }


      sig { params(input: Object, outputs: Shared::Outputs, storage: Object, c2pa: T.nilable(T::Boolean), creator_id: T.nilable(Object), profiles: T.nilable(T::Array[Shared::TranscodeProfile]), target_segment_size_secs: T.nilable(Float)).void }
      def initialize(input: nil, outputs: nil, storage: nil, c2pa: nil, creator_id: nil, profiles: nil, target_segment_size_secs: nil)
        @input = input
        @outputs = outputs
        @storage = storage
        @c2pa = c2pa
        @creator_id = creator_id
        @profiles = profiles
        @target_segment_size_secs = target_segment_size_secs
      end
    end
  end
end
