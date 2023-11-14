# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Livepeer
  module Operations

    class GetWebhooksResponse < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Success
      field :data, T.nilable(T::Array[Shared::Webhook])
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, data: T.nilable(T::Array[Shared::Webhook]), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, data: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @data = data
        @raw_response = raw_response
      end
    end
  end
end
