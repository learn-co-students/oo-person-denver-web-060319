# your code goes here
class Person

  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(idx)
    if idx < 0
      @happiness = 0
    elsif idx > 10
      @happiness = 10
    else
      @happiness = idx
    end
  end

  def hygiene=(idx)
    if idx < 0
      @hygiene = 0
    elsif idx > 10
      @hygiene = 10
    else
      @hygiene = idx
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
     "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(other_person, topic)
    if topic == 'politics'
      other_person.happiness -= 2
      self.happiness -= 2
       "blah blah partisan blah lobbyist"
     elsif topic == 'weather'
      other_person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end