# Cumpleaños feliz

escala = [:C4, :D4, :E4, :F4, :G4, :A4, :C5]

use_bpm 120

live_loop :kick do
  sample :bd_haus
  sleep 1
  sample :perc_snap
  sleep 1
end

live_loop :melody do
  use_synth :piano
  
  play_pattern_timed [:c4, :c4], 0.5
  play_pattern_timed [:d4, :c4, :f4, :e4], 1
  sleep 1
  
  play_pattern_timed [:c4, :c4], 0.5
  play_pattern_timed [:d4, :c4, :g4, :f4], 1
  sleep 1
  
  play_pattern_timed [:c4, :c4], 0.5
  play_pattern_timed [:c5, :a4, :f4, :e4, :d4], 1
  sleep 1
  
  play_pattern_timed [:bb4, :bb4], 0.5
  play_pattern_timed [:a4, :f4, :g4, :f4], 1
  sleep 1
end
