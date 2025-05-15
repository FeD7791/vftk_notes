<TeXmacs|2.1.4>

<style|generic>

<\body>
  Suponga que tiene <math|n> centros. Para cada par de ellos calculo la
  distancia <math|d<rsub|i j>>. Entonces si <math|r<rsub|i
  >+r<rsub|j>\<gtr\>d<rsub|i j>> es que hay overlapping.

  Lo que nosotros tenemos como input es, una lista de radios mas otra lista
  de centros:

  <math|<with|font-series|bold|r>=<around*|[|r<rsub|1>,\<ldots\>,r<rsub|n>|]>>
  , <math|<with|font-series|bold|c>=<around*|[|c<rsub|1>,\<ldots\>,c<rsub|n>|]>>

  Quiero construir la matriz siguiente:

  <math|<around*|[|<tabular|<tformat|<table|<row|<cell|r<rsub|1>+r<rsub|1>>|<cell|r<rsub|1>+r<rsub|2>>|<cell|\<ldots\>>|<cell|r<rsub|1>+r<rsub|n>>>|<row|<cell|\<ldots\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|r<rsub|n>+r<rsub|1>>|<cell|r<rsub|n>+r<rsub|2>>|<cell|\<ldots\>>|<cell|r<rsub|n>+r<rsub|n>>>>>>|]>=<around*|[|<tabular|<tformat|<table|<row|<cell|r<rsub|1>>|<cell|r<rsub|1>>|<cell|\<ldots\>>|<cell|r<rsub|1>>>|<row|<cell|\<ldots\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|r<rsub|n>>|<cell|r<rsub|n>>|<cell|\<ldots\>>|<cell|r<rsub|n>>>>>>|]>+<around*|[|<tabular|<tformat|<table|<row|<cell|r<rsub|1>>|<cell|r<rsub|2>>|<cell|\<ldots\>>|<cell|r<rsub|n>>>|<row|<cell|\<ldots\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|r<rsub|1>>|<cell|r<rsub|2>>|<cell|\<ldots\>>|<cell|r<rsub|n>>>>>>|]>>

  Y quiero compararla con la matriz siguiente:

  <math|<around*|[|<tabular|<tformat|<table|<row|<cell|d<rsub|1
  1>>|<cell|d<rsub|12>>|<cell|\<ldots\>>|<cell|d<rsub|1
  n>>>|<row|<cell|\<ldots\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|d<rsub|n
  1>>|<cell|d<rsub|n 2>>|<cell|\<ldots\>>|<cell|d<rsub|n n>>>>>>|]>> donde
  por definicion: <math|d<rsub| i i>=0>

  \;

  Hago un paso previo y cambio los <math|r<rsub|i>+r<rsub|i>> por 0

  <math|<around*|[|<tabular|<tformat|<table|<row|<cell|0>|<cell|r<rsub|1>+r<rsub|2>>|<cell|\<ldots\>>|<cell|r<rsub|1>+r<rsub|n>>>|<row|<cell|\<ldots\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|r<rsub|n>+r<rsub|1>>|<cell|r<rsub|n>+r<rsub|2>>|<cell|\<ldots\>>|<cell|0>>>>>|]>>

  Entonces si hacemos:

  <math|><math|<around*|[|<tabular|<tformat|<table|<row|<cell|0>|<cell|r<rsub|1>+r<rsub|2>>|<cell|\<ldots\>>|<cell|r<rsub|1>+r<rsub|n>>>|<row|<cell|\<ldots\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|r<rsub|n>+r<rsub|1>>|<cell|r<rsub|n>+r<rsub|2>>|<cell|\<ldots\>>|<cell|0>>>>>|]>-<around*|[|<tabular|<tformat|<table|<row|<cell|0>|<cell|d<rsub|12>>|<cell|\<ldots\>>|<cell|d<rsub|1
  n>>>|<row|<cell|\<ldots\>>|<cell|>|<cell|>|<cell|>>|<row|<cell|d<rsub|n
  1>>|<cell|d<rsub|n 2>>|<cell|\<ldots\>>|<cell|0>>>>>|]>>

  \;

  Para esta matriz, buscamos todos los valores mayores a cero, estos son los
  que nos dan overlap.

  Usando np.where pregunto cuales valores de la matriz son positivos:

  indx0,indx1 = np.where(<text-dots>)

  Esto lo que nos dice es que cada par (indx0[i], indx1[j]) corresponde a un
  indice positivo
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>