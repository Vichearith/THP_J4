def def_password
    puts "Défini un mot de passe"
    print "> "
    password = gets
end

def ask_password
    puts "Rentre ton mot de passe"
    print "> "
    attempt = gets
end

def welcome_screen
    puts "\nBienvnue dans ta base secrète. Le message secret d'aujourd'hui est :"
    puts "♏	♓	♋	♏	Ϡ		Π	♌	♎	Ϡ"
    puts "♌	♍	♓"
    puts "Ψ	♏	♒	♒	♑	Γ	♏	."
end

def perform
    password = def_password
    attempt = ask_password
    until attempt == password
        puts "Mot de passe erroné. Réessaye" 
        attempt = ask_password
    end
    puts "Mot de passe correct"
        welcome_screen  
end

perform