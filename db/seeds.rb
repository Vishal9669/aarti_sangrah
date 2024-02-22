# Create Aartis
aartis_data = [
  { title: "Aarti 1", lyrics: ["Lyrics line 1 for Aarti 1"] },
  { title: "Aarti 2", lyrics: ["Lyrics line 1 for Aarti 2"] },
  { title: "Aarti 3", lyrics: ["Lyrics line 1 for Aarti 3"] }
  # Add more Aartis as needed
]

# Create Aartis records
aartis_data.each do |aarti_attrs|
  Aarti.create(aarti_attrs)
end
