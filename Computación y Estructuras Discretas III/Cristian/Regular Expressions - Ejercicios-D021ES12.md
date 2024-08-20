
Given $\Sigma = \{ 0, 1,2 \}$, strings that starts with a 2 and end with a 1

$$
2 \cdot (0 \cup 1 \cup 2)^{*} \cdot 1
$$

Given $\Sigma = \{ 0,1 \}$, strings that start or end in 00 or 11

$$
(00 \cup 11) \cdot (0 \cup 1)^{*} \cup(0 \cup 1)^{*} \cdot (00 \cup 11)
$$

Given $\Sigma = \{ 0, 1 \}$, strings that have a number of zeros divisible by three

$$
(1^{*} \cdot 0 \cdot 1^{*} \cdot 0 \cdot 1^{*} \cdot 0 \cdot 1^{*})^{*}
$$

Given $\Sigma = \{ 0, 1 \}$, strings that have at most 2 zeroes

$$
1^{*} \cup (1^{*} \cdot 0 \cdot 1^{*}) \cup (1^{*} \cdot 0 \cdot 1^{*} \cdot 0 \cdot 1^{*})
$$

