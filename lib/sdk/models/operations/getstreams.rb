# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Livepeer
  module Operations

    class GetStreamsRequest < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :streamsonly, T.nilable(String), { 'query_param': { 'field_name': 'streamsonly', 'style': 'form', 'explode': true } }


      sig { params(streamsonly: T.nilable(String)).void }
      def initialize(streamsonly: nil)
        @streamsonly = streamsonly
      end
    end


    class GetStreamsResponse < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Success
      field :classes, T.nilable(T::Array[Shared::Stream])
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, classes: T.nilable(T::Array[Shared::Stream]), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, classes: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @classes = classes
        @raw_response = raw_response
      end
    end
  end
end
