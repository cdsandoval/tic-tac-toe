##Esta era la solucion que nos sugerio Arturo Puente
##Nuestra primera idea era solo mostrar los index disponibles del array
##Con eso, solo mostrariamos los disponibles para el usuario

def map_with_index
   array = [0,1,2,3,"","","",]

   puts array.map.with_index{|value,index| index if value == ""}.compact.join(" ")
end

map_with_index