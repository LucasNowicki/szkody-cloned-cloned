class Countmailer < ApplicationMailer
    def majchrzak(id)
        @wysylka = Post.find(id)
        puts "---------------------------"
        puts @wysylka.document_file_name
        puts "---------------------------"
        attachments["#{@wysylka.document_file_name}"] = File.read(@wysylka.document.path)
        
        mail(to: 'lucas.nowicki@gmail.com', subject: "#{@wysylka.mark} #{@wysylka.model} #{@wysylka.year} #{@wysylka.registration} #{@wysylka.owner}".upcase) #aby zrobic interpolacje stringu, musi byc podwojny cudzysłów "" a nie ''

    end
    
    def pcwo(id)
        @wysylka = Post.find(id)
        puts "---------------------------"
        puts @wysylka.document_file_name
        puts "---------------------------"
        attachments["#{@wysylka.document_file_name}"] = File.read(@wysylka.document.path)
        
        mail(to: 'larthag@gmail.com', subject: "#{@wysylka.mark} #{@wysylka.model} #{@wysylka.year} #{@wysylka.registration} #{@wysylka.owner}".upcase) #aby zrobic interpolacje stringu, musi byc podwojny cudzysłów "" a nie ''

    end
    
    def solace(id)
        @wysylka = Post.find(id)
        puts "---------------------------"
        puts @wysylka.document_file_name
        puts "---------------------------"
        attachments["#{@wysylka.document_file_name}"] = File.read(@wysylka.document.path)
        
        mail(to: 'ekouprawa@gmail.com', subject: "#{@wysylka.mark} #{@wysylka.model} #{@wysylka.year} #{@wysylka.registration} #{@wysylka.owner}".upcase) #aby zrobic interpolacje stringu, musi byc podwojny cudzysłów "" a nie ''

    end

end











        # File.read("public/system/attachments/#{@wysylka.document_file_name}")
        #jarek to tez cwel :( 
        # bo wyjebales @wysylka, ktora jest w templecie :) - w sendtocount.html.erb mam tak zajebane zeby byla @wysylka wiem
        #to testuje
        #kurwa poszlo!! czyli co w sumie tylko zmieniles @wysylka.document.path? 
        # to jest jeden chuj czy uzywasz post czy @wysylka,,.. ale zmienne z @ są widoczne w template.. Tak czy siak to jest instancja modelu Post, i robisz to na poczatku uzywajac @wysylka = Post.find(id)
        # no jo, ale dodales te .path i to chyba problem rozwiazalo? 
        # paperclip ma metody rozne... document.path zwraca sciezke lokalna plikuu, ktorej potrzebyhe File.read
        # ma tez document.url - ktora jest potrzebna do wpierdolenia w przegladarke, np gdybys konstruowal link <a href="<%= @wysylka.document.url %>"></a> i mozesz taki wjebac w maila tez,..
        #ok, czyli zjebalem, bo nie przeczytalem dokuementacji paperclipa jakie ma metody? 
        # wystarczylo wpisac w google, paperclip local file path
        #kurwa trzeba bylo sie domyslic :) a jak mi zwracal sciezke to myslalem, ze jest ok 
        # http://stackoverflow.com/questions/4984604/get-server-file-path-with-paperclip
        #kurwa ficek, jestes moim senseiem jak myiagi czy jak to sie tam kurwa pisze :D musze jeszcze duzo plotow pomalowac 
        
        # spoko, wracam do serialu, narcos? ta, ok to milego ogladania, ja walcze dalej, teraz galeria moze pojdzie :D 
        # chujowy sposob czatowania kurwa, na razie
        #troche, ale moze mi troche wiedzy zostanie z tych Twoich komentarzy nie zapomnij zrobic git push
        #zara zrobie i jade na hamburgera :P Spoko, bez odbioru, elo, elo elo 3 2 0!