#Sesión #Ingesoft 

Aquí debería de estar lo de los diagramas de estructuras de almacenamiento, pero pailas, tocó después.

---

# Diseño synchronous y asynchronous

Síncrono -> Secuencial
Asíncrono -> Paralelo

```Java
// Ejecuta dentro del hilo principal el hilo
thread.run();

// Ejecuta de manera paralela en un bloque distinto de instrucciones
thread.start();
```

## Threadpool

Abstrae la lógica de manejar los hilos eficientemente. Esta coloca una cola interna para tener el control de las tareas en RAM y no en CPU. Esto se hace con una cantidad controlada de hilos que gestionan el procesamiento de los datos. El thread-pool realmente hace un paralelismo simulado.

### Uso del modelo síncrono en java

En java existe una palabra reservada para evitar las condiciones de carrera `synchronized`. Entonces lo que se puede hacer es:

```Java
class Data {
	private int count = 5;
	public syncronized int getCount() {
		return count;
	}
}

class Th1 {
	run() {
		while (true) {
			synchronized(Data) {
				data.count++;
			}
			thread.sleep(10);
		}
	}
}
```

Otro de los métodos para controlar la sincronía es usando semáforos con la palabra reservada `Semaphore()`.

```Java
import java.util.concurrent.Semaphore;

public class SemaforoEjemplo {
    public static void main(String[] args) {
        // Crear un semáforo con 3 permisos
        Semaphore semaforo = new Semaphore(3);

        // Crear 10 hilos que intentan acceder al recurso
        for (int i = 0; i < 10; i++) {
            new Hilo(semaforo).start();
        }
    }
}

class Hilo extends Thread {
	private Semaphore semaforo = Semaphore(3);
	
	@Override
	public void run() {
		// Intentar adquirir un permiso
		semaforo.acquire();
	
		// Acceder al recurso compartido
		System.out.println("Hilo " + Thread.currentThread().getName() + " accedió al recurso");
	
		// Simular trabajo
		Thread.sleep(2000);
	
		// Liberar el permiso
		semaforo.release();
	}
}
```

## Configurando callbacks en ICE

Configuración del thread-pool:
```Java
Ice.ThreadPool.Server.Size=10
```

**Configurando en ICE:**
La parte importante de la llamada asíncrona es que el método `factAsync` se ejecuta en un hilo separado, sin bloquear el hilo principal. Esto significa que:
- El código continúa ejecutándose sin esperar a que termine el cálculo del factorial.
- El resultado se obtendrá en el futuro, cuando el cálculo esté completo.

En otras palabras, la llamada asíncrona permite que el programa siga ejecutándose sin bloquearse, y el resultado se maneja cuando esté disponible.
```Java
CompletableFuture<String> value = chatManagerPrx.factAsync(30);
```

Desde el server lo que se puede hacer es un método para comunicarse con el cliente:

```Ice
module Demo {
	interface Callback {
		void reportResponse(string response);
	}

	interface Printer {
		...
	}
}
```

Esto se hace así porque configurar un proxy para cada cliente sería impráctico, entonces lo que se hace es que el cliente sea el pase su propio objeto proxy como parámetro para evitar complicaciones

```Ice
module Demo {
	interface Callback {
		void reportResponse(string response);
	}

	interface Printer {
		...
		fact(int n, Callback* callback);
	}
}
```

Desde el cliente tenemos que generar un adaptador que exponga el servicio para hacer el Callback

```Java
class Server {
	ObjectAdapter adapter = communicator.createObjectAdapter("Callback.client");
	Demo.Callback callback = new CallbackI();
	ObjectPrx = adapter.add(callback, Util.stringToIdentify("callback"));
	Demo.callback callbackprx = Demo.CallbackPrx.checkedCast(prx);
	adapter.activate();
	...
	communicator.waitForShutdown();
}
private class CallbackI extends Demo.Callback {
	@override
	public void reportResponse(String response, com.zeroc.Ice.Current current) {
		System.out.println(response);
	}
}
```

En el config de client:
```Java
Callbacks.endpoints = tcp -h localhost
```

Tenemos que crear otro threadpool para hacer la ejecución de la lógica del programa.

Falta gestionar los clientes que se desconectan antes de que terminen los procesos.