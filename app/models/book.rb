class Book < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :reviews

    has_attached_file :book_img, styles: { book_index: "250x350>", book_show: "325x475>" }, default_url: "/images/:style/missing.png",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :dropbox_options => {...}
    validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/
end
