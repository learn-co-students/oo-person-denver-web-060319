class Person

    attr_accessor :bank_account
    attr_reader :happiness,:hygiene,:name


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

end