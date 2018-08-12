# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module PolyV1
      
      class Asset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class File
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Format
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FormatComplexity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLikedAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUserAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PresentationParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Quaternion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserAsset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Asset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author_name, as: 'authorName'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :formats, as: 'formats', class: Google::Apis::PolyV1::Format, decorator: Google::Apis::PolyV1::Format::Representation
      
          property :is_curated, as: 'isCurated'
          property :license, as: 'license'
          property :name, as: 'name'
          property :presentation_params, as: 'presentationParams', class: Google::Apis::PolyV1::PresentationParams, decorator: Google::Apis::PolyV1::PresentationParams::Representation
      
          property :thumbnail, as: 'thumbnail', class: Google::Apis::PolyV1::File, decorator: Google::Apis::PolyV1::File::Representation
      
          property :update_time, as: 'updateTime'
          property :visibility, as: 'visibility'
        end
      end
      
      class File
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :relative_path, as: 'relativePath'
          property :url, as: 'url'
        end
      end
      
      class Format
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format_complexity, as: 'formatComplexity', class: Google::Apis::PolyV1::FormatComplexity, decorator: Google::Apis::PolyV1::FormatComplexity::Representation
      
          property :format_type, as: 'formatType'
          collection :resources, as: 'resources', class: Google::Apis::PolyV1::File, decorator: Google::Apis::PolyV1::File::Representation
      
          property :root, as: 'root', class: Google::Apis::PolyV1::File, decorator: Google::Apis::PolyV1::File::Representation
      
        end
      end
      
      class FormatComplexity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lod_hint, as: 'lodHint'
          property :triangle_count, :numeric_string => true, as: 'triangleCount'
        end
      end
      
      class ListAssetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets, as: 'assets', class: Google::Apis::PolyV1::Asset, decorator: Google::Apis::PolyV1::Asset::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListLikedAssetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets, as: 'assets', class: Google::Apis::PolyV1::Asset, decorator: Google::Apis::PolyV1::Asset::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListUserAssetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
          collection :user_assets, as: 'userAssets', class: Google::Apis::PolyV1::UserAsset, decorator: Google::Apis::PolyV1::UserAsset::Representation
      
        end
      end
      
      class PresentationParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color_space, as: 'colorSpace'
          property :orienting_rotation, as: 'orientingRotation', class: Google::Apis::PolyV1::Quaternion, decorator: Google::Apis::PolyV1::Quaternion::Representation
      
        end
      end
      
      class Quaternion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :w, as: 'w'
          property :x, as: 'x'
          property :y, as: 'y'
          property :z, as: 'z'
        end
      end
      
      class UserAsset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset', class: Google::Apis::PolyV1::Asset, decorator: Google::Apis::PolyV1::Asset::Representation
      
        end
      end
    end
  end
end
