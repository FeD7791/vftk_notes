<TeXmacs|2.1.4>

<style|generic>

<\body>
  <section|Distorsiones>

  <subsection|Distorsiones en el espacio de Redshift>

  El redshift observado de una galaxia puede modelarse como:

  <\equation*>
    1+z<rsub|0>=<around*|(|1+z|)><around*|(|1+z<rsub|p>|)>\<Leftrightarrow\>1+z<rsub|0>=<around*|(|1+z|)>+z<rsub|p><around*|(|1+z|)>\<Rightarrow\><block*|<tformat|<table|<row|<cell|z<rsub|0>=z+z<rsub|p><around*|(|1+z|)>>>>>>
  </equation*>

  Donde:

  <\itemize-minus>
    <item><math|z<rsub|0>> : redshift observado

    <item><math|z> : redshift cosmologico

    <item><math|z<rsub|p>> : redshift peculiar,
    <math|z<rsub|p>=<frac|v<rsub|<around*|\|||\|>>|c>> donde
    <math|v<rsub|<around*|\|||\|>>> velocidad peculiar radial.
  </itemize-minus>

  <subsection|Distorsiones en el espacio real>

  <\equation*>
    \<chi\><around*|(|z<rsub|0>|)>=\<chi\><around*|(|z|)>+<frac|1+z|H<around*|(|z|)>>
    v<rsub|<around*|\|||\|>>
  </equation*>

  <\itemize-minus>
    <item><math|\<chi\>> : Distancia co-movil , la distancia co-movil depende
    <math|z>.

    <item>

    <\equation*>
      \<chi\>=<frac|c|H<rsub|0> R<rsub|0>><big|int><rsub|0><rsup|z><frac|d
      z|<sqrt|\<Omega\><rsub|m 0><around*|(|1+z|)><rsup|3>+\<Omega\><rsub|rad><around*|(|1+z|)><rsup|4>+\<Omega\><rsub|\<Lambda\>0>+\<Omega\><rsub|k
      0><around*|(|1+z|)><rsup|2>>>
    </equation*>
  </itemize-minus>

  <subsection|Vector separacion entre galaxias>

  La separacion dada entre dos objetos (galaxias) se puede modelar como una
  componente radial mas otra perpendicular:

  <\equation*>
    <with|font-series|bold|r>=r<rsub|\<bot\>>+r<rsub|<around*|\|||\|>>
  </equation*>

  En el espacio de redshift esta separacion esta dada por:

  <\equation*>
    <with|font-series|bold|s>=s<rsub|\<bot\>>+s<rsub|<around*|\|||\|>>=\<sigma\>+\<pi\>
  </equation*>

  En terminos de las distorsiones en el espacio real:

  <\equation*>
    \<sigma\>=r<rsub|\<bot\>>
  </equation*>

  <\equation*>
    \<pi\>=r<rsub|<around*|\|||\|>>+<frac|1+z|H<around*|(|z|)>>
    v<rsub|<around*|\|||\|>>=r<rsub|<around*|\|||\|>>+<frac|v<rsub|<around*|\|||\|>>|a<around*|(|z|)>
    H<around*|(|z|)>>
  </equation*>

  Donde: <math|a=<frac|1|1+z>>

  Donde <math|r<rsub|<around*|\|||\|>>=\<chi\>> es la coordenada comovil. Si
  estamos mirando a redshift 0: <math|\<pi\>=r<rsub|<around*|\|||\|>>+<frac|1|H<rsub|0>>
  v<rsub|<around*|\|||\|>>>.

  <\itemize-minus>
    <item>Para inferir el valor de <math|H<around*|(|z|)>> se debe restringir
    la cosmologia:

    <\equation*>
      H<rsup|2><around*|(|z|)>=H<rsub|0><rsup|2><around*|[|\<Omega\><rsub|m
      0><around*|(|1+z|)><rsup|3>+\<Omega\><rsub|rad><around*|(|1+z|)><rsup|4>+\<Omega\><rsub|\<Lambda\>0>+\<Omega\><rsub|k
      0><around*|(|1+z|)><rsup|2>|]>
    </equation*>
  </itemize-minus>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|1>>
    <associate|auto-5|<tuple|1.4|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Distorsiones>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Distorsiones en el espacio
      de Redshift <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Distorsiones en el espacio
      real <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Vector separacion entre
      galaxias <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>
    </associate>
  </collection>
</auxiliary>