# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/signing_key'

module Livepeer
  module Operations

    class CreateSigningKeyResponse < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # Success
      field :signing_key, T.nilable(Shared::SigningKey)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), signing_key: T.nilable(Shared::SigningKey)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, signing_key: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @signing_key = signing_key
      end
    end
  end
end
