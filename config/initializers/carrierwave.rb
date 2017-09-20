CarrierWave.configure do |config|
	config.aws_credentials = {
		:access_key_id     => ENV['S3_KEY'],
		:secret_access_key => ENV['S3_SECRET'],
		:region            => ENV['S3_REGION']
	}
	config.cache_dir = "#{Rails.root}/tmp/uploads"
	config.storage    = :aws
  	config.aws_bucket = ENV.fetch('S3_BUCKET_NAME')
  	config.aws_acl    = 'public-read'
  	config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7
end