# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/playback_policy'
require_relative '../shared/attestation'

module Livepeer
  module Shared

    class PlaybackInfoType < T::Enum
      enums do
        LIVE = new('live')
        VOD = new('vod')
        RECORDING = new('recording')
      end
    end



    class Hrn < T::Enum
      enums do
        HLS_TS_ = new('HLS (TS)')
        MP4 = new('MP4')
        WEB_RTC_H264_ = new('WebRTC (H264)')
      end
    end



    class PlaybackInfoSchemasType < T::Enum
      enums do
        HTML5_APPLICATION_VND_APPLE_MPEGURL = new('html5/application/vnd.apple.mpegurl')
        HTML5_VIDEO_MP4 = new('html5/video/mp4')
        HTML5_VIDEO_H264 = new('html5/video/h264')
      end
    end



    class Source < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :hrn, Shared::Hrn, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('hrn'), 'decoder': Utils.enum_from_string(Shared::Hrn, false) } }

      field :type, Shared::PlaybackInfoSchemasType, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::PlaybackInfoSchemasType, false) } }

      field :url, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('url') } }

      field :bitrate, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('bitrate') } }

      field :height, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('height') } }

      field :size, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('size') } }

      field :width, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('width') } }


      sig { params(hrn: Shared::Hrn, type: Shared::PlaybackInfoSchemasType, url: String, bitrate: T.nilable(Float), height: T.nilable(Float), size: T.nilable(Float), width: T.nilable(Float)).void }
      def initialize(hrn: nil, type: nil, url: nil, bitrate: nil, height: nil, size: nil, width: nil)
        @hrn = hrn
        @type = type
        @url = url
        @bitrate = bitrate
        @height = height
        @size = size
        @width = width
      end
    end


    class Meta < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :source, T::Array[Shared::Source], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('source') } }

      field :attestation, T.nilable(Shared::Attestation), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('attestation') } }

      field :live, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('live') } }
      # Whether the playback policy for a asset or stream is public or signed
      field :playback_policy, T.nilable(Shared::PlaybackPolicy), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('playbackPolicy') } }


      sig { params(source: T::Array[Shared::Source], attestation: T.nilable(Shared::Attestation), live: T.nilable(Float), playback_policy: T.nilable(Shared::PlaybackPolicy)).void }
      def initialize(source: nil, attestation: nil, live: nil, playback_policy: nil)
        @source = source
        @attestation = attestation
        @live = live
        @playback_policy = playback_policy
      end
    end


    class PlaybackInfo < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :meta, Shared::Meta, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('meta') } }

      field :type, Shared::PlaybackInfoType, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(Shared::PlaybackInfoType, false) } }


      sig { params(meta: Shared::Meta, type: Shared::PlaybackInfoType).void }
      def initialize(meta: nil, type: nil)
        @meta = meta
        @type = type
      end
    end
  end
end