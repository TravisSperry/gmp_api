# frozen_string_literal: true

class ProfilePhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :gcloud

  version :large do
    resize_to_limit(300, 300)
  end

  version :thumb do
    process :crop
  end

  def extension_whitelist
    %w[jpg jpeg gif png]
  end

  def store_dir
    "#{model.class.to_s.underscore}/"
  end

  # def filename
  #   return unless model.profile_photo.try(:file)
  #
  #   if original_filename.present?
  #     @name ||= super.chomp(File.extname(super)) + model.profile_photo.file.extension
  #   end
  # end

  def crop
    return if model.crop_x.blank?
    resize_to_limit(300, 300)
    manipulate! do |img|
      x = model.crop_x.to_i
      y = model.crop_y.to_i
      w = model.crop_w.to_i
      h = model.crop_h.to_i
      img.crop!(x, y, w, h)
    end
  end

  private
  def timestamp
    var = :"@#{mounted_as}_timestamp"
    model.instance_variable_get(var) or model.instance_variable_set(var, Time.now.to_i)
  end

  def secure_random
    var = :"@#{mounted_as}_secure_random"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.hex(2))
  end
end
