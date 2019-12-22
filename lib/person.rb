class Person

    attr_accessor :bank_account
    attr_reader :happiness,:hygiene,:name


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

end