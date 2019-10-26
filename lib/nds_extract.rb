$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {
  }
  row_index = 0
  total = 0
  name = ""

  while row_index < nds.length do
    column_index = 0
    while column_index < nds[row_index][:movies].length do
      name = nds[row_index][:name]
      total += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end
    result[name] = total
    total = 0
    row_index += 1
  end

  return result
end
