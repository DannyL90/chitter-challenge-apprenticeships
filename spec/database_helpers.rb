require 'pg'

def presisted_data(id:)
  connection = PG.connect(dbname: 'chitter_test')
  result = connection.query("SELECT * FROM peeps WHERE id = #{id};")
  result.first
end