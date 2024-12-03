## Lowest Common Ancestor (Binary Lifting)
#### Complejidad:
- **Preprocesamiento**: $O(n \cdot \log n)$, donde $n$ es el número de nodos. Esto se debe a la inicialización de la estructura de datos y al recorrido DFS que configura el arreglo `up`.
- **Consulta LCA**: $O(\log n)$, ya que solo se necesitan realizar $O(\log n)$ saltos en el arreglo `up` para encontrar el ancestro común.

Para resolver consultas rápidas del ancestro común de dos nodos en árboles, especialmente en escenarios con múltiples consultas tras un preprocesamiento. Útil en problemas con árboles grandes o caminos largos donde se requiere rapidez en la respuesta.

```
int n, l;
vector<vector<int>> adj;

int timer;
vector<int> tin, tout;
vector<vector<int>> up;

void dfs(int v, int p) {
    tin[v] = ++timer;
    up[v][0] = p;

    for (int i = 1; i <= l; ++i) {
        up[v][i] = up[up[v][i-1]][i-1];
    }

    for (int u : adj[v]) {
        if (u != p) dfs(u, v);
    }

    tout[v] = ++timer;
}

bool is_ancestor(int u, int v) {
    return tin[u] <= tin[v] && tout[u] >= tout[v];
}

int lca(int u, int v) {
    if (is_ancestor(u, v))
        return u;
    if (is_ancestor(v, u))
        return v;
    for (int i = l; i >= 0; --i) {
        if (!is_ancestor(up[u][i], v))
            u = up[u][i];
    }
    return up[u][0];
}

void preprocess(int root) {
    tin.resize(n+1);
    tout.resize(n+1);
    timer = 0;
    l = ceil(log2(n+2));
    up.assign(n+1, vector<int>(l + 1));
    dfs(root, root);
}
```


## Catalan Numbers
$$
C_{n} =
\begin{pmatrix}
2n \\ n
\end{pmatrix} - \begin{pmatrix}
2n \\ n-1
\end{pmatrix}
$$
## Burnside's Lemma
$$
| \text{Classes} | = \frac{1}{| G |} \sum_{\pi \in G} I(\pi)
$$

- $I(\pi)$: the number of permutations of the fixed $\pi$ class
- $G$: the group of symmetries, e.g. rotation 90, 180, reflexion.

## Binary Search
```
int xl = -1, xr = n;
while (xr - xl > 1) {
    int xm = xl+(xr-xl)/ 2;
    if (a[xm] > k) { // f(xm)
        xr = xm; // a[l] <= k < a[m] <= a[r]
    } else {
        xl = xm; // a[l] <= a[m] <= k < a[r]
    }
}
```
- $x_{l}$ and $x_{r}$ are initially set to values outside the range, since they will never be evaluated
- Evaluating first the condition `a[xm] > k` we will get gt value in $x_{r}$ and the lte value in $x_{l}$. If we consider first the condition `a[xm] < k` we will get the lt value in $x_{l}$ and the gte value in $x_{r}$.
## Heavy Light Decomposition
#### Complejidad:
- **Preprocesamiento**: $O(n \log n)$ debido al DFS y la construcción del Segment Tree para almacenar las cadenas pesadas.
- **Consulta de camino** (`maxInPath`): $O(\log^2 n)$, ya que puede requerir recorrer múltiples cadenas y cada consulta en el Segment Tree es $O(\log n)$.

Este código es ideal para responder consultas de caminos en árboles, como máximos o mínimos en el camino entre dos nodos, en tiempo eficiente. Es útil en problemas con múltiples consultas de caminos entre nodos en árboles grandes, optimizando búsquedas por dividir el árbol en cadenas pesadas.
```
int vl[N+1], parent[N+1], heavy[N+1], head[N+1], depth[N+1], pos[N+1], segtree[2*N+1];
int cur_pos, n, q;

int dfs(int v) {
    int max_sz = 0, sz = 1;
    for(int u: g[v]) {
        if(u != parent[v]) {
            parent[u] = v;
            depth[u] = depth[v]+1;
            int cur_sz = dfs(u);
            sz += cur_sz;
            if(cur_sz > max_sz) {
                heavy[v] = u;
                max_sz = cur_sz;
            }
        }
    }
    return sz;
}

void decompose(int v, int h) {
    head[v] = h;
    pos[v] = ++cur_pos;
    st.update(pos[v], vl[v]);
    if(heavy[v] != -1) {
        decompose(heavy[v], h);
    }
    for(int u: g[v]) {
        if(u != parent[v] && u != heavy[v]) {
            decompose(u, u);
        }
    }
}

void init() {
    memset(heavy, -1, sizeof heavy);
    parent[1] = 1;
    dfs(1);
    decompose(1,1);
}


int maxInPath(int a, int b) {
    int ans = 0;
    for(; head[a] != head[b]; b = parent[head[b]]) {
        if(depth[ head[a] ] > depth[ head[b] ]) swap(a, b);
        // max node in heavy path head[b] -> b
        ans = max(ans, st.query(pos[head[b]], pos[b]) );
    }
    if(depth[a] > depth[b]) swap(a,b);
    // max node in path a -> b
    return max( ans, st.query(pos[a], pos[b]) );
}
```
## Centroid Decomposition
#### Complejidad:
- **Preprocesamiento**: $O(n \log n)$, donde $n$ es el número de nodos, debido a que cada nodo se procesa en un árbol de centroides con múltiples llamadas de DFS.
- **Consulta de caminos**: Depende de la implementación específica de la consulta, pero suele ser eficiente debido a la estructura de centroides.

Este código es útil para resolver consultas de caminos o subárboles en árboles grandes, optimizando cálculos de distancia y agregación. Es ideal para problemas con múltiples consultas relacionadas con distancias o valores en caminos entre nodos, donde un preprocesamiento centrado en los centroides reduce la complejidad de cada consulta.
```
vector<int> g[N+1], ctree[N+1];
vector<pll> cdist[N+1];
bool taken[N+1];
int par[N+1], szt[N+1];

void calc_list_centroid(int s, int v, int p, int d) {
    cdist[v].push_back({d, s});
    for(int u: g[v]) {
        if(u != p && !taken[u]) {
            // modify with cost function
            calc_list_centroid(s, u, v, d+1);
        }
    }
}

int calc_sz(int v, int p) {
    szt[v] = 1;
    for(int u: g[v]) {
        if(u != p && !taken[u]) {
            szt[v] += calc_sz(u, v);
        }
    }
    return szt[v];
}

void dfs(int v, int p, int sz) {
    if(sz == -1) sz = calc_sz(v, -1);
    for(int u: g[v]) {
        if(!taken[u] && 2*szt[u] >= sz) {
            szt[v] = 0;
            dfs(u, p, sz);
            return;
        }
    }
    if(p != -1) ctree[p].push_back(v);
    calc_list_centroid(v, v, -1, 0);
    taken[v] = 1; par[v] = p;
    for(int u: g[v]) {
        if(!taken[u]) dfs(u, v, -1);
    }
}
```
## Eulerian Tour
#### Complejidad:
- **Preprocesamiento y recorrido DFS**: $O(m)$, donde $m$ es el número de aristas, debido a que cada arista se procesa una vez.
- **Verificación de condiciones**: $O(n)$, ya que verifica el grado de cada nodo una vez.

Este código encuentra un circuito o camino euleriano en un grafo, si existe. Es útil en problemas donde se requiere recorrer cada arista exactamente una vez, como en algunos problemas de rutas o recorridos completos de grafos no dirigidos con ciertas restricciones de grado.
```
vector<pair<int,int>> g[N+1];
bool vis[M+1]; int deg[N+1];
vector<int> path;

void dfs(int v) {
    while(g[v].size()) {
        auto [u, idx] = g[v].back();
        g[v].pop_back();
        if(vis[idx]) continue;
        vis[idx] = 1;
        dfs(u);
    }
    path.push_back(v);
}

int main() {
    int n, m; cin >> n >> m;
    for(int i=0; i<m; i++) {
        int a, b; cin >> a >> b;
        g[a].push_back({b, i});
        g[b].push_back({a, i});
        deg[a]++; deg[b]++;
    }

    for(int i=1; i<=n; i++) {
        if(deg[i] & 1) {
            cout << "IMPOSSIBLE\n";
            return 0;
        }
    }

    dfs(1);

    if(path.size() != m+1) {
        cout << "IMPOSSIBLE\n";
    } else {
        for(int i: path) {
            cout << i << " ";
        }
    }

    return 0;
}
```
## Maximum Flow
#### Complejidad:
- **Tiempo de ejecución**: $O(m \cdot \text{max\_flow})$, donde $m$ es el número de aristas y `max_flow` es el flujo máximo del grafo. Este enfoque se basa en la búsqueda de caminos aumentantes y generalmente funciona bien para grafos con un flujo máximo moderado.

Este código calcula el flujo máximo entre dos nodos en un grafo con capacidades en las aristas, ideal para problemas que involucran optimización de flujo, como en redes de transporte, distribución de recursos o emparejamiento máximo en grafos bipartitos.
```
vector<int> g[N+1];
ll capacity[N+1][N+1], original[N+1][N+1];
int par[N+1];

bool reachable(int src, int sink) {
    memset(par, -1, sizeof par);
    queue<int> q;
    q.push(src);
    par[src] = src;
    while(q.size()) {
        int v = q.front(); q.pop();
        for(int u: g[v]) {
            if( capacity[v][u] && par[u] == -1 ) {
                q.push(u);
                par[u] = v;
            }
        }
    }
    return par[sink] != -1;
}

ll max_flow(int src, int sink) {
    ll flow = 0;
    while(reachable(src, sink)) {
        int v = sink;
        ll curr_flow = LLONG_MAX;
        while(v != src) {
            curr_flow = min(curr_flow, capacity[par[v]][v] );
            v = par[v];
        }
        v = sink;
        while(v != src) {
            capacity[par[v]][v] -= curr_flow;
            capacity[v][par[v]] += curr_flow;
            v = par[v];
        }
        flow += curr_flow;
    }
    return flow;
}
```
## Minimum cutting
#### Complejidad:
- **Tiempo de ejecución**: $O(m \cdot \text{max\_flow})$, similar al cálculo de flujo máximo, ya que primero se calcula el flujo máximo y luego se revisan las conexiones alcanzables en el grafo. La complejidad depende de $m$ (número de aristas) y del flujo máximo.

Este código encuentra el **corte mínimo** en un grafo, que corresponde a las aristas que separan las dos partes del grafo, una alcanzable y la otra no, después de realizar un cálculo de flujo máximo. Es útil en problemas de particionamiento de redes u optimización de cortes en grafos, como el diseño de redes de distribución o planificación de rutas.
```
for(int i=0; i<m; i++){
	int a, b; cin >> a >> b;
	g[a].push_back(b);
	g[b].push_back(a);
	capacity[a][b]++; capacity[b][a]++;
	original[a][b]++; original[b][a]++;
}
max_flow(1, n);
reachable(1,n);
vector<pair<int,int>> ans;
for(int i=1; i<=n; i++) {
	for(int j=1; j<=n; j++) {
		if(par[i] != -1 && par[j] == -1 && original[i][j]) {
			ans.push_back({i,j});
		}
	}
}
```
## Bipartite Matching
#### Complejidad:
- **Tiempo de ejecución**: $O(\sqrt{n} \cdot m)$, donde $n$ es el número de nodos y $m$ el número de aristas. Esto se debe a la implementación del algoritmo de **Hopcroft-Karp**, que utiliza un enfoque de búsqueda en amplitud (BFS) y búsqueda en profundidad (DFS) para encontrar caminos de aumento y optimizar el emparejamiento en grafos bipartitos.

Este código resuelve el problema de **emparejamiento máximo en grafos bipartitos**, utilizando el algoritmo de **Hopcroft-Karp**. Es útil en problemas donde se debe emparejar dos conjuntos de nodos, como asignación de tareas, emparejamiento de trabajos, o en problemas de flujo máximo en grafos bipartitos.
```
int n, m, k;
// dist[node] = the position of node in the alternating path
vector<int> match, dist;
vector<vector<int>> g;

bool bfs() {
	queue<int> q;
	// The alternating path starts with unmatched nodes
	for (int node = 1; node <= n; node++) {
		if (!match[node]) {
			q.push(node);
			dist[node] = 0;
		} else {
			dist[node] = INF;
		}
	}

	dist[0] = INF;

	while (!q.empty()) {
		int node = q.front();
		q.pop();
		if (dist[node] >= dist[0]) { continue; }
		for (int son : g[node]) {
			// If the match of son is matched
			if (dist[match[son]] == INF) {
				dist[match[son]] = dist[node] + 1;
				q.push(match[son]);
			}
		}
	}
	// Returns true if an alternating path has been found
	return dist[0] != INF;
}

// Returns true if an augmenting path has been found starting from vertex node
bool dfs(int node) {
	if (node == 0) { return true; }
	for (int son : g[node]) {
		if (dist[match[son]] == dist[node] + 1 && dfs(match[son])) {
			match[node] = son;
			match[son] = node;
			return true;
		}
	}
	dist[node] = INF;
	return false;
}

int hopcroft_karp() {
	int cnt = 0;
	// While there is an alternating path
	while (bfs()) {
		for (int node = 1; node <= n; node++) {
			// If node is unmatched but we can match it using an augmenting path
			if (!match[node] && dfs(node)) { cnt++; }
		}
	}
	return cnt;
}
```
## Trie
#### Complejidad:
- **Inserción**: $O(L)$, donde $L$ es la longitud de la palabra a insertar.
- **Búsqueda**: $O(L)$, donde $L$ es la longitud de la palabra a buscar.

El **Trie** es una estructura de datos eficiente para almacenar y buscar cadenas, ideal para problemas de autocompletado, búsqueda de prefijos, y en general, cuando se requieren operaciones rápidas de inserción y búsqueda de palabras en un conjunto. Es útil cuando se necesita trabajar con un gran número de cadenas y se quiere optimizar las consultas por prefijos o palabras completas.
```
struct tNode {
    struct tNode *ch[26];
    bool isEnd;
 
    tNode() {
        isEnd = false;
        for(int i=0; i<26; i++) {
            ch[i] = nullptr;
        }
    }
 
    void trieInsert(string w) {
        tNode *curr = this;
        for(int i=0; i<w.length(); i++) {
            int vl = w[i] - 'a';
            if( !curr->ch[vl] ) {
                curr->ch[vl] = new tNode();
            }
            curr = curr->ch[vl];
        }
        curr->isEnd = true;
    }
 
    bool trieSearch(string w) {
        tNode *curr = this;
        for(int i=0; i<w.length(); i++) {
            int vl = w[i] - 'a';
            if( !curr->ch[vl] ) return false;
            curr = curr->ch[vl];
        }
        return curr->isEnd;
    }
};
```
## Manacher Algorithm
#### Complejidad:
- **Tiempo de ejecución**: $O(n)$, donde $n$ es la longitud de la cadena, ya que cada índice se procesa de manera lineal gracias al uso de las propiedades del algoritmo.

El **Algoritmo de Manacher** encuentra el palíndromo más largo en una cadena en tiempo lineal. Es útil en problemas donde se requiere encontrar substrings palindrómicos rápidamente, como en la detección de palíndromos o la optimización de búsquedas de patrones en cadenas.
```
vector<int> manacher(string &s) {
    int n = s.size()-2;
    vector<int> p(n+2);
    int l = 1, r = 1;
    for(int i=1; i<=n; i++) {
        p[i] = max(0, min(r-i, p[l+r-i]));
        while(i+p[i] <= n+1 && s[i-p[i]] == s[i+p[i]]) {
            p[i]++;
        }
        if(i + p[i] > r) {
            l = i-p[i];
            r = i+p[i];
        }
    }
    return p;
}

int main() {
	string s = "#";
	for(char c: t) s += c + string("#");
	vector<int> p = manacher(s);
}
```
## Iterative Segment Tree
#### Complejidad:
- **Construcción**: $O(n)$, donde $n$ es el número de elementos en el array. Se construye en tiempo lineal.
- **Actualización**: $O(\log n)$, debido a la propagación hacia arriba de los cambios en el árbol.
- **Consulta**: $O(\log n)$, ya que se recorren las ramas relevantes del árbol para obtener el resultado.

El **Segment Tree iterativo** es útil para resolver problemas de rangos, como la suma, el máximo o el mínimo en intervalos de un array. Ideal para problemas donde se requieren múltiples consultas y actualizaciones de rangos, como en el análisis de intervalos, problemas de rango dinámico, o en juegos de segmentación de datos.
```
ll segtree[2*N+1];

struct SegmentTree {
	void build() {  // build the tree
	  for (int i = n; i >= 1; --i) st[i] = st[i<<1] + st[i<<1|1];
	}
    void update(int p, int nw) {
        for( segtree[p+=n] = nw; p>1; p>>=1 ) {
            segtree[p>>1] = max(segtree[p],segtree[p^1]);
        }
    }
    int query(int l, int r) {
        int res = 0; r++;
        for(l+=n, r+=n; l<r; l>>=1, r>>=1) {
            if(l&1) res = res + segtree[l++];
            if(r&1) res = res + segtree[--r];
        }
        return res;
    }
};
 
SegmentTree st;
```

## Counting Ways CSES
*You are given a string of length $n$ and a dictionary containing $k$ words. In how many ways can you create the string using the words?*
We can maintain a $dp[]$ array such that $dp[i]$ stores the number of ways to form the substring $S[i...N-1]$. We can travverse the string $S$ from right to left and for every index $i$, ****$dp[i]$ is the sum of all $dp[j + 1]$ such that $S[i...j]$ is present in the dictionary.**** In order to check whether $dp[i...j]$ is present in the dictionary or not, we can insert all the words in a trie and mark the ending of each word with a flag. So, for every index $i$, we iterate $j$ from $i$ to $N-1$ and if $S[i...j]$ is present in the dictionary, we add $dp[j]$ to $dp[i]$. After all the iterations, $dp[0]$ will store the answer.
```
const int mod = 1e9 + 7;

vector<int> dp(5005);
vector<vector<int>> trie(1e6 + 5, vector<int>(26));
vector<bool> isEndOfWord(1e6 + 5);
int trieNodeCount = 0;

void insertWordInTrie(string &word) {
  int currentNode = 0;
  for (char &ch : word) {
    if (!trie[currentNode][ch - 'a'])
      trie[currentNode][ch - 'a'] = ++trieNodeCount;
    currentNode = trie[currentNode][ch - 'a'];
  }
  isEndOfWord[currentNode] = true;
}

int countWays(int start, string &S) {
  int currentNode = 0, ways = 0;
  for (int i = start; i < S.size(); i++) {
    if (!trie[currentNode][S[i] - 'a'])
      return ways;
    currentNode = trie[currentNode][S[i] - 'a'];

    if (isEndOfWord[currentNode])
      ways = (ways + dp[i + 1]) % mod;
  }
  return ways;
}

void solve(string &S, int K, string word[]) {
  for (int i = 0; i < K; i++) {
    insertWordInTrie(word[i]);
  }

  dp[S.size()] = 1;
  for (int i = S.size() - 1; i >= 0; i--) {
    dp[i] = countWays(i, S);
  }
  cout << dp[0] << "\n";
}
```

## Count the number of inversions in an array
usando **Merge Sort**, modificamos el algoritmo para contar cuántos elementos en el subarreglo derecho son menores que un elemento en el subarreglo izquierdo. Cada vez que encontramos un elemento en el subarreglo derecho que es menor, significa que hay una inversión para cada elemento restante en el subarreglo izquierdo.
```
#include <iostream>
#include <vector>
using namespace std;

// Función para hacer el merge y contar inversiones
int mergeAndCount(vector<int>& arr, int left, int mid, int right) {
    int n1 = mid - left + 1;
    int n2 = right - mid;

    vector<int> leftArr(n1), rightArr(n2);

    for (int i = 0; i < n1; i++) leftArr[i] = arr[left + i];
    for (int i = 0; i < n2; i++) rightArr[i] = arr[mid + 1 + i];

    int i = 0, j = 0, k = left;
    int inv_count = 0;

    while (i < n1 && j < n2) {
        if (leftArr[i] <= rightArr[j]) {
            arr[k++] = leftArr[i++];
        } else {
            arr[k++] = rightArr[j++];
            inv_count += (n1 - i); // Cuenta de inversiones
        }
    }

    while (i < n1) arr[k++] = leftArr[i++];
    while (j < n2) arr[k++] = rightArr[j++];

    return inv_count;
}

// Función recursiva de Merge Sort que cuenta inversiones
int mergeSortAndCount(vector<int>& arr, int left, int right) {
    int inv_count = 0;
    if (left < right) {
        int mid = left + (right - left) / 2;

        inv_count += mergeSortAndCount(arr, left, mid);
        inv_count += mergeSortAndCount(arr, mid + 1, right);

        inv_count += mergeAndCount(arr, left, mid, right);
    }
    return inv_count;
}

int main() {
    vector<int> arr = {1, 20, 6, 4, 5};
    int inversionCount = mergeSortAndCount(arr, 0, arr.size() - 1);

    cout << "Number of inversions: " << inversionCount << endl;
    return 0;
}
```

## Topological sort
***Time Complexity:*** O(V+E). The above algorithm is simply DFS with an extra stack. So time complexity is the same as DFS  
**Auxiliary space:*** O(V). The extra space is needed for the stack
 *Advantages of Topological Sort:*
- Helps in scheduling tasks or events based on dependencies.
- Detects cycles in a directed graph.
- Efficient for solving problems with precedence constraints.
*Disadvantages of Topological Sort:*
- Only applicable to directed acyclic graphs (DAGs), not suitable for cyclic graphs.
- May not be unique, multiple valid topological orderings can exist.
```
#include <bits/stdc++.h>
using namespace std;

// Function to perform DFS and topological sorting
void topologicalSortUtil(int v, vector<vector<int> >& adj,
                         vector<bool>& visited,
                         stack<int>& Stack) {
    // Mark the current node as visited
    visited[v] = true;

    // Recur for all adjacent vertices
    for (int i : adj[v]) {
        if (!visited[i])
            topologicalSortUtil(i, adj, visited, Stack);
    }

    // Push current vertex to stack which stores the result
    Stack.push(v);
}

// Function to perform Topological Sort
void topologicalSort(vector<vector<int> >& adj, int V) {
    stack<int> Stack; // Stack to store the result
    vector<bool> visited(V, false);

    // Call the recursive helper function to store
    // Topological Sort starting from all vertices one by
    // one
    for (int i = 0; i < V; i++) {
        if (!visited[i])
            topologicalSortUtil(i, adj, visited, Stack);
    }

    // Print contents of stack
    while (!Stack.empty()) {
        cout << Stack.top() << " ";
        Stack.pop();
    }
}

int main() {
    // Number of nodes
    int V = 4;

    // Edges
    vector<vector<int> > edges
        = { { 0, 1 }, { 1, 2 }, { 3, 1 }, { 3, 2 } };

    // Graph represented as an adjacency list
    vector<vector<int> > adj(V);

    for (auto i : edges) {
        adj[i[0]].push_back(i[1]);
    }

    cout << "Topological sorting of the graph: ";
    topologicalSort(adj, V);

    return 0;
}
```

## Convex Hull
*Time Complexity:*  $O(m * n)$, where n is number of input points and m is number of output or hull points $(m \leq n)$.  For every point on the hull we examine all the other points to determine the next point.
*Worst case, Time complexity:* $O(n^2)$.  The worst case occurs when all the points are on the hull $(m = n)$.
```
#include <bits/stdc++.h>
using namespace std;

struct Point {
	int x, y;
};

// To find orientation of ordered triplet (p, q, r).
// The function returns following values
// 0 --> p, q and r are collinear
// 1 --> Clockwise
// 2 --> Counterclockwise
int orientation(Point p, Point q, Point r) {
	int val = (q.y - p.y) * (r.x - q.x) -
			(q.x - p.x) * (r.y - q.y);

	if (val == 0) return 0; // collinear
	return (val > 0)? 1: 2; // clock or counterclock wise
}

// Prints convex hull of a set of n points.
void convexHull(Point points[], int n) {
	// There must be at least 3 points
	if (n < 3) return;

	// Initialize Result
	vector<Point> hull;

	// Find the leftmost point
	int l = 0;
	for (int i = 1; i < n; i++)
		if (points[i].x < points[l].x)
			l = i;

	// Start from leftmost point, keep moving counterclockwise
	// until reach the start point again. This loop runs O(h)
	// times where h is number of points in result or output.
	int p = l, q;
	do {
		// Add current point to result
		hull.push_back(points[p]);

		// Search for a point 'q' such that orientation(p, q,
		// x) is counterclockwise for all points 'x'. The idea
		// is to keep track of last visited most counterclock-
		// wise point in q. If any point 'i' is more counterclock-
		// wise than q, then update q.
		q = (p+1)%n;
		for (int i = 0; i < n; i++) {
		// If i is more counterclockwise than current q, then
		// update q
		if (orientation(points[p], points[i], points[q]) == 2)
			q = i;
		}

		// Now q is the most counterclockwise with respect to p
		// Set p as q for next iteration, so that q is added to
		// result 'hull'
		p = q;

	} while (p != l); // While we don't come to first point

	// Print Result
	for (int i = 0; i < hull.size(); i++)
		cout << "(" << hull[i].x << ", "
			<< hull[i].y << ")\n";
}

// Driver program to test above functions
int main() {
	Point points[] = {{0, 3}, {2, 2}, {1, 1}, {2, 1},
					{3, 0}, {0, 0}, {3, 3}};
	int n = sizeof(points)/sizeof(points[0]);
	convexHull(points, n);
	return 0;
}
```
## Chinese Reminder Theorem
Basically, we are given k numbers which are pairwise coprime, and given remainders of these numbers when an unknown number x is divided by them. We need to find the minimum possible value of x that produces given remainders.
```
// A C++ program to demonstrate working of Chinese remainder
// Theorem
#include<bits/stdc++.h>
using namespace std;

// k is size of num[] and rem[].  Returns the smallest
// number x such that:
//  x % num[0] = rem[0], 
//  x % num[1] = rem[1], 
//  ..................
//  x % num[k-2] = rem[k-1]
// Assumption: Numbers in num[] are pairwise coprime 
// (gcd for every pair is 1)
int findMinX(int num[], int rem[], int k) {
    int x = 1; // Initialize result

    // As per the Chinese remainder theorem,
    // this loop will always break.
    while (true) {
        // Check if remainder of x % num[j] is 
        // rem[j] or not (for all j from 0 to k-1)
        int j;
        for (j=0; j<k; j++ )
            if (x%num[j] != rem[j])
               break;

        // If all remainders matched, we found x
        if (j == k)
            return x;

        // Else try next number
        x++;
    }

    return x;
}

// Driver method
int main(void) {
    int num[] = {3, 4, 5};
    int rem[] = {2, 3, 1};
    int k = sizeof(num)/sizeof(num[0]);
    cout << "x is " << findMinX(num, rem, k);
    return 0;
}
```
## Compute nCr%p with Lucas Theorem
```
// A Lucas Theorem based solution to compute nCr % p 
#include<bits/stdc++.h> 
using namespace std; 

// Returns nCr % p. In this Lucas Theorem based program, 
// this function is only called for n < p and r < p. 
int nCrModpDP(int n, int r, int p) { 
	// The array C is going to store last row of 
	// pascal triangle at the end. And last entry 
	// of last row is nCr 
	int C[r+1]; 
	memset(C, 0, sizeof(C)); 

	C[0] = 1; // Top row of Pascal Triangle 

	// One by constructs remaining rows of Pascal 
	// Triangle from top to bottom 
	for (int i = 1; i <= n; i++) { 
		// Fill entries of current row using previous 
		// row values 
		for (int j = min(i, r); j > 0; j--) 

			// nCj = (n-1)Cj + (n-1)C(j-1); 
			C[j] = (C[j] + C[j-1])%p; 
	} 
	return C[r]; 
} 

// Lucas Theorem based function that returns nCr % p 
// This function works like decimal to binary conversion 
// recursive function. First we compute last digits of 
// n and r in base p, then recur for remaining digits 
int nCrModpLucas(int n, int r, int p) { 
// Base case 
if (r==0) 
	return 1; 

// Compute last digits of n and r in base p 
int ni = n%p, ri = r%p; 

// Compute result for last digits computed above, and 
// for remaining digits. Multiply the two results and 
// compute the result of multiplication in modulo p. 
return (nCrModpLucas(n/p, r/p, p) * // Last digits of n and r 
		nCrModpDP(ni, ri, p)) % p; // Remaining digits 
} 

// Driver program 
int main() { 
	int n = 1000, r = 900, p = 13; 
	cout << "Value of nCr % p is " << nCrModpLucas(n, r, p); 
	return 0; 
} 
```