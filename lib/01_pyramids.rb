def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    a = gets.chomp.to_i
    b = 1
    until b > a do
        c = a-b
        c.times {print "\s"}
        (2*b-1).times {print "#"}
        puts "\n"
        b = b+1    
    end
end

def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Donne moi un chiffre impair ?"
    print "> "
    a = gets.chomp.to_i
    b = 1
    until b > a/2 do
        if a.even?  
            puts "Donne moi un chiffre impair ?"
                    print "> "
                    a = gets.chomp.to_i
        else
        c = ((a/2)-b+1)
        c.times {print "\s"}
        (2*b-1).times {print "#"}
        puts "\n"
        b = b+1    
        end
    end
        c = 0
    until b == 0 do
        c.times {print "\s"}
        (2*b-1).times {print "#"}
        puts "\n"
        b = b-1
        c = c+1
    end
end

def perform
    puts "Si tu souhaites une pyramide normale, dit 1. Si tu souhaites une pyramide WTF, dit 2"
    print "> "
    a = gets.chomp.to_i
    if a == 1
        full_pyramid
        elsif a == 2
        wtf_pyramid
        else
        puts "Tu n'as pas envie de pyramide ?"
    end
end

perform