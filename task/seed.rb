require 'csv'

class Seed

  def self.create_rows
    csv_file = File.expand_path('../../config/team.csv', __FILE__)
    CSV.foreach(csv_file, col_sep: ', ', headers: true) do |row|
        begin
          Player.create!(
          :first_name => row[0],
          :last_name => row[1],
          :score => row[2].to_i,
          :nickname => row[3],
        )
        rescue ActiveRecord::RecordInvalid => e
          if e.message == 'Validation failed: Eqid has already been taken'
            next
          end
        end
    end
  end

end
