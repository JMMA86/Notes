#Sesión #Discretas 

# **Recurrent Neural Networks:**
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

---

# LSTM

![[Pasted image 20241025141128.png]]

**The main idea is that we can remember in short and long term**

![[Pasted image 20241025141404.png]]

## Smallest unit for a neuron
![[Pasted image 20241025141701.png]]

![[Pasted image 20241025141824.png]]

![[Pasted image 20241025141938.png]]

![[Pasted image 20241025142200.png]]

![[Pasted image 20241025142907.png]]

![[Pasted image 20241025143509.png]]

![[Pasted image 20241025143928.png]]

![[Pasted image 20241025144058.png]]

![[Pasted image 20241025144953.png]]

### Métricas para medir la eficiencia de una IA
- Kappa

### Formas de balancear un dataset
- Data augmentation
