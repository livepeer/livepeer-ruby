# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Livepeer
  module Operations
    # QueryParamTimeStep - The time step to aggregate viewership metrics by
    class QueryParamTimeStep < T::Enum
      enums do
        HOUR = new('hour')
        DAY = new('day')
        WEEK = new('week')
        MONTH = new('month')
        YEAR = new('year')
      end
    end



    class QueryParamBreakdownBy < T::Enum
      enums do
        DEVICE_TYPE = new('deviceType')
        DEVICE = new('device')
        CPU = new('cpu')
        OS = new('os')
        BROWSER = new('browser')
        BROWSER_ENGINE = new('browserEngine')
        CONTINENT = new('continent')
        COUNTRY = new('country')
        SUBDIVISION = new('subdivision')
        TIMEZONE = new('timezone')
        VIEWER_ID = new('viewerId')
      end
    end



    class GetCreatorMetricsRequest < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # The asset ID to filter metrics for
      field :asset_id, T.nilable(String), { 'query_param': { 'field_name': 'assetId', 'style': 'form', 'explode': true } }
      # The list of fields to break down the query results. Specify this
      # query-string multiple times to break down by multiple fields.
      # 
      field :breakdown_by, T.nilable(T::Array[Operations::QueryParamBreakdownBy]), { 'query_param': { 'field_name': 'breakdownBy[]', 'style': 'form', 'explode': true } }
      # The creator ID to filter the query results
      field :creator_id, T.nilable(String), { 'query_param': { 'field_name': 'creatorId', 'style': 'form', 'explode': true } }
      # Start timestamp for the query range (inclusive)
      field :from, T.nilable(Object), { 'query_param': { 'field_name': 'from', 'style': 'form', 'explode': true } }
      # The stream ID to filter metrics for
      field :stream_id, T.nilable(String), { 'query_param': { 'field_name': 'streamId', 'style': 'form', 'explode': true } }
      # The time step to aggregate viewership metrics by
      field :time_step, T.nilable(Operations::QueryParamTimeStep), { 'query_param': { 'field_name': 'timeStep', 'style': 'form', 'explode': true } }
      # End timestamp for the query range (exclusive)
      field :to, T.nilable(Object), { 'query_param': { 'field_name': 'to', 'style': 'form', 'explode': true } }


      sig { params(asset_id: T.nilable(String), breakdown_by: T.nilable(T::Array[Operations::QueryParamBreakdownBy]), creator_id: T.nilable(String), from: T.nilable(Object), stream_id: T.nilable(String), time_step: T.nilable(Operations::QueryParamTimeStep), to: T.nilable(Object)).void }
      def initialize(asset_id: nil, breakdown_by: nil, creator_id: nil, from: nil, stream_id: nil, time_step: nil, to: nil)
        @asset_id = asset_id
        @breakdown_by = breakdown_by
        @creator_id = creator_id
        @from = from
        @stream_id = stream_id
        @time_step = time_step
        @to = to
      end
    end


    class GetCreatorMetricsResponse < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # A list of Metric objects
      field :data, T.nilable(T::Array[Shared::ViewershipMetric])
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)


      sig { params(content_type: String, status_code: Integer, data: T.nilable(T::Array[Shared::ViewershipMetric]), raw_response: T.nilable(Faraday::Response)).void }
      def initialize(content_type: nil, status_code: nil, data: nil, raw_response: nil)
        @content_type = content_type
        @status_code = status_code
        @data = data
        @raw_response = raw_response
      end
    end
  end
end
