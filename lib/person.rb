# your code goes here
require 'pry'
class Person
  attr_reader :name, :bank_account, :happiness, :hygiene


  def initialize(name)
    @name = name
    @bank_account=25
    @happiness=8
    @hygiene=8
  end

  def bank_account=(x)
    @bank_account += x
  end

  def happiness=(new_happiness)
    #binding.pry
    @happiness = new_happiness
    if @happiness >10
      @happiness=10
    elsif @happiness < 0
      @happiness=0
    else
      @happiness
    end
  end

  def hygiene=(new_hygiene)
    @hygiene=new_hygiene
    if @hygiene >10
      @hygiene=10
    elsif @hygiene < 0
      @hygiene=0
    else
      @hygiene
    end
  end

  def happy?
    if @happiness>7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene>7
      true
    else
      false
    end
  end

  def get_paid(payment)
    self.bank_account=payment
    "all about the benjamins"
  end

  def take_bath
    @hygiene +=4
    self.hygiene = @hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -=3
    self.hygiene = @hygiene
    @happiness +=2
    self.happiness = @happiness
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness +=3
    self.happiness = @happiness
    friend.happiness +=3
    "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -=2
      friend.happiness -=2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness +=1
      friend.happiness +=1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end










end
