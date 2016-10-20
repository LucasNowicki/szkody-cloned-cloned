class Countmailer < ApplicationMailer
    def sendtocount(id)
        post = Post.find(id)
        mail(to: 'lucas.nowicki@gmail.com', subject: "Sample Email #{post.id} | #{post.mark}") #aby zrobic interpolacje stringu, musi byc podwojny cudzysłów "" a nie ''
    end

end
