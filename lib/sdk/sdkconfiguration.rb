# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig


  SERVERS = [
    'https://livepeer.studio/api', 
  ].freeze
  # Contains the list of servers available to the SDK

  class SDKConfiguration < OpenApiSDK::Utils::FieldAugmented
    extend T::Sig

    field :client, T.nilable(Faraday::Connection)
    field :security, Shared::Security
    field :server_url, T.nilable(String)
    field :server, T.nilable(String)
    field :server_defaults, Array[Hash[Symbol, String]], { 'default_factory': Array}
    field :language, String
    field :openapi_doc_version, String
    field :sdk_version, String
    field :gen_version, String
    field :user_agent, String
  
    
    sig { params(client: Faraday::Connection, security: T.nilable(Shared::Security), server_url: T.nilable(String), server_idx: T.nilable(Integer), server_defaults: T::Array[String], globals: T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Object]]]).void }
    def initialize(client, security, server_url, server_idx, server_defaults, globals)
      @client = client
      @server_idx = server_idx.nil? ? 0 : server_idx
      @language = 'ruby'
      @openapi_doc_version = '1.0.0'
      @sdk_version = '0.0.2'
      @gen_version = '2.188.3'
      @user_agent = 'speakeasy-sdk/ruby 0.0.2 2.188.3 1.0.0 livepeer'
    end

    sig { returns([String, T::Hash[Symbol, String]]) }
    def get_server_details
      return [@server_url.delete_suffix('/'), {}] if !@server_url.nil?
      @server_idx = 0 if @server_idx.nil?
          

      [SERVERS[@server_idx], {}]
    end
  end
end
