# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Livepeer
  module Operations

    class RemoveMultistreamTargetRequest < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # ID of the parent stream
      field :id, String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # ID of the multistream target
      field :target_id, String, { 'path_param': { 'field_name': 'targetId', 'style': 'simple', 'explode': false } }


      sig { params(id: String, target_id: String).void }
      def initialize(id: nil, target_id: nil)
        @id = id
        @target_id = target_id
      end
    end


    class RemoveMultistreamTargetResponse < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
      end
    end
  end
end