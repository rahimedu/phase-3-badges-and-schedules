def badge_maker(name)
    "Hello, my name is #{name}."
  end
  
  def batch_badge_creator(names)
    names.map {|name| badge_maker(name)}
  end
  
  def assign_rooms(speakers)
    speakers.map.with_index {|speaker, index| "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"}
  end
  
  def printer(speakers)
    batch_badge_creator(speakers).each {|message| puts message}
    assign_rooms(speakers).each {|message| puts message}
  end