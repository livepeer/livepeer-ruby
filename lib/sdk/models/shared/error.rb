# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Livepeer
  module Shared

    class Error < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :errors, T::Array[String], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T::Array[String]).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end
  end
end
