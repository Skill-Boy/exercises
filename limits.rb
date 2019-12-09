def limits(words, total_character)
  word = words.join.gsub(/(.{#{total_character}})/, '\1 \2').gsub(" ", ",")
  word.split(",")
end  
  
limits(['hola', 'este', 'es', 'un', 'nuevo', 'mensaje'], 10)