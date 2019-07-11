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
    puts "\nBienvnue dans ta base secrète"
    puts "♏	♓	♋	♏	Ϡ		Π	♌	♎	Ϡ"
    puts "♌	♍	♓"
    puts "Ψ	♏	♒	♒	♑	Γ	♏	."
end

def perform
    password = def_password
    attempt = ask_password
    if attempt == password
        puts "Mot de passe correct"
        welcome_screen
        else   
        puts "Mot de passe erroné" 
    end
end

perform