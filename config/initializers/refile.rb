require "refile/s3"
# 本番環境のみAWSのS3へ保存
if Rails.env == "production"

  aws = {
    access_key_id: ENV["AWS_ACCESS_KEY_ID"],
    secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
    region: "ap-northeast-1",
    bucket: "aws-and-infra-noboro",
  }
  Refile.cache = Refile::S3.new(prefix: "cache", **aws)
  Refile.store = Refile::S3.new(prefix: "store", **aws)

end