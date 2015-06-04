require 'pry'
require 'httparty'

class SamplParty
  include HTTParty
  base_uri "10.0.0.161:4567"

  def play_workit(version=nil)
    options = {}
    if version
      options = { query: { v: version } }
    end
    self.class.post("/workit", options)
  end
  
  def play_harder(version=nil)
    options = {}
    if version
      options = { query: { v: version } }
    end
    self.class.post("/harder", options)
  end

  def play_better(version=nil)
    options = {}
    if version
      options = { query: { v: version } }
    end
    self.class.post("/better", options)
  end

  def play_faster(version=nil)
    options = {}
    if version
      options = { query: { v: version } }
    end
    self.class.post("/faster", options)
  end

  def play_stronger(version=nil)
    options = {}
    if version
      options = { query: { v: version } }
    end
    self.class.post("/stronger", options)
  end

  def play_workit(version=nil)
    self.class.post("/workit")
  end

  def play_better(version=nil)
    self.class.post("/better")
  end

  def play_faster(version=nil)
    self.class.post("/faster")
  end

  def play_stronger(version=nil)
    self.class.post("/stronger")
  end

  def play_beat
    self.class.post("/beat")
  end
  
  def stop
    self.class.get('/stop')
  end
end

toy = SamplParty.new
puts "s"
sleep 2.55
puts "f"
toy.play_beat
sleep 13.3775
toy.play_harder(1)
sleep 0.36455
toy.play_better(1)
sleep 0.47565
toy.play_faster(1)
sleep 0.48675
toy.play_stronger(1)
# sleep 1
# toy.play_beat
# sleep 1
# toy.play_beat

# puts "Cool cool cool ..."