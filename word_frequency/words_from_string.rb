# Splits string into words

def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

