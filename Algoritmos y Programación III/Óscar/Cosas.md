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

$(PR)\neg GW$

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
$(7)\neg GW$
$(8)\neg WN (5, 7)$
$(9)\neg D \lor \neg W (6, 8)$
$(10)\neg D (2, 9)$
$(11)R \lor S (1, 10)$
$(12)R (4, 11)$
$(13)\Box (3, 12)$

- If it rains, Joe brings his umbrella. 
- If Joe has an umbrella, he doesn’t get wet. 
- If it doesn’t rain, Joe doesn’t get wet

$R$ it rains
$U$ Joe brings umbrella
$W$ Joe gets get wet

$(PR)\neg W$

$(1)R \implies U$
$(2)U \implies \neg W$
$(3)\neg R \implies \neg W$

Normalized
$(1)\neg R \lor U$
$(2)\neg U \lor \neg W$
$(3)R \lor \neg W$
---
$(4)\neg R \lor \neg W(1, 2)$
$(5)\neg W (3,4)$

- Either Heather attended the meeting or Heather was not invited. 
- If the boss wanted Heather at the meeting, then she was invited. 
- Heather did not attend the meeting. 
- If the boss did not want Heather there, and the boss did not invite her there, then she is going to be fired. 

**Prove that:** Heather is going to be fired.

$HA$ Heather attended the meeting
$HI$ Heather was invited
$BW$ Boss wanted heather at the meeting
$HF$ Heather is fired

$(PR)HF$

$(1) HA \lor \neg HI$
$(2)BW \implies HI$
$(3)\neg HA$
$(4)\neg BW \land \neg HI \implies HF$

Normalized

$(1) HA \lor \neg HI$
$(2)\neg BW \lor HI$
$(3)\neg HA$
$(4)BW \lor HI \lor HF$
---
$(5)HI \lor HF (1, 4)$
$(6)\neg HI (1,3)$
$(7)HF (5, 6)$

---

Given the following hypothesis: 
- If Mary loves Pat, then Mary loves Quincy. 
- If it is Monday, Mary loves Pat or Quincy.
prove that: 
- If it is Monday, then Mary loves Quincy.

$P$ Mary loves Pat
$Q$ Mary loves quincy
$M$ It is monday

$(PR)\neg(M \implies Q) = \neg(\neg M \lor Q) = M \land \neg Q$

$(1) P \implies Q$
$(2) M \implies P \lor Q$
$(3) M$
$(4)\neg Q$

Normalized

$(1) \neg P \lor Q$
$(2) \neg M \lor P \lor Q$
$(3) M$
$(4)\neg Q$
$(5)P \lor Q (2,3)$
$(6)Q (1,5)$
$(7)\Box (4,6)$

---

Given the following hypothesis: 
- Heads you win. 
- Heads or Tails. 
- You win or I win. 
- You loose or I loose. 
- Tails I lose.
prove that: 
- You always win

$H$ It's heads
$T$ It's tails
$I$ I win
$Y$ you win

$(PR) \neg I$

$(1) H \implies Y$
$(2) H \lor T$
$(3) Y \lor I$
$(4)\neg Y \lor \neg I$
$(5)T \implies \neg I$

normalized

$(1) \neg H \lor Y$
$(2) H \lor T$
$(3) Y \lor I$
$(4)\neg Y \lor \neg I$
$(5) \neg T \lor \neg I$
$(6)\neg Y$
$(7) \neg H (1, 6)$
$(8)T (2, 7)$
$(9)\neg I (5, 8)$
$(10)Y (3, 9)$
$(11)\Box (6, 10)$
---
Given the following hypothesis: 
- If you are lactose intolerant, then you cannot eat ice cream. 
- If you are lactose intolerant, then you cannot eat cheese. 
- If you are lactose intolerant, then you cannot drink milk. 
- You eat ice cream. 
prove that: 
- You are not lactose intolerant.

$L$ I'm lactose intolerant
$I$ I can eat ice cream
$C$ I can eat cheese
$M$ I can drink milk

$(PR) \neg L$

$(1) L \implies \neg I$
$(2) L \implies \neg C$
$(3) L \implies \neg M$
$(4) I$
$(5) L$

Normalized

$(1) \neg L \lor \neg I$
$(2) \neg L \lor \neg C$
$(3) \neg L \lor \neg M$
$(4) I$
$(5) L$
---
$(6)\neg I (1, 5)$
$(7) \Box (4, 6)$

---

Given the following statements: 
- If the lights are on and the projector is connected, then the presentation will start. 
- If the computer is running and the HDMI cable is plugged in, then the projector is connected. 
- If the presentation starts, then the audience will see the slides. 

Prove that: 
- the audience will see the slides.

**Assume** that the lights are on, the computer is running, and the HDMI cable is plugged in.

$L$ lights are on
$P$ projector is connected
$PR$ presentation starts
$C$ computer is running
$H$ Hdmi is plugged in
$S$ The audience see the slides

$(1) L$
$(2) C$
$(3)H$
$(4)P \implies S$
$(5)L \land P \implies PR$
$(6)C \land H \implies P$

---

$(7)S \implies f$ (What we want to prove)
$(8) P \implies f (4, 7)$ 
$(9)C \land H \implies f (6, 8)$
$(10) H \implies f (2, 9)$
$(11)\Box \implies f (3, 10)$
