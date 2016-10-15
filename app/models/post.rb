class Post < ActiveRecord::Base
    has_attached_file :document, styles: {thumbnail: "15x15#"}
    validates_attachment :document, content_type: { content_type: 'application/pdf' }
end
