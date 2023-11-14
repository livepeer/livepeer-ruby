# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module Livepeer
  module Shared

    class SigningKey < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :public_key, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('publicKey') } }
      # Timestamp (in milliseconds) at which the signing-key was created
      field :created_at, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('createdAt') } }
      # Disable the signing key to allow rotation safely
      field :disabled, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('disabled') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }
      # Timestamp (in milliseconds) at which the signing-key was last used
      field :last_seen, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('lastSeen') } }
      # Name of the signing key
      field :name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }


      sig { params(public_key: String, created_at: T.nilable(Float), disabled: T.nilable(T::Boolean), id: T.nilable(String), last_seen: T.nilable(Float), name: T.nilable(String)).void }
      def initialize(public_key: nil, created_at: nil, disabled: nil, id: nil, last_seen: nil, name: nil)
        @public_key = public_key
        @created_at = created_at
        @disabled = disabled
        @id = id
        @last_seen = last_seen
        @name = name
      end
    end
  end
end