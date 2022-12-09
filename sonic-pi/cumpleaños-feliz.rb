# Cumpleaños feliz

escala = [:C4, :D4, :E4, :F4]

live_loop :melody do
  use_bpm 100
  
  play escala[0]
  sleep 0.5
  play escala[0]
  sleep 0.5
  play escala[1]
  sleep 1
  play escala[0]
  sleep 1
  play escala[3]
  sleep 1
  play escala[2]
  sleep 2
  
  play :C4
  sleep 0.5
  play :C4
  sleep 0.5
  play :D4
  sleep 1
  play :C4
  sleep 1
  play :G4
  sleep 1
  play :F4
  sleep 2
  
  play :C4
  sleep 0.5
  play :C4
  sleep 0.5
  play :C5
  sleep 1
  play :A4
  sleep 1
  play :F4
  sleep 1
  play :E4
  sleep 1
  play :D4
  sleep 2
  
  play :Bb4
  sleep 0.5
  play :Bb4
  sleep 0.5
  play :A4
  sleep 1
  play :F4
  sleep 1
  play :G4
  sleep 1
  play :F4
  sleep 2
end
