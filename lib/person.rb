class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    # def name
    #     @name
    # end
    def happiness=(num)
      if num <= 10 && num >= 0
        @happiness = num
      elsif num > 10
        @happiness = 10
      elsif num < 0 
        @happiness = 0
      end
    end
    def hygiene=(num)
        if num <= 10 && num >= 0
          @hygiene = num
        elsif num > 10
          @hygiene = 10
        elsif num < 0 
          @hygiene = 0
        end
    end
    def happy?
     self.happiness > 7 ? true : false
    end
    def clean?
        self.hygiene > 7 ? true : false
    end
    def get_paid(amount)
        self.bank_account += 100
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
    end
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        puts self.name
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end

end

