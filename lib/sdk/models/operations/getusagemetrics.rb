# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/usage_metric'

module Livepeer
  module Operations
    # GetUsageMetricsQueryParamTimeStep - The time step to aggregate viewership metrics by
    # 
    class GetUsageMetricsQueryParamTimeStep < T::Enum
      enums do
        HOUR = new('hour')
        DAY = new('day')
      end
    end



    class GetUsageMetricsRequest < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # The creator ID to filter the query results
      # 
      field :creator_id, T.nilable(String), { 'query_param': { 'field_name': 'creatorId', 'style': 'form', 'explode': true } }
      # Start millis timestamp for the query range (inclusive)
      # 
      field :from, T.nilable(Integer), { 'query_param': { 'field_name': 'from', 'style': 'form', 'explode': true } }
      # The time step to aggregate viewership metrics by
      # 
      field :time_step, T.nilable(Operations::GetUsageMetricsQueryParamTimeStep), { 'query_param': { 'field_name': 'timeStep', 'style': 'form', 'explode': true } }
      # End millis timestamp for the query range (exclusive)
      # 
      field :to, T.nilable(Integer), { 'query_param': { 'field_name': 'to', 'style': 'form', 'explode': true } }


      sig { params(creator_id: T.nilable(String), from: T.nilable(Integer), time_step: T.nilable(Operations::GetUsageMetricsQueryParamTimeStep), to: T.nilable(Integer)).void }
      def initialize(creator_id: nil, from: nil, time_step: nil, to: nil)
        @creator_id = creator_id
        @from = from
        @time_step = time_step
        @to = to
      end
    end


    class GetUsageMetricsResponse < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # HTTP response status code for this operation
      field :status_code, Integer
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, T.nilable(Faraday::Response)
      # A Usage Metric object
      field :usage_metric, T.nilable(Shared::UsageMetric)


      sig { params(content_type: String, status_code: Integer, raw_response: T.nilable(Faraday::Response), usage_metric: T.nilable(Shared::UsageMetric)).void }
      def initialize(content_type: nil, status_code: nil, raw_response: nil, usage_metric: nil)
        @content_type = content_type
        @status_code = status_code
        @raw_response = raw_response
        @usage_metric = usage_metric
      end
    end
  end
end
