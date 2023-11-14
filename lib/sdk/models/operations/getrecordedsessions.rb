# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Livepeer
  module Operations

    class GetRecordedSessionsRequest < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # ID of the parent stream
      field :parent_id, String, { 'path_param': { 'field_name': 'parentId', 'style': 'simple', 'explode': false } }
      # Flag indicating if the response should only include recorded
      # sessions
      # 
      field :record, T.nilable(Integer), { 'query_param': { 'field_name': 'record', 'style': 'form', 'explode': true } }


      sig { params(parent_id: String, record: T.nilable(Integer)).void }
      def initialize(parent_id: nil, record: nil)
        @parent_id = parent_id
        @record = record
      end
    end


    class GetRecordedSessionsResponse < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Success
      field :data, T.nilable(T::Array[Shared::Session])
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, data: T.nilable(T::Array[Shared::Session]), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, data: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @data = data
        @raw_response = raw_response
      end
    end
  end
end