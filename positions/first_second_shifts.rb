# Define the BPM (beats per minute)
use_bpm 70

# Define the duration for the normal notes and the longer notes
normal_duration = 0.5
long_duration = normal_duration * 2

# Sequence 1: G string (second position)
sequence1 = [:D4, :C4, :B3, :C4, :D4, :G3]
sequence1_durations = [normal_duration, normal_duration, normal_duration, normal_duration, long_duration, long_duration]

# Sequence 2: D string (first position)
sequence2 = [:G4, :F4, :E4, :F4, :G4, :D3]
sequence2_durations = [normal_duration, normal_duration, normal_duration, normal_duration, long_duration, long_duration]

# Sequence 3: A string (lower second position)
sequence3 = [:C4, :Cs4, :D4, :Ds4, :D4, :A3]
sequence3_durations = [normal_duration, normal_duration, normal_duration, normal_duration, long_duration, long_duration]

# Function to play a sequence
define :play_sequence do |notes, durations|
  notes.zip(durations).each do |note, duration|
    play note
    sleep duration
  end
end


# Loop to play the sequences continuously
live_loop :cello_etudes do
  play_sequence sequence1, sequence1_durations
  sleep 1 # pause between sequences
  play_sequence sequence2, sequence2_durations
  sleep 1 # pause between sequences
  play_sequence sequence3, sequence3_durations
  sleep 1 # pause between sequences
end