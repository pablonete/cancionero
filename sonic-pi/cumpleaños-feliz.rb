# Cumpleaños feliz

escala = [:C4, :D4, :E4, :F4, :G4, :A4, :C5]

live_loop :melody do
  use_bpm 100
  
  2.times do |i|
    2.times do
      play escala[0]
      sleep 0.5
    end
    play escala[1]
    sleep 1
    play escala[0]
    sleep 1
    play escala[3+i]
    sleep 1
    play escala[2+i]
    sleep 2
  end
  
  2.times do
    play escala[0]
    sleep 0.5
  end
  escala.reverse.reject {|n| n == :G4}.take(5).map do |note|
    play note
    sleep 1
  end
  sleep 1
  
  2.times do
    play escala[5]+1
    sleep 0.5
  end
  play escala[5]
  sleep 1
  play escala[3]
  sleep 1
  play escala[4]
  sleep 1
  play escala[3]
  sleep 2
end
