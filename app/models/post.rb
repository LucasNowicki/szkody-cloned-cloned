class Post < ActiveRecord::Base
    has_attached_file :document, styles: {thumb: ["300x300>", :png] }
    validates_attachment :document, content_type: { content_type: 'application/pdf' }
    
    
    
    
    def self.shit(costam)
       return "gowno " + costam.to_s 
    end
    
    # Post.shit('cwel')
    #  => "gowno cwel" 
    
    def self.sendEmail(post_id)
        mail = Countmailer.sendtocount(post_id).deliver_now
        
        puts 'WYSLANO MAILA O TYTULE: ' + mail.subject
        puts '* - ^ ' * 20
        
        if mail.from != nil
            return 200, mail.subject
        else
            return 404, nil
        end
    end
    
end
