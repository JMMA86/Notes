#Sesión #Discretas 

**Recurrent Neural Networks:**
- Commonly used in speech recognition and natural language processing.
- Used when the context is important for prediction.
- The loop information allow information to persist.
- The information that persists tends to decrease with the time.
Why we use them?:
- Not all the problems can be converted into ones that have a fixed length input and output.
- Speech requires a system to store and use context.

![[Pasted image 20241021105802.png]]

So this basically works as a capacitor, it "charges" it self through queries and lately returns a complete output, it also recuperate the information already given.

![[Pasted image 20241021111238.png]]

![[Pasted image 20241021112110.png]]

