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
   MaxTime = 500 % nombre de frame à l'animation
   MyFunction
   Map
   CheckMap
   Extensions = opt(withExtendedFormula:true
		    withIfThenElse:true
		    withComparison:true
		    withTimeWindow:true
		    withCheckMapEasy:true
		    withCheckMapComplete:true
		   )
in
   Map = map(ru:
		[
		 %add roads
		 rotate(angle:~1.57 1:[scale(rx:0.0 ry:50.0 1:[translate(dx:50.0 dy:0.0 1:[primitive(kind:road)])])]) %1
		 scale(rx:162.5 ry:0.0 1:[translate(dx:50.0 dy:50.0 1:[primitive(kind:road)])]) %2
		 rotate(angle:~1.57 1:[scale(rx:0.0 ry:112.5 1:[translate(dx:137.5 dy:50.0 1:[primitive(kind:road)])])]) %3
		 rotate(angle:~1.57 1:[scale(rx:0.0 ry:112.5 1:[translate(dx:212.5 dy:50.0 1:[primitive(kind:road)])])]) %4
		 scale(rx:137.5 ry:0.0 1:[translate(dx:0.0 dy:162.5 1:[primitive(kind:road)])]) %5
		 scale(rx:175.0 ry:0.0 1:[translate(dx:262.5 dy:100.0 1:[primitive(kind:road)])]) %6
		 rotate(angle:~1.57 1:[scale(rx:0.0 ry:375.0 1:[translate(dx:262.5 dy:100.0 1:[primitive(kind:road)])])]) %7
		 scale(rx:150.0 ry:0.0 1:[translate(dx:212.5 dy:162.5 1:[primitive(kind:road)])]) %8
		 rotate(angle:~1.57 1:[scale(rx:0.0 ry:100.0 1:[translate(dx:437.5 dy:100.0 1:[primitive(kind:road)])])]) %9
		 scale(rx:62.5 ry:0.0 1:[translate(dx:437.5 dy:200.0 1:[primitive(kind:road)])]) %10
		 rotate(angle:~1.57 1:[scale(rx:0.0 ry:100.0 1:[translate(dx:362.5 dy:162.5 1:[primitive(kind:road)])])]) %11
		 scale(rx:135.5 ry:0.0 1:[translate(dx:362.5 dy:262.5 1:[primitive(kind:road)])]) %12
		 rotate(angle:~1.57 1:[scale(rx:0.0 ry:100.0 1:[translate(dx:412.5 dy:262.5 1:[primitive(kind:road)])])]) %13
		 scale(rx:87.5 ry:0.0 1:[translate(dx:412.5 dy:362.5 1:[primitive(kind:road)])]) %14
		 scale(rx:100.0 ry:0.0 1:[translate(dx:162.5 dy:250.0 1:[primitive(kind:road)])]) %15
		 rotate(angle:~1.57 1:[scale(rx:0.0 ry:100.0 1:[translate(dx:162.5 dy:250.0 1:[primitive(kind:road)])])]) %16
		 scale(rx:162.5 ry:0.0 1:[translate(dx:0.0 dy:350.0 1:[primitive(kind:road)])]) %17
		 scale(rx:75.0 ry:0.0 1:[translate(dx:187.5 dy:387.5 1:[primitive(kind:road)])]) %18
		 rotate(angle:~1.57 1:[scale(rx:0.0 ry:112.5 1:[translate(dx:187.5 dy:387.5 1:[primitive(kind:road)])])]) %19
		 scale(rx:237.5 ry:0.0 1:[translate(dx:262.5 dy:475.0 1:[primitive(kind:road)])]) %20

		 %add buildings
		 scale(rx:25.0 ry:25.0 1:[translate(dx:25.0 dy:87.5 1:[primitive(kind:building)])])
		 scale(rx:37.5 ry:37.5 1:[translate(dx:87.5 dy:112.5 1:[primitive(kind:building)])])
		 scale(rx:50.0 ry:50.0 1:[translate(dx:150.0 dy:75.0 1:[primitive(kind:building)])])
		 scale(rx:50.0 ry:62.5 1:[translate(dx:375.0 dy:112.5 1:[primitive(kind:building)])])
		 scale(rx:62.5 ry:75.0 1:[translate(dx:275.0 dy:200.0 1:[primitive(kind:building)])])
		 scale(rx:50.0 ry:62.5 1:[translate(dx:275.0 dy:312.5 1:[primitive(kind:building)])])
		 scale(rx:25.0 ry:25.0 1:[translate(dx:350.0 dy:375.0 1:[primitive(kind:building)])])
		 scale(rx:112.5 ry:75.0 1:[translate(dx:37.5 dy:375.0 1:[primitive(kind:building)])])

		 %add water
		 scale(rx:200.0 ry:50.0 1:[translate(dx:250.0 dy:25.0 1:[primitive(kind:water)])])
		 scale(rx:125.0 ry:125.0 1:[translate(dx:12.5 dy:187.5 1:[primitive(kind:water)])])
		 scale(rx:200.0 ry:50.0 1:[translate(dx:287.5 dy:412.5 1:[primitive(kind:water)])])
		]
	     pu:
		[
		 %add arenas
		 translate(dx:187.5 dy:287.5 1:[spawn(tmin:1 tmax:80 1:[translate(dx:400.0 dy:400.0 1:[primitive(kind:arena)])])])

		 %add pokestops
		 translate(dx:100.0 dy:87.5 1:[spawn(tmin:2 tmax:5 1:[primitive(kind:pokestop)])])
		 translate(dx:300.0 dy:137.5 1:[primitive(kind:pokestop)])
		 translate(dx:225.0 dy:437.5 1:[primitive(kind:pokestop)])

		 %add pokemons
		 translate(dx:237.5 dy:137.5 1:[primitive(kind:pokemon)])
		 translate(dx:200.0 dy:212.5 1:[primitive(kind:pokemon)])
		 translate(dx:462.5 dy:150.0 1:[primitive(kind:pokemon)])
		 translate(dx:225.0 dy:275.0 1:[primitive(kind:pokemon)])
		 translate(dx:462.5 dy:300.0 1:[primitive(kind:pokemon)])
		 translate(dx:450.0 dy:337.5 1:[primitive(kind:pokemon)])
		 translate(dx:100.0 dy:487.5 1:[primitive(kind:pokemon)])
		])

   fun{MyFunction Map}
      local FinalList RealList PokeList DoListR DoListP AuxR AuxP ValueToFloat FormulaToFloat Append DoFinalListP DoFinalListR FlattenList in
	 RealList=Map.ru
	 PokeList=Map.pu
	 
	 fun {Append L1 L2}
	    case L1
	    of nil then L2
	    []H|T then H|{Append T L2}
	    end
	 end

	 fun {FlattenList L}
	    case L
	    of H|T then {Append {FlattenList H} {FlattenList T}}
	    [] nil then nil
	    else [L]
	    end
	 end
	 	 
	 %Fonction qui prend une <Value> en parametre et qui renvoie apres recursion un float
	 fun {ValueToFloat V}
	    case V
	    of M andthen {Float.is M} then M
	    [] plus(V1 V2) then {ValueToFloat V1}+{ValueToFloat V2}
	    [] minus(V1 V2) then {ValueToFloat V1}-{ValueToFloat V2}
	    [] mult(V1 V2) then {ValueToFloat V1}*{ValueToFloat V2}
	    [] 'div'(V1 V2) then ({ValueToFloat V1}/{ValueToFloat V2})
	    [] cos(V1) then {Float.cos {ValueToFloat V1}}
	    [] sin(V1) then {Float.sin {ValueToFloat V1}}
	    [] tan(V1) then {Float.tan {ValueToFloat V1}}
	    [] exp(V1) then {Float.exp {ValueToFloat V1}}
	    [] log(V1) then {Float.log {ValueToFloat V1}}
	    [] neg(V1) then ~{ValueToFloat V1}
	    end
	 end

	 %Fonction qui prend une <Formula> en parametre et qui renvoie apres recursion un float
	 fun {FormulaToFloat F Time}
	    case F
	    of M andthen {Float.is M} then M
	    []time then Time
	    []plus(F1 F2) then {FormulaToFloat F1 Time}+{FormulaToFloat F2 Time}
	    []minus(F1 F2) then {FormulaToFloat F1 Time}-{FormulaToFloat F2 Time}
	    []mult(F1 F2) then {FormulaToFloat F1 Time}*{FormulaToFloat F2 Time}
	    []'div'(F1 F2) then ({FormulaToFloat F1 Time}/{FormulaToFloat F2 Time})
	    []sin(F1) then {Float.sin {FormulaToFloat F1 Time}}
	    []cos(F1) then {Float.cos {FormulaToFloat F1 Time}}
	    []tan(F1) then {Float.tan {FormulaToFloat F1 Time}}
	    []exp(F1) then {Float.exp {FormulaToFloat F1 Time}}
	    []log(F1) then {Float.log {FormulaToFloat F1 Time}}
	    []neg(F1) then ~{FormulaToFloat F1 Time}
	    []ite(F1 F2 F3) then
	       if {FormulaToFloat F1 Time}==0.0 then {FormulaToFloat F3 Time}
	       else {FormulaToFloat F2 Time}
	       end
	    []eq(F1 F2) then
	       if {FormulaToFloat F1 Time}=={FormulaToFloat F2 Time} then 1.0
	       else 0.0
	       end
	    []ne(F1 F2) then
	       if {FormulaToFloat F1 Time} \= {FormulaToFloat F2 Time} then 1.0
	       else 0.0
	       end
	    []lt(F1 F2) then
	       if {FormulaToFloat F1 Time} < {FormulaToFloat F2 Time} then 1.0
	       else 0.0
	       end
	    []le(F1 F2) then
	       if {FormulaToFloat F1 Time} =< {FormulaToFloat F2 Time} then 1.0
	       else 0.0
	       end
	    []gt(F1 F2) then
	       if {FormulaToFloat F1 Time} > {FormulaToFloat F2 Time} then 1.0
	       else 0.0
	       end
	    []ge(F1 F2) then
	       if {FormulaToFloat F1 Time} >= {FormulaToFloat F2 Time} then 1.0
	       else 0.0
	       end
	    end
	    
	 end     

	 
	 
	 %Fonction qui prend un <RealUniverseItem> et ses coordonnees en parametre et qui renvoie une fonction placant cet item correctement sur la map
	 fun {AuxR T1 X0 Y0 X1 Y1}
	    case T1 
	    of primitive(kind:K) then
	       case K
	       of road then fun {$ Time} realitem(kind:K p1:pt(x:{ValueToFloat X0} y:{ValueToFloat Y0}) p2:pt(x:{ValueToFloat X1} y:{ValueToFloat Y1})) end
	       []building then fun {$ Time} realitem(kind:K p1:pt(x:{ValueToFloat X0} y:{ValueToFloat Y0}) p2:pt(x:{ValueToFloat X0} y:{ValueToFloat Y1}) p3:pt(x:{ValueToFloat X1} y:{ValueToFloat Y1}) p4:pt(x:{ValueToFloat X1} y:{ValueToFloat Y0})) end
	       []water then fun {$ Time}  realitem(kind:K p1:pt(x:{ValueToFloat X0} y:{ValueToFloat Y0}) p2:pt(x:{ValueToFloat X0} y:{ValueToFloat Y1}) p3:pt(x:{ValueToFloat X1} y:{ValueToFloat Y1}) p4:pt(x:{ValueToFloat X1} y:{ValueToFloat Y0})) end
	       end
	    []translate(dx:X dy:Y 1:K) then {DoListR K X0+{ValueToFloat X} Y0+{ValueToFloat Y} X1+{ValueToFloat X} Y1+{ValueToFloat Y}}
	    []scale(rx:X ry:Y 1:K) then {DoListR K X0*{ValueToFloat X} Y0*{ValueToFloat Y} X1*{ValueToFloat X} Y1*{ValueToFloat Y}}
	    []rotate(angle:A 1:K)then {DoListR K X0 Y0 X1*{Float.cos {ValueToFloat A}}+Y1*{Float.sin {ValueToFloat A}} ~X1*{Float.sin {ValueToFloat A}}+Y1*{Float.cos {ValueToFloat A}}}
	    end
	 end
	 
	 %Fonction qui prend un <PokeUniversePOI> et ses coordonnee en parametre et renvoie une fonction placant correctement cet item sur la map
	 fun {AuxP T X0 Y0 X1 Y1 TMin TMax Acc}
	    case T
	    of primitive(kind:K) andthen Acc==false then
	       fun{$ Time}
		  if Time>{Int.toFloat TMin} andthen Time=<{Int.toFloat TMax} then pokeitem(kind:K position:pt(x:{FormulaToFloat X0 Time} y:{FormulaToFloat Y0 Time}))
		  else empty
		  end
	       end
	    []primitive(kind:K) andthen Acc==true then
	       fun{$ Time}
		  if Time>{Int.toFloat TMin} andthen Time=<{Int.toFloat TMax} then pokeitem(kind:K position:pt(x:(({FormulaToFloat X1 Time}-{FormulaToFloat X0 Time})+(({FormulaToFloat X1 Time}-{FormulaToFloat X0 Time})*((Time-{Int.toFloat TMin})/{Int.toFloat (TMax-TMin)})))
														 y:(({FormulaToFloat Y1 Time}-{FormulaToFloat Y0 Time})+(({FormulaToFloat Y1 Time}-{FormulaToFloat Y0 Time})*((Time-{Int.toFloat TMin})/{Int.toFloat (TMax-TMin)})))))
		  else empty
		  end
	       end
	    []translate(dx:X dy:Y 1:K) andthen Acc==false then {DoListP K X0+{FormulaToFloat X TMin} Y0+{FormulaToFloat Y TMin} X1+{FormulaToFloat X TMin} Y1+{FormulaToFloat Y TMin} TMin TMax false}
	    []translate(dx:X dy:Y 1:K) andthen Acc==true then {DoListP K X0 Y0 X1+{FormulaToFloat X TMin} Y1+{FormulaToFloat Y TMin} TMin TMax true}
	    []spawn(tmin:I1 tmax:I2 1:K) andthen Acc==true then
	        if I1>TMax then fun{$ Time} empty end
		elseif I2<TMin then fun{$ Time} empty end
		else
		   local
		      fun {Min A B}
			 if A<B then A
			 else B
			 end
		      end
		      fun {Max A B}
			 if A>B then A
			 else B
			 end
		      end
		   in
		      {DoListP K X0 Y0 X1 Y1 {Max TMin I1} {Min TMax I2} true}
		   end
		end
	    []spawn(tmin:I1 tmax:I2 1:K) andthen Acc==false then {DoListP K X0 Y0 X1 Y1 I1 I2 true}
	    end
	 end
	       	    
	 %Fonction qui parcours la liste des elements du realuniverse de la map (Map.ru) et cree une liste des fonctions a renvoyer pour les placer
	 fun {DoListR L X0 Y0 X1 Y1}
	    case L
	    of nil then nil
	    []H|T then {AuxR H X0 Y0 X1 Y1}|{DoListR T X0 Y0 X1 Y1}
	    else {AuxR L X0 Y0 X1 Y1}
	    end
	 end

	 %Fonction qui parcours la liste des elements du pokeuniverse de la map (Map.pu) et cree une liste des fonctions a renvoyer pour les placer
	 fun {DoListP L X0 Y0 X1 Y1 TMin TMax Acc}
	    case L
	    of nil then nil
	    []H|T then {AuxP H X0 Y0 X1 Y1 TMin TMax Acc}|{DoListP T X0 Y0 X1 Y1 TMin TMax Acc} 
	    else {AuxP L X0 Y0 X1 Y1 TMin TMax Acc}
	    end
	 end

	 fun {DoFinalListR L}
	    case L of nil then nil
	    []H|T then {DoListR H 0.0 0.0 1.0 1.0}|{DoFinalListR T}
	    end
	 end

	 fun {DoFinalListP L}
	    case L of nil then nil
	    []H|T then {DoListP H 0.0 0.0 0.0 0.0 0 MaxTime false}|{DoFinalListP T}
	    end
	 end
	 
	 
	 FinalList = {Append {FlattenList {DoFinalListR RealList}} {FlattenList{DoFinalListP PokeList}}}

	 FinalList
      end
      
   end

   fun{CheckMap Map}
      local RuList PuList CheckP CheckR AuxR AuxP CheckTrueOrFalse CheckValueFormula Append CheckInListValueFormula CheckVF in
	 RuList=Map.ru
	 PuList=Map.pu

	 fun {Append L1 L2}
	    case L1
	    of nil then L2
	    []H|T then H|{Append T L2}
	    end
	 end
	 
	 %Fonction qui prend chaque element de PuList et qui renvoie true si l'element est correctement definit
	 fun {CheckP T}
	    case T
	    of primitive(kind:K) then
	       case K of pokemon then true
	       []pokestop then true
	       []arena then true
	       end
	    []translate(dx:X dy:Y 1:K) andthen {CheckValueFormula X} andthen {CheckValueFormula Y} then {CheckP K}
	    []spawn(tmin:Mi tmax:Ma 1:K) andthen {Int.is Mi} andthen {Int.isMa} then {CheckP K}
	    else false
	    end
	 end

	 %Fonction qui prend chaque element de RuList et qui renvoie true si l'element est correctement definit
	 fun{CheckR T}
	    case T
	    of nil then true
	    []H|T then true
	    []primitive(kind:K) then
	       case K of road then true
	       []building then true
	       []water then true
	       end
	    []translate(dx:X dy:Y 1:K) andthen {CheckValueFormula X} andthen {CheckValueFormula Y} then {CheckR K}
	    []rotate(angle:A 1:K) andthen {CheckValueFormula A} then {CheckR K}
	    []scale(rx:X ry:Y 1:K) andthen {CheckValueFormula X} andthen {CheckValueFormula Y} then {CheckR K}
	    else false
	    end
	 end

	 %Fonction qui cree une liste de true et false en fonction de chaque element de RuList
	 fun{AuxR L}
	    case L of nil then nil
	    []H|T then {CheckR H}|{AuxR T}
	    end
	 end

	 %Fonction qui cree une liste de true et false en fonction de chaque element de PuList
	 fun{AuxP L}
	    case L of nil then nil
	    []H|T then {CheckP H}|{AuxP T}
	    end
	 end

	 %Fonction qui renvoie true si tous les elements de la map sont correctement definis false sinon
	 fun {CheckTrueOrFalse L}
	    case L of nil then true
	    []H|T andthen H==true then {CheckTrueOrFalse T}
	    else false
	    end
	 end

	 fun{CheckValueFormula X}
	    case X
	    of M andthen {Float.is M} then true
            []time then true
	    []minus(V1 V2) then {CheckVF V1 V2}
	    []plus(V1 V2) then {CheckVF V1 V2}
	    []mult(V1 V2) then {CheckVF V1 V2}
	    []'div'(V1 V2) then {CheckVF V1 V2}
	    []cos(V) then {CheckValueFormula V}
	    []sin(V) then {CheckValueFormula V}
	    []tan(V) then {CheckValueFormula V}
	    []exp(V) then {CheckValueFormula V}
	    []log(V) then {CheckValueFormula V}
	    []neg(V) then {CheckValueFormula V}
	    []ite(V1 V2 V3) then
	       if {CheckValueFormula V1} andthen {CheckValueFormula V2} andthen {CheckValueFormula V3} then true
	       else false
	       end
	    []eq(V1 V2) then {CheckVF V1 V2}
	    []ne(V1 V2) then {CheckVF V1 V2}
	    []lt(V1 V2) then {CheckVF V1 V2}
	    []le(V1 V2) then {CheckVF V1 V2}
	    []gt(V1 V2) then {CheckVF V1 V2}
	    []ge(V1 V2) then {CheckVF V1 V2}
	    else false
	    end
	 end

	 fun{CheckVF V1 V2}
	    if {CheckValueFormula V1} andthen {CheckValueFormula V2} then true
	    else false
	    end
	 end
	 	 
	 {CheckTrueOrFalse {Append {AuxR RuList} {AuxP PuList}}}
      end
   end
   
   {Projet.run MyFunction Map MaxTime Extensions CheckMap}
end
