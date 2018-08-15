#!/usr/bin/lua5.3
-- Dessine une flèche sur la console
-- hv 180710.1106
-- source: https://github.com/strikerpt/LuaFleche 
-- Utilisation: ./arrow.lua taile_de_la_fleche


taille_fleche=tonumber(arg[1])
if taille_fleche and (taille_fleche>=2) and (taille_fleche<=20) then
	for i=1, 2*taille_fleche do
		-- pointe de la flèche
		if i==1 then print(string.rep(" ",taille_fleche).."*")

		-- tete de la flèche
		elseif i==2 or i<taille_fleche then print(string.rep(" ",taille_fleche-i).."*"..string.rep(" ",2*i-1).."*")

		-- bas de la tete de la flèche
		elseif i==taille_fleche then print(string.rep("*",taille_fleche*2+1))

		-- queue de la flèche
		elseif i>taille_fleche then print(string.rep(" ",taille_fleche).."*")
		end
	end
else
		print("Choisissez un nombre entre 2 et 20")
end
