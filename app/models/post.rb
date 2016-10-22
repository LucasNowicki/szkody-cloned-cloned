class Post < ActiveRecord::Base
    has_attached_file :document
    validates_attachment :document, content_type: { content_type: 'application/pdf' }
    
    
    
    
    def self.shit(costam)
       return "gowno " + costam.to_s 
    end
    
    # Post.shit('cwel')
    #  => "gowno cwel" 
    
    def self.sendMajchrzak(post_id)
        mail = Countmailer.majchrzak(post_id).deliver_now
        
        puts 'WYSLANO MAILA O TYTULE: ' + mail.subject
        puts '* - ^ ' * 20
        
        if mail.from != nil
            return 200, mail.subject
        else
            return 404, nil
        end
    end
    
    def self.sendPcwo(post_id)
        mail = Countmailer.pcwo(post_id).deliver_now
        
        puts 'WYSLANO MAILA O TYTULE: ' + mail.subject
        puts '* - ^ ' * 20
        
        if mail.from != nil
            return 200, mail.subject
        else
            return 404, nil
        end
    end
    
     def self.sendSolace(post_id)
        mail = Countmailer.solace(post_id).deliver_now
        
        puts 'WYSLANO MAILA O TYTULE: ' + mail.subject
        puts '* - ^ ' * 20
        
        if mail.from != nil
            return 200, mail.subject
        else
            return 404, nil
        end
    end
    
end
