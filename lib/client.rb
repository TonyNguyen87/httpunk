require "httparty"
require "pry"
require "json"

class Client
  include HTTParty
  base_uri "http://10.138.194.54:4567"

  def test_it
    Client.get("/api/test")
  end
  def after(v=1)
    Client.get("/after", query: {v: v})
  end
  def beat
    Client.get("/beat")
  end
  def better(v=1)
    Client.get("/better", query: { v: v})
  end
  def doit(v=1)
    Client.get("/doit", query: { v: v})
  end
  def ever(v=1)
    Client.get("/ever", query: { v: v})
  end
  def faster(v=1)
    Client.get("/faster", query: { v: v})
  end
  def harder(v=1)
    Client.get("/harder", query: { v: v})
  end
  def hour(v=1)
    Client.get("/hour", query: { v: v})
  end
  def make_it(v=1)
    Client.get("/makeit", query: { v: v})
  end
  def makes_us(v=1)
    Client.get("/makesus", query: { v: v})
  end
  def more_than(v=1)
    Client.get("/morethan", query: {v: v})
  end
  def never(v=1)
    Client.get("/never", query: {v: v})
  end
  def our(v=1)
    Client.get("/our", query: {v: v})
  end
  def over(v=1)
    Client.get("/over", query: {v: v})
  end
  def stronger(v=1)
    Client.get("/stronger", query: {v: v})
  end
  def workis(v=1)
    Client.get("/workis", query: {v: v})
  end
  def workit(v=1)
    Client.get("/workit",query: {v: v})
  end
  def stop
    Client.get("/stop")
  end

  # def my_mix2
  #   a= [:harder, :better, :faster, :stronger, :workit, :make_it,
  #       :makes_us, :better, :harder, :stronger, :faster]
  #   a.each do |sound_method|
  #      self.send(:method, sound_method)
  #     sleep 0.5
  #   end
  # end
end

client = Client.new
client.test_it
def test(client)
  client.after
  sleep 1
  client.better
  sleep 2
  client.harder
  sleep 1
  client.harder(2)
  sleep 1
  client.after
  sleep 1
  client.hour
  sleep 1
  client.hour(3)
  sleep 1
  client.after(3)
  sleep 1
  client.after(2)
end

def my_mix(client)
client.after(3)
sleep 0.5
client.after(2)
sleep 0.5
client.after
sleep 0.5
client.workit
sleep 0.5
client.workit
sleep 0.5
client.make_it
sleep 0.5
client.stronger
sleep 0.5
client.harder(2)
sleep 0.5
client.faster(2)
sleep 0.5
client.better
end


client.beat
my_mix(client)
client.stop

#binding.pry
#routes to play something kind of request
#killplay function user can use to stop the music
