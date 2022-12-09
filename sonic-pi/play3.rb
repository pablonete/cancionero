# Having Fun with the Play Pattern Timed command
# Mehackit 2016
# Original source https://sonic-pi.mehackit.org/exercises/en/11-templates/06-play-pattern-fun.html

use_bpm 100

live_loop :kick do
  sample :bd_haus
  sleep(1)
end

live_loop :melodia do
  with_fx :reverb, mix: 0.4 do
    use_synth :piano
    play chord(:E4, :minor7), release: 2, amp: 2
    
    use_synth :tri
    play3 :E3
    play3 :E4
    play3 :E5
    play3 :E6
    
    use_synth :piano
    play chord(:C4, :major7), release: 2, amp: 2
    
    use_synth :saw
    play3 :C3
    play3 :C4
    play3 :C5
    play3 :C6
  end
end

live_loop :hihats do
  sleep 0.5
  with_fx :reverb, mix: 0.3 do
    3.times do
      sample :drum_cymbal_closed, rate: 1.5, vol: rrand(0.3, 0.7)
      sleep 0.5
    end
    sample :perc_snap , rate: 2, vol: rrand(0.1, 0.3)
  end
end

define :play3 do |note|
  play_pattern_timed chord(note, :major7), 0.25, release: 0.1
end
