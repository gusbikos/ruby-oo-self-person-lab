# your code goes here
require 'pry'
class Person 

    attr_reader :name 
    
    attr_accessor :bank_account, :hygiene, :happiness

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_value)
        @happiness = new_value 
        if happiness < 0 
            @happiness = 0 
        elsif @happiness > 10 
            @happiness = 10 
        end
    end

    def hygiene=(cleanliness)
        @hygiene = cleanliness 
        if hygiene < 0 
            @hygiene = 0 
        elsif @hygiene > 10 
            @hygiene = 10 
        end 
    end 

    def happy?
        happiness > 7 
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary 
        'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4 
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(politics, weather)
        if topic = politics
            "blah blah partisan blah lobbyist"
            self.happiness + self.name -= 2
        elsif topic = weather 
            "blah blah sun blah rain"
        end 
    end





end

