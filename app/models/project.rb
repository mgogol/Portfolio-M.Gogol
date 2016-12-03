class Project < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "100%x700", thumb: "" },
                    convert_options: { thumb: "-gravity north -thumbnail 320x320^ -extent 320x320" },
                    storage: :s3,
                    s3_protocol: ':http',
                    s3_permissions: 'private',
                    s3_region: 'us-east-1', #ENV.fetch("AWS_REGION"),
                    s3_credentials: {
                        bucket: 'portfolio', #ENV.fetch("AWS_BUCKET"),
                        access_key_id: 'Q3AM3UQ867SPQQA43P2F',#ENV.fetch("AWS_ACCESS_KEY_ID"),
                        secret_access_key: 'zuf+tfteSlswRu7BJ86wekitnifILbZam1KYY3TG', #ENV.fetch("AWS_SECRET_ACCESS_KEY"),
                    },
                    s3_host_name: 'play.minio.io:9000',
                    s3_options: {
                        endpoint: "https://play.minio.io:9000", # for aws-sdk
                        force_path_style: false # for aws-sdk (required for minio)
                    },
                    url: ':s3_path_url',
                    path: "/:class/:id.:style.:extension"
                    # convert_options: { thumb: "-gravity north -thumbnail 260x260^ -extent 260x260" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  extend FriendlyId
  friendly_id :title, use: :slugged
end
