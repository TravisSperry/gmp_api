# frozen_string_literal: true

module ExplodingDots
  class TranslationResourceUploader < CarrierWave::Uploader::Base
    include CarrierWave::RMagick

    storage :gcloud

    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end

    version :preview, if: :image? do
      process :cover
      process resize_and_pad: [170, 220, '#FFFFFF', ::Magick::CenterGravity]
      process convert: :jpg
      process :set_content_type_img

      def full_filename(for_file = model.source.file)
        super.chomp(File.extname(super)) + '.jpg'
      end
    end

    def cover
      manipulate! do |frame, index|
        frame if index.zero?
      end
    end

    def set_content_type_img(*_args)
      file.instance_variable_set(:@content_type, 'image/jpeg')
    end

    protected

    def image?(new_file)
      new_file.content_type.start_with?('image') || new_file.content_type.include?('pdf')
    end
  end
end
