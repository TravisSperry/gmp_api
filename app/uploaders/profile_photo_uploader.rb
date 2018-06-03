class ProfilePhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :gcloud

  def store_dir
  end

  version :large do
    resize_to_limit(300, 300)
  end

  version :thumb do
    process :crop
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  def store_dir
    "#{model.class.to_s.underscore}/"
  end

  def filename
    "#{model.first_name}-#{model.last_name}.#{model.profile_photo.file.extension}"
  end

  def crop
    puts 'crop'
    if model.crop_x.present?
      resize_to_limit(300, 300)
      manipulate! do |img|
        x = model.crop_x.to_i
        y = model.crop_y.to_i
        w = model.crop_w.to_i
        h = model.crop_h.to_i
        img.crop!(x, y, w, h)
      end
    end
  end
end
