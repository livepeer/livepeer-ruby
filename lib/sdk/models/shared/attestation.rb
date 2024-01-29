# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'
require_relative '../shared/storage_status'

module Livepeer
  module Shared
    # PrimaryType - Video Metadata EIP-712 primaryType
    class PrimaryType < T::Enum
      enums do
        VIDEO_ATTESTATION = new('VideoAttestation')
      end
    end



    class Name < T::Enum
      enums do
        VERIFIABLE_VIDEO = new('Verifiable Video')
      end
    end



    class Version < T::Enum
      enums do
        ONE = new('1')
      end
    end


    # Video Metadata EIP-712 domain
    class Domain < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :name, Shared::Name, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name'), 'decoder': Utils.enum_from_string(Shared::Name, false) } }

      field :version, Shared::Version, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('version'), 'decoder': Utils.enum_from_string(Shared::Version, false) } }


      sig { params(name: Shared::Name, version: Shared::Version).void }
      def initialize(name: nil, version: nil)
        @name = name
        @version = version
      end
    end


    class Attestations < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :address, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('address') } }

      field :role, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('role') } }


      sig { params(address: String, role: String).void }
      def initialize(address: nil, role: nil)
        @address = address
        @role = role
      end
    end

    # Video Metadata EIP-712 message content
    class Message < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :attestations, T::Array[Shared::Attestations], { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('attestations') } }

      field :signer, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('signer') } }

      field :timestamp, Float, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('timestamp') } }

      field :video, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('video') } }


      sig { params(attestations: T::Array[Shared::Attestations], signer: String, timestamp: Float, video: String).void }
      def initialize(attestations: nil, signer: nil, timestamp: nil, video: nil)
        @attestations = attestations
        @signer = signer
        @timestamp = timestamp
        @video = video
      end
    end


    class SignatureType < T::Enum
      enums do
        EIP712 = new('eip712')
        FLOW = new('flow')
      end
    end



    class AttestationIpfs < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :dollar_ref, T.nilable(Object), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('$ref') } }
      # Timestamp (in milliseconds) at which IPFS export task was updated
      # 
      field :updated_at, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updatedAt') } }


      sig { params(dollar_ref: T.nilable(Object), updated_at: T.nilable(Float)).void }
      def initialize(dollar_ref: nil, updated_at: nil)
        @dollar_ref = dollar_ref
        @updated_at = updated_at
      end
    end


    class AttestationStorage < Livepeer::Utils::FieldAugmented
      extend T::Sig


      field :ipfs, T.nilable(Shared::AttestationIpfs), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('ipfs') } }

      field :status, T.nilable(Shared::StorageStatus), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('status') } }


      sig { params(ipfs: T.nilable(Shared::AttestationIpfs), status: T.nilable(Shared::StorageStatus)).void }
      def initialize(ipfs: nil, status: nil)
        @ipfs = ipfs
        @status = status
      end
    end


    class Attestation < Livepeer::Utils::FieldAugmented
      extend T::Sig

      # Video Metadata EIP-712 domain
      field :domain, Shared::Domain, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('domain') } }
      # Video Metadata EIP-712 message content
      field :message, Shared::Message, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('message') } }
      # Video Metadata EIP-712 primaryType
      field :primary_type, Shared::PrimaryType, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('primaryType'), 'decoder': Utils.enum_from_string(Shared::PrimaryType, false) } }
      # Video Metadata EIP-712 message signature
      field :signature, String, { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('signature') } }
      # Timestamp (in milliseconds) at which the object was created
      field :created_at, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('createdAt') } }

      field :id, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :signature_type, T.nilable(Shared::SignatureType), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('signatureType'), 'decoder': Utils.enum_from_string(Shared::SignatureType, true) } }

      field :storage, T.nilable(Shared::AttestationStorage), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('storage') } }


      sig { params(domain: Shared::Domain, message: Shared::Message, primary_type: Shared::PrimaryType, signature: String, created_at: T.nilable(Float), id: T.nilable(String), signature_type: T.nilable(Shared::SignatureType), storage: T.nilable(Shared::AttestationStorage)).void }
      def initialize(domain: nil, message: nil, primary_type: nil, signature: nil, created_at: nil, id: nil, signature_type: nil, storage: nil)
        @domain = domain
        @message = message
        @primary_type = primary_type
        @signature = signature
        @created_at = created_at
        @id = id
        @signature_type = signature_type
        @storage = storage
      end
    end
  end
end
