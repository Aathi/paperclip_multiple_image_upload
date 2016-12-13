class Image < ActiveRecord::Base
  belongs_to :post
 has_attached_file :image,
                    url: '/upload-images/pictures/:id/:style_:basename.:extension',
                    path: ':rails_root/public/upload-images/pictures/:id/:style_:basename.:extension',
                    styles: { content: '800>', thumb: '118x100#' }


  validates_attachment_presence :image
  validates_attachment_size :image, less_than: 2.megabytes
  validates_attachment_content_type :image, content_type: /\Aimage/
end
