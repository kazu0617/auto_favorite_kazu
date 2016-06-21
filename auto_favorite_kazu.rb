#-*- coding: utf-8 -*-
 
Plugin.create :auto_favorite_kazu do
 
  @regexp = /@GameoftheBest |@Gameofthebest /
  
  on_appear do |messages|
    messages.each do |m|
      m.favorite if @regexp.match m.to_s
    end
  end
end
