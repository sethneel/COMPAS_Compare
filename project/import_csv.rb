require 'csv'    

csv_text = File.read('../compas_app.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Record.create!(row.to_hash)
end