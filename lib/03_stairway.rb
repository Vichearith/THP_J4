def real_perform
    launch
    b = 0
    until b == 10
        puts "Souhaites-tu relancer un dès. Dit 1 pour continuer"
        party = gets.chomp.to_i
        if party == 1
            a = des
            if a >= 5
                b = b + 1  
                puts  "Tu avances d'une marche. Tu es à la marche #{b}."
                elsif a == 1
                if 
                    b > 0
                    b = b - 1
                    puts  "Tu descends d'une marche. Tu es à la marche #{b}."
                    else
                    puts "Tu es à la marche 0."
                end
                else
                puts  "Rien ne se passe. Tu es à la marche #{b}."
            end
            else
            exit
        end
    end
    puts  "Félicitation, tu as gagné !" 
end

def launch
    puts "Bienvenue dans le monde de Ruby. Te voici en bas d'un escalier de 10 marches"
end

def des
    "Lancement de dès ..."
    a = rand(1..6)
    puts "Le dès affiche #{a}"
    return a
end

def auto_des
    a = rand(1..6)
end

def auto_perform
    b = 0
    c = 0
    until b == 10
        a = auto_des
        c = c+1
        if a >= 5
            b = b + 1  
            elsif a == 1
            if 
                b > 0
                b = b - 1
                else
            end
            else
        end
    end
    c
end

def average_finish_time
    d = []
    100.times do |i| 
    auto_perform
    d << auto_perform
    end
    print d
    print "\n"
    mean = d.inject {|sum, el| sum + el}.to_i / d.size
    puts "La moyenne de tours nécessaire est #{mean}"
end

def perform
    puts "Si tu souhaites faire une partie, écrit 1. Si tu souhaites savoir la moyenne de nécessaire pour faire une partie, écrit 2"
    print "> "
    a = gets.chomp.to_i
    if a == 1
        real_perform
        elsif a == 2
        average_finish_time
        else
        puts "Tu ne veux rien ? Qu'est-ce-que tu fais là !"
    end
end
perform