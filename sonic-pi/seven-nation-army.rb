# Seven Nation Army by OpenAI

use_synth :dtri
use_synth_defaults release: 0.5, attack: 0.1

# Set the base note and octave
base_note = :c3
octave = 2

# Set the main melody and harmony notes
melody_notes = [:c4, :d4, :e4, :f4, :g4, :a4, :b4]
harmony_notes = [:c5, :e5, :g5]

# Define the main melody
define :play_melody do |notes, sleep_time|
  notes.each do |note|
    play note, sustain: 0.4
    sleep sleep_time
  end
end

# Define the harmony
define :play_harmony do |notes, sleep_time|
  notes.each do |note|
    play note, sustain: 0.2
    sleep sleep_time
  end
end

# Play the intro
play_pattern_timed [base_note, base_note + 12], [0.5, 0.5]

# Play the main loop
loop do
  play_melody melody_notes, 0.25
  play_harmony harmony_notes, 0.25
end
