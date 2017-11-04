require 'csv'    
CSV.foreach('./db/2016_sm_chs.csv', :headers => true) do |row|
  Csh.create!(row.to_hash)
end
