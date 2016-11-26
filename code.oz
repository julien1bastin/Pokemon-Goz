%====INFORMATION====%
% LFSAB1402 Projet 2016
% Nomas : 81031400-91451400
% Noms : (Bastin,Julien)-(Detry,Damien)
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
		    withCheckMapEasy:true
		    withCheckMapComplete:false
		   )
in
   Map = map(ru:
		[
		 %add roads
		 rotate(angle:~1.57 1:scale(rx:0.0 ry:50.0 1:translate(dx:50.0 dy:0.0 1:primitive(kind:road)))) %1
		 scale(rx:162.5 ry:0.0 1:translate(dx:50.0 dy:50.0 1:primitive(kind:road))) %2
		 rotate(angle:~1.57 1:scale(rx:0.0 ry:112.5 1:translate(dx:137.5 dy:50.0 1:primitive(kind:road)))) %3
		 rotate(angle:~1.57 1:scale(rx:0.0 ry:112.5 1:translate(dx:212.5 dy:50.0 1:primitive(kind:road)))) %4
		 scale(rx:137.5 ry:0.0 1:translate(dx:0.0 dy:162.5 1:primitive(kind:road))) %5
		 scale(rx:175.0 ry:0.0 1:translate(dx:262.5 dy:100.0 1:primitive(kind:road))) %6
		 rotate(angle:~1.57 1:scale(rx:0.0 ry:375.0 1:translate(dx:262.5 dy:100.0 1:primitive(kind:road)))) %7
		 scale(rx:150.0 ry:0.0 1:translate(dx:212.5 dy:162.5 1:primitive(kind:road))) %8
		 rotate(angle:~1.57 1:scale(rx:0.0 ry:100.0 1:translate(dx:437.5 dy:100.0 1:primitive(kind:road)))) %9
		 scale(rx:62.5 ry:0.0 1:translate(dx:437.5 dy:200.0 1:primitive(kind:road))) %10
		 rotate(angle:~1.57 1:scale(rx:0.0 ry:100.0 1:translate(dx:362.5 dy:162.5 1:primitive(kind:road)))) %11
		 scale(rx:135.5 ry:0.0 1:translate(dx:362.5 dy:262.5 1:primitive(kind:road))) %12
		 rotate(angle:~1.57 1:scale(rx:0.0 ry:100.0 1:translate(dx:412.5 dy:262.5 1:primitive(kind:road)))) %13
		 scale(rx:87.5 ry:0.0 1:translate(dx:412.5 dy:362.5 1:primitive(kind:road))) %14
		 scale(rx:100.0 ry:0.0 1:translate(dx:162.5 dy:250.0 1:primitive(kind:road))) %15
		 rotate(angle:~1.57 1:scale(rx:0.0 ry:100.0 1:translate(dx:162.5 dy:250.0 1:primitive(kind:road)))) %16
		 scale(rx:162.5 ry:0.0 1:translate(dx:0.0 dy:350.0 1:primitive(kind:road))) %17
		 scale(rx:75.0 ry:0.0 1:translate(dx:187.5 dy:387.5 1:primitive(kind:road))) %18
		 rotate(angle:~1.57 1:scale(rx:0.0 ry:112.5 1:translate(dx:187.5 dy:387.5 1:primitive(kind:road)))) %19
		 scale(rx:237.5 ry:0.0 1:translate(dx:262.5 dy:475.0 1:primitive(kind:road))) %20

		 %add buildings
		 scale(rx:25.0 ry:25.0 1:translate(dx:25.0 dy:87.5 1:primitive(kind:building)))
		 scale(rx:37.5 ry:37.5 1:translate(dx:87.5 dy:112.5 1:primitive(kind:building)))
		 scale(rx:50.0 ry:50.0 1:translate(dx:150.0 dy:75.0 1:primitive(kind:building)))
		 scale(rx:50.0 ry:62.5 1:translate(dx:375.0 dy:112.5 1:primitive(kind:building)))
		 scale(rx:62.5 ry:75.0 1:translate(dx:275.0 dy:200.0 1:primitive(kind:building)))
		 scale(rx:50.0 ry:62.5 1:translate(dx:275.0 dy:312.5 1:primitive(kind:building)))
		 scale(rx:25.0 ry:25.0 1:translate(dx:350.0 dy:375.0 1:primitive(kind:building)))
		 scale(rx:112.5 ry:75.0 1:translate(dx:37.5 dy:375.0 1:primitive(kind:building)))

		 %add water
		 scale(rx:200.0 ry:50.0 1:translate(dx:250.0 dy:25.0 1:primitive(kind:water)))
		 scale(rx:125.0 ry:125.0 1:translate(dx:12.5 dy:187.5 1:primitive(kind:water)))
		 scale(rx:200.0 ry:50.0 1:translate(dx:287.5 dy:412.5 1:primitive(kind:water)))
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
      local FinalList RealList PokeList DoListR DoListP AuxR AuxP in
	 RealList=Map.ru
	 PokeList=Map.pu
	 fun{AuxR T X0 Y0 X1 Y1}
	    case T
	    of primitive(kind:K) then
	       case K
	       of road then fun {$ Time} realitem(kind:K p1:pt(x:X0 y:Y0) p2:pt(x:X1 y:Y1)) end
	       []building then fun {$ Time} realitem(kind:K p1:pt(x:X0 y:Y0) p2:pt(x:X0 y:Y1)
							      p3:pt(x:X1 y:Y1) p4:pt(x:X1 y:Y0)) end
	       []water then fun {$ Time} realitem(kind:K p1:pt(x:X0 y:Y0) p2:pt(x:X0 y:Y1)
							      p3:pt(x:X1 y:Y1) p4:pt(x:X1 y:Y0)) end
	       end	       
	    []translate(dx:X dy:Y 1:K) then {AuxR K X0+X Y0+Y X1+X Y1+Y}
	    []scale(rx:X ry:Y 1:K) then {AuxR K X0*X Y0*Y X1*X Y1*Y}
	    []rotate(angle:A 1:K)then {AuxR K X0 Y0 X1*{Cos A}+Y1*{Sin A} ~X1*{Sin A}+Y1*{Cos A}}
	    end
	 end

	 fun{AuxP T X Y}
	    case T
	    of primitive(kind:K) then
	       case K
	       of pokemon then fun{$ Time} pokeitem(kind:K position:pt(x:X y:Y)) end
	       []pokestop then fun{$ Time} pokeitem(kind:K position:pt(x:X y:Y)) end
	       []arena then fun{$ Time} pokeitem(kind:K position:pt(x:X y:Y)) end
	       end
	    []translate(dx:X1 dy:Y1 1:K) then {AuxP K X+X1 Y+Y1}
	    end
	 end
	 
	       
	 fun {DoListR L}
	    case L
	    of nil then nil
	    []H|T then {AuxR H 0.0 0.0 1.0 1.0}|{DoListR T}
	    end
	 end

	 fun {DoListP L}
	    case L
	    of nil then nil
	    []H|T then {AuxP H 0.0 0.0}|{DoListP T}
	    end
	 end
	 
	  FinalList = {Append {DoListR RealList} {DoListP PokeList}}

	 FinalList
      end
      
   end

   fun{CheckMap Map}
      local RuList PuList CheckP CheckR AuxR AuxP CheckTrueOrFalse in
	 RuList=Map.ru
	 PuList=Map.pu

	 fun {CheckP T}
	    case T
	    of primitive(kind:K) then
	       case K of pokemon then true
	       []pokestop then true
	       []arena then true
	       end
	    []translate(dx:X dy:Y 1:K) andthen {Float.is X} andthen {Float.is Y} then {CheckP K}
	    else false
	    end
	 end

	 fun{CheckR T}
	    case T
	    of primitive(kind:K) then
	       case K of road then true
	       []building then true
	       []water then true
	       end
	    []translate(dx:X dy:Y 1:K) andthen {Float.is X} andthen {Float.is Y} then {CheckR K}
	    []rotate(angle:A 1:K) andthen {Float.is A} then {CheckR K}
	    []scale(rx:X ry:Y 1:K) andthen {Float.is X} andthen {Float.is Y} then {CheckR K}
	    else false
	    end
	 end
	 
	 fun{AuxR L}
	    case L of nil then nil
	    []H|T then {CheckR H}|{AuxR T}
	    end
	 end

	 fun{AuxP L}
	    case L of nil then nil
	    []H|T then {CheckP H}|{AuxP T}
	    end
	 end

	 fun {CheckTrueOrFalse L}
	    case L of nil then true
	    []H|T andthen H==true then {CheckTrueOrFalse T}
	    else false
	    end
	 end

	 {CheckTrueOrFalse {Append {AuxR RuList} {AuxP PuList}}}
      end
   end
   
   {Projet.run MyFunction Map MaxTime Extensions CheckMap}
end
