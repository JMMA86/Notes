Given the following hypothesis: 
- It is raining, it is snowing or it is dry. 
- It is warm. 
- It is not raining. 
- It is not snowing. 
- If the weather is nice, then it is good to walk. 
- If the weather is dry and warm, the weather is nice. 
prove that: 
- It is good to walk
$R$ is raining
$S$ is snowing
$D$ is dry
$W$ is warm
$WN$ weather is nice
$GW$ is good to walk

$(PR)GW$

$(1) R \lor S \lor D$
$(2) W$
$(3) \neg R$
$(4)\neg S$
$(5)WN \implies GW$
$(6)D \land W \implies WN$

Normalized

$(1) R \lor S \lor D$
$(2) W$
$(3) \neg R$
$(4)\neg S$
$(5)\neg WN \lor GW$
$(6)\neg D \lor \neg W \lor WN$
---
$(7)S\lor D (1, 3)$
$(8)\neg D \lor WN (2, 6)$
$(9)S \lor WN (7, 8)$
$(10) WN (4, 9)$
$(11)GW(5, 10)$
