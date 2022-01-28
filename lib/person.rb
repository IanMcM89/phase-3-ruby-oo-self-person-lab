# your code goes here

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value > 10 then @happiness = 10
        elsif value <= 10 && value >= 0 then @happiness = value
        else @happiness = 0
        end
    end

    def hygiene=(value)
        if value > 10 then @hygiene = 10
        elsif value <= 10 && value >= 0 then @hygiene = value
        else @hygiene = 0
        end
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene+= 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene-= 3
        self.happiness+= 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        self.happiness+= 3
        person.happiness+= 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics" then
            self.happiness-= 2
            person.happiness-= 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather" then
            self.happiness+= 1
            person.happiness+= 1
            'blah blah sun blah rain'
        else 'blah blah blah blah blah'
        end
    end
end