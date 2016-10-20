class Countmailer < ApplicationMailer
    def sendtocount(id)
        post = Post.find(id)
        mail(to: 'lucas.nowicki@gmail.com', subject: "#{post.mark} #{post.model} #{post.year} #{post.registration} #{post.owner}".upcase) #aby zrobic interpolacje stringu, musi byc podwojny cudzysłów "" a nie ''
    end

end
