<TeXmacs|2.1.4>

<style|generic>

<\body>
  <section|Algoritmo>

  Se plantea la siguiente manera para la busqueda del radio efectivo:

  <math|f<around*|(|centers,box,N N,\<delta\>|)>>

  El valor de la densidad media del universo se computa utilizando el objeto
  box, que contiene las propiedades de los trazadores:

  <\equation*>
    <wide|\<rho\>|\<bar\>>=<frac|N<rsub|box>|V<rsub|box>>
  </equation*>

  Donde: <math|N<rsub|box>> es el numero de trazadores en toda la caja y
  <math|V<rsub|box>> es el volumen de toda la caja computado como el cubo de
  la variacion maxima de las coordenadas en una determinada direccion:
  <math|V<rsub|box>=x<rsub|max><rsup|3>> , donde se verifica que:
  <math|x<rsub|max>=y<rsub|max>=z<rsub|max>>.

  El valor de contraste <math|\<delta\>> fija un valor de densidad critica
  que diferencia las zonas subdensas de las densas:

  <\equation*>
    \<rho\><rsub|crit>=<around*|(|1+\<delta\>|)><wide|\<rho\>|\<bar\>>
  </equation*>

  Aca <math|-1\<less\>\<delta\>\<leqslant\>0> , Tipicamente
  <math|\<delta\>=-0.7,-0.8,-0.9>

  El algoritmo elabora, para cada centro, un mapa de densidad para los
  primeros <math|N> vecinos. Es decir calcula:

  <\equation*>
    \<rho\><rsub|c,i>=<frac|N<rsub|c,i>|V<rsub|c,i>>\<Rightarrow\>\<rho\><rsub|c,i>=<frac|N<rsub|c,i>|<frac|4|3>\<pi\>R<rsub|c,i><rsup|3>>
  </equation*>

  Donde <math|R<rsub|c,i>> es la distancia (Euclidea) que hay entre el centro
  de coordenadas <math|<around*|(|x<rsub|c>,y<rsub|c>,z<rsub|c>|)>> y el
  <math|i-esimo> trazador de coordenadas <math|<around*|(|x<rsub|i>,y<rsub|i>,z<rsub|i>|)>>.

  Esto genera para cada centro <math|c> una susecion de valores:
  <math|<around*|[|\<rho\><rsub|c,1>,\<rho\><rsub|c,2>,\<ldots\>,\<rho\><rsub|c,N>|]>>.
  La hipotesis es que a partir de una sub-densidad , a medida que <math|N>
  aumenta, se deberia tener una sucesion creciente de estos valores, por lo
  cual <math|\<rho\><rsub|i><rsup|c>\<less\>\<rho\><rsub|crit>\<less\>\<rho\><rsub|i+1><rsup|c>>
  , para algun valor <math|i> en la sucesion. Entonces para esa situacion se
  plantea:

  <\equation*>
    R<rsub|eff>=<frac|R<rsub|c,i+1>+R<rsub|c,i>|2>\<Rightarrow\>R<rsub|c,i>\<less\>R<rsub|eff>\<less\>R<rsub|c,i+1>
  </equation*>

  Este radio efectivo garantiza <math|N<rsub|c,i>> trazadores dentro de la
  region con densidad:

  <\equation*>
    \<rho\><rsub|c>=<frac|N<rsub|c,i>|<frac|4|3>\<pi\>R<rsub|eff><rsup|3>>\<less\>\<rho\><rsub|c,i>\<less\>\<rho\><rsub|crit>
  </equation*>

  <\big-figure|<image|file:///home/jorgefederico/Downloads/rad1.jpg|0.7par|||>>
    \;
  </big-figure>

  \;

  <subsection|Casos>

  Hay que considerar un par de situaciones que suceden con la distribucion de
  densidad alrededor de un centro.

  <\enumerate-numeric>
    <item>Puede suceder, que al disminuir <math|\<delta\>>, es decir
    <math|\<delta\>\<less\>-0.8> que la sucesion nunca alcance
    <math|\<rho\><rsub|crit>>. Este escenario puede darse cuando n_neighbors
    es chico (Esto significa que para llegar a llenar la region y alcanzar
    <math|\<rho\><rsub|crit>> hay que agregar mas trazadores). El algoritmo
    dara un mensaje indicando que se debe incrementar n_neighbors para
    obtener el radio efectivo de este centro y cataloga a los vacios de este
    tipo como <math|R<rsub|eff>=-2>

    <item>Puede suceder que, para el grado de precision que maneja numpy,
    todos los valores de densidad esten justo en el valor de densidad critica
    o mayor. Esto tiene sentido para voids chicos detectados por algun
    algoritmo. El algoritmo clasifica estos centros como
    <math|R<rsub|eff>=-1>, es decir no los considera como verdaderos centros
    de un void.

    <item>El ultimo caso a considerar es valores de densidad tales que tienen
    elementos <math|\<rho\><rsub|c,i>\<less\>\<rho\><rsub|crit>> en un
    intervalo, luego elementos <math|\<rho\><rsub|crit>\<less\>\<rho\><rsub|c,i>>
    en otro intervalo, para luego finalmente tener
    <math|\<rho\><rsub|c,i>\<less\>\<rho\><rsub|crit>> en otro intervalo.
    Este tipo de voids se clasifican como voids <math|R<rsub|eff>=0>. Algunas
    conclusiones se pueden sacar de este tipo de voids:

    <\enumerate-roman>
      <item>Son voids que fundamentalmente tienene cercania con otra
      sub-densidad, es decir otro void.

      <item>Voids normales podrian transformarse en este tipo de voids si la
      busqueda se realiza con suficientes vecinos.
    </enumerate-roman>

    <item>Voids Normales. Estos son vacios que cumplen de manera estricta:
    <math|\<rho\><rsub|c,i>\<less\>\<rho\><rsub|crit>\<less\>\<rho\><rsub|c,i+1>>
    para n_neighbors. Estos se pueden clasificar a su vez segun el nivel de
    discrepancia con <math|<around*|\||R<rsub|i eff>-R<rsub|i>|\|>>. Aqui
    <math|R<rsub|i>> es el radio encontrado por el void finder mientras que
    <math|R<rsub|i,eff>> es el radio encontrado por este metodo.

    <\enumerate-roman>
      <item><math|<around*|\||R<rsub|i,eff>-R<rsub|i>|\|>\<less\>d> : Rango
      de concordancia entre los radios de los vacios encontrados

      <item><math|<around*|\||R<rsub|i,eff>-R<rsub|i>|\|>\<gtr\>d>, :
      Discrepancia entre los vacios encontrados.

      <\itemize-minus>
        <item>Este tipo de discrepancia se da porque el void finder no hace
        crecer mas el radio por un pico de densidad local que encuentra (Ver
        figura 2). Como este metodo considera en cambio los n_neighbors
        primeros vecinos, esto no es un limitante y el radio puede crecer.

        <item>Un pico de densidad local puede darse por un conjunto de
        trazadores a corta distancia entre si.
      </itemize-minus>
    </enumerate-roman>
  </enumerate-numeric>

  <\big-figure|<image|file:///home/jorgefederico/Downloads/rad4.jpg|0.7par|||>>
    Void Normal encontrado que tiene una discrepancia de
    <math|<around*|\||R<rsub|eff>-R<rsub|i>|\|>\<gtr\>23>. Para el metodo
    svf_popcorn <math|R<rsub|i>=7.5<around*|[|Mpc|]>> mientras que para el
    metodo utilizado: <math|R<rsub|eff>=30.1<around*|[|Mpc|]>>
  </big-figure>

  <\big-figure|<image|file:///home/jorgefederico/Downloads/rad2.jpg|0.7par|||>>
    Void de tipo -1
  </big-figure>

  <\big-figure|<image|file:///home/jorgefederico/Downloads/rad3.jpg|0.7par|||>>
    Void de tipo 0. Claramente, el centro del void posee nada mas que un
    trazador, este es un void chico encontrado por el finder svf_popcorn
    (Popcorn esferico). Si se considera mas vecinos puede verse que este void
    esta asociado a una sub densidad de otro void.
  </big-figure>

  <section|Analisis>

  <subsection|svf_popcorn (Popcorn Esferico)>

  <math|<tabular*|<tformat|<table|<row|<cell|Finder>|<cell|\<delta\>>|<cell|n
  n>|<cell|R<rsub|min>>|<cell|R<rsub|max>>|<cell|Centros Totales>|<cell|
  Normales>|<cell|T:-1>|<cell|T: 0>|<cell|<around*|\||R-R<rsub|eff>|\|>\<less\>1>>|<row|<cell|svf>|<cell|-0.8>|<cell|400>|<cell|5.60>|<cell|37.13>|<cell|75525>|<cell|75410>|<cell|112>|<cell|3>|<cell|99.4>>|<row|<cell|svf>|<cell|-0.9>|<cell|400>|<cell|7.06>|<cell|28.84>|<cell|59253>|<cell|59209>|<cell|44>|<cell|0>|<cell|99.8>>|<row|<cell|svf>|<cell|-0.7>|<cell|1000>|<cell|5.00>|<cell|41.12>|<cell|80147>|<cell|80072>|<cell|5>|<cell|70>|<cell|99.1>>>>>>

  <subsection|ZOBOV>

  <math|<tabular|<tformat|<table|<row|<cell|Finder>|<cell|Density
  threshold>|<cell|R<rsub|min>>|<cell|R<rsub|max>>|<cell|n n>|<cell|Centros
  Totales>|<cell| Normales>|<cell|T:-1>|<cell|T:
  0>>|<row|<cell|ZOBOV>|<cell|0.3\<rightarrow\>\<delta\>=-0.7>|<cell|6.18>|<cell|35.75>|<cell|400>|<cell|34228>|<cell|20330>|<cell|13848>|<cell|50>>|<row|<cell|ZOBOV>|<cell|0.1\<rightarrow\>\<delta\>=-0.9>|<cell|>|<cell|>|<cell|400>|<cell|34228>|<cell|12636>|<cell|21591>|<cell|1>>|<row|<cell|ZOBOV>|<cell|0.2\<rightarrow\>\<delta\>=-0.8>|<cell|>|<cell|>|<cell|400>|<cell|34228>|<cell|3082>|<cell|31146>|<cell|0>>>>>>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1|2>>
    <associate|auto-3|<tuple|1.1|2>>
    <associate|auto-4|<tuple|2|3>>
    <associate|auto-5|<tuple|3|4>>
    <associate|auto-6|<tuple|4|4>>
    <associate|auto-7|<tuple|2|5>>
    <associate|auto-8|<tuple|2.1|5>>
    <associate|auto-9|<tuple|2.2|5>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<\surround|<hidden-binding|<tuple>|1>|>
        \;
      </surround>|<pageref|auto-2>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|2>|>
        Void Normal encontrado que tiene una discrepancia de
        <with|mode|<quote|math>|<around*|\||R<rsub|eff>-R<rsub|i>|\|>\<gtr\>23>.
        Para el metodo svf_popcorn <with|mode|<quote|math>|R<rsub|i>=7.5<around*|[|Mpc|]>>
        mientras que para el metodo utilizado:
        <with|mode|<quote|math>|R<rsub|eff>=30.1<around*|[|Mpc|]>>
      </surround>|<pageref|auto-4>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3>|>
        Void de tipo -1
      </surround>|<pageref|auto-5>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|4>|>
        Void de tipo 0. Claramente, el centro del void posee nada mas que un
        trazador, este es un void chico encontrado por el finder svf_popcorn
        (Popcorn esferico). Si se considera mas vecinos puede verse que este
        void esta asociado a una sub densidad de otro void.
      </surround>|<pageref|auto-6>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Algoritmo>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Casos
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Analisis>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>svf_popcorn (Popcorn
      Esferico) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>ZOBOV
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>