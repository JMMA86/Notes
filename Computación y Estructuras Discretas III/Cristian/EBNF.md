Odd integers

$$
\begin{align}
\text{digit}  & \leftarrow 0|1|2|3|4|5|6|7|8|9|  \\
\text{odigit} & \leftarrow 1|3|5|7|9 \\
\text{odd} & \leftarrow [+|-] \{ \text{digit} \} \text{odigit}
\end{align}
$$

Binary number

$$
\begin{align}
\text{bdigit} & \leftarrow 0|1 \\
\text{bnumber} & \leftarrow 1 \{ \text{bdigit} \} | \text{bdigit}
\end{align}
$$

Arithmetic operations over binary numbers

$$
\begin{align}
\text{operator} & \leftarrow +|-|*|/|\% \\
\text{operation}  & \leftarrow (\text{operation}) [{ \text{operator} (\text{operation} ) }] \ | \ \text{bnumber}
\end{align}
$$

Float numbers

$$
\begin{align}
\text{float} \leftarrow [+|-] \text{digit}[ . \{ \text{digit} \} ]
\end{align}
$$

Normalized integer

$$
\begin{align} \\
\text{pdigit}  & \leftarrow 1|2|3|4|5|6|7|8|9 \\
\text{ninteger} & \leftarrow [+/-] \text{pdigit} \{ \text{digit} \} | 0
\end{align}
$$

Telephone numbers

$$
\begin{align}
\text{suffix}  & \leftarrow \text{ digit} \text{ digit} \text{ digit}\text{ digit} \\
 \text{preffix} & \leftarrow \text{ digit} \text{ digit} \text{ digit}  \\
\text{normal}  & \leftarrow \text{preffix} - \text{suffix}  \\
\text{interoffice}  & \leftarrow 8 - \text{suffix} \\
\text{long} & \leftarrow  1-(\text{preffix}) \text{preffix} - \text{suffix} \\
\text{telephone} & \leftarrow \text{normal} | \text{interoffice} | \text{long}
\end{align}
$$
List of X verision 1

$$
\begin{align}
\text{pair}  & \leftarrow X \text{ and } X \\
\text{list}  & \leftarrow X | [ \{ X, \} ] \text{pair}
\end{align}
$$

List of X version 2

$$
\begin{align}
\text{pair}  & \leftarrow X \text{ and } X \\
\text{list}  & \leftarrow X | \text{pair} | [ \{ X, \} ] \text{and X}
\end{align}
$$