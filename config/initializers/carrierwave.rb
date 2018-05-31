CarrierWave.configure do |config|
  config.storage                             = :gcloud
  config.gcloud_bucket                       = "gmp-#{Rails.env}-storage"
  config.gcloud_bucket_is_public             = true
  config.gcloud_authenticated_url_expiration = 600

  config.gcloud_attributes = {
    expires: 600
  }

  config.gcloud_credentials = {
    gcloud_project: 'global-math-project-201820',
    gcloud_keyfile: Rails.root.join("global-math-project-fb8ec2b0dba5.json")
  }
end
