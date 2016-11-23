%====INFORMATION====%
% LFSAB1402 Projet 2016
% Nomas : NOMA1-NOMA2
% Noms : (Nom1,Prenom1)-(Nom2,Prenom2)
%====MODULELINK====%
declare
%{Property.put 'MyDir' './'} %% TODO ajoutez cette ligne si les images ne s'affichent pas et remplacez ./ par le chemin vers le dossier des images
[Projet]={Module.link ["Projet2016.ozf"]}

%====CODE====%
local
   MaxTime = 10 % nombre de frame à l'animation
   MyFunction
   Map
   CheckMap
   Extensions = opt(withExtendedFormula:false
		    withIfThenElse:false
		    withComparison:false
		    withTimeWindow:false
		    withCheckMapEasy:false
		    withCheckMapComplete:false
		   )
in
   Map = map(ru:
		[
		 %add roads
		 rotate(angle:1.57 1:translate(dx:50.0 dy:0.0 1:scale(rx:50.0 ry:0.0 1:primitive(kind:road)))) %1
		 translate(dx:50.0 dy:50.0 1:scale(rx:162.5 ry:0.0 1:primitive(kind:road))) %2
		 rotate(angle:1.57 1:translate(dx:137.5 dy:50.0 1:scale(rx:112.5 ry:0.0 1:primitive(kind:road)))) %3
		 rotate(angle:1.57 1:translate(dx:215.5 dy:50.0 1:scale(rx:112.5 ry:0.0 1:primitive(kind:road)))) %4
		 translate(dx:0.0 dy:162.5 1:scale(rx:137.5 ry:0.0 1:primitive(kind:road))) %5
		 translate(dx:262.5 dy:100.0 1:scale(rx:175.0 ry:0.0 1:primitive(kind:road))) %6
		 rotate(angle:1.57 1:translate(dx:262.5 dy:100.0 1:scale(rx:375.0 ry:0.0 1:primitive(kind:road)))) %7
		 translate(dx:212.5 dy:162.5 1:scale(rx:150.0 ry:0.0 1:primitive(kind:road))) %8
		 rotate(angle:1.57 1:translate(dx:437.5 dy:100.0 1:scale(rx:100.0 ry:0.0 1:primitive(kind:road)))) %9
		 translate(dx:437.5 dy:200.0 1:scale(rx:62.5 ry:0.0 1:primitive(kind:road))) %10
		 rotate(angle:1.57 1:translate(dx:362.5 dy:162.5 1:scale(rx:100.0 ry:0.0 1:primitive(kind:road)))) %11
		 translate(dx:362.5 dy:262.5 1:scale(rx:135.5 ry:0.0 1:primitive(kind:road))) %12
		 rotate(angle:1.57 1:translate(dx:412.5 dy:262.5 1:scale(rx:100.0 ry:0.0 1:primitive(kind:road)))) %13
		 translate(dx:412.5 dy:362.5 1:scale(rx:87.5 ry:0.0 1:primitive(kind:road))) %14
		 translate(dx:162.5 dy:250.0 1:scale(rx:100.0 ry:0.0 1:primitive(kind:road))) %15
		 rotate(angle:1.57 1:translate(dx:162.5 dy:250.0 1:scale(rx:100.0 ry:0.0 1:primitive(kind:road)))) %16
		 translate(dx:0.0 dy:350.0 1:scale(rx:162.5 ry:0.0 1:primitive(kind:road))) %17
		 translate(dx:187.5 dy:387.5 1:scale(rx:75.0 ry:0.0 1:primitive(kind:road))) %18
		 rotate(angle:1.57 1:translate(dx:187.5 dy:387.5 1:scale(rx:112.5 ry:0.0 1:primitive(kind:road)))) %19
		 translate(dx:262.5 dy:475.0 1:scale(rx:237.5 ry:0.0 1:primitive(kind:road))) %20

		 %add buildings
		 translate(dx:25.0 dy:87.5 1:scale(rx:25.0 ry:25.0 1:primitive(kind:building)))
		 translate(dx:87.5 dy:112.5 1:scale(rx:37.5 ry:37.5 1:primitive(kind:building)))
		 translate(dx:150.0 dy:75.0 1:scale(rx:50.0 ry:50.0 1:primitive(kind:building)))
		 translate(dx:375.0 dy:112.5 1:scale(rx:50.0 ry:62.5 1:primitive(kind:building)))
		 translate(dx:275.0 dy:200.0 1:scale(rx:62.5 ry:75.0 1:primitive(kind:building)))
		 translate(dx:275.0 dy:312.5 1:scale(rx:50.0 ry:62.5 1:primitive(kind:building)))
		 translate(dx:350.0 dy:375.0 1:scale(rx:25.0 ry:25.0 1:primitive(kind:building)))
		 translate(dx:37.5 dy:375.0 1:scale(rx:112.5 ry:75.0 1:primitive(kind:building)))

		 %add water
		 translate(dx:250.0 dy:25.0 1:scale(rx:200.0 ry:50.0 1:primitive(kind:water)))
		 translate(dx:12.5 dy:187.5 1:scale(rx:125.0 ry:125.0 1:primitive(kind:water)))
		 translate(dx:287.5 dy:412.5 1:scale(rx:200.0 ry:50.0 1:primitive(kind:water)))
		]
	     pu:
		[
		 %add arenas
		 translate(dx:187.5 dy:287.5 1:primitive(kind:arena)) 

		 %add pokestops
		 translate(dx:100.0 dy:87.5 1:primitive(kind:pokestop))
		 translate(dx:300.0 dy:137.5 1:primitive(kind:pokestop))
		 translate(dx:225.0 dy:437.5 1:primitive(kind:pokestop))

		 %add pokemons
		 translate(dx:237.5 dy:137.5 1:primitive(kind:pokemon))
		 translate(dx:200.0 dy:212.5 1:primitive(kind:pokemon))
		 translate(dx:462.5 dy:150.0 1:primitive(kind:pokemon))
		 translate(dx:225.0 dy:275.0 1:primitive(kind:pokemon))
		 translate(dx:462.5 dy:300.0 1:primitive(kind:pokemon))
		 translate(dx:450.0 dy:337.5 1:primitive(kind:pokemon))
		 translate(dx:100.0 dy:487.5 1:primitive(kind:pokemon))
		])

   fun{MyFunction Map}
      nil %% TODO complete your function here
   end

   fun{CheckMap Map}
      false %% TODO complete here the function for the checking of the maps
   end
   
   {Projet.run MyFunction Map MaxTime Extensions CheckMap}
end
