<TeXmacs|2.1.4>

<style|generic>

<\body>
  <math|<with|font-series|bold|x>=<around*|(|x,y,z|)>>

  Posible combinations:

  <math|<around*|(|x<rsub|m>,y<rsub|m>,z<rsub|m>|)>> ,
  <math|<around*|(|x,y<rsub|m>,z<rsub|m>|)>> ,
  <math|<around*|(|x<rsub|m>,y,z<rsub|m>|)>> ,
  <math|<around*|(|x<rsub|m>,y<rsub|m>,z|)>> ,
  <math|<around*|(|x<rsub|m>,y,z|)>> , <math|<around*|(|x,y<rsub|m>,z|)>> ,
  <math|<around*|(|x,y,z<rsub|m>|)>> , <math|<around*|(|x,y,z|)>>

  This has to be used when:

  <math|\<exists\>x<rsub|i>=box<rsub|max>-\<delta\>>

  To find it for each coordinate: <math|<with|font-series|bold|x.T>> , idx =
  np.where(x.T[i]\<less\>max-delta) , if len(idx)\<gtr\>0 then you have to
  use it : i=0,1,2 <with|color|red|FIND A WAY TO MAP IT TO BINARY>

  To simplify use:

  (len(idx[0]),len(idx[1]),len(idx[2]))

  We should have 3 functions: <math|f<rsub|x><around*|(|<with|font-series|bold|x>|)>=<around*|(|<with|font-series|bold|x\<cdummy\>T><around*|[|0|]>-box<rsub|max>,0,0|)>>

  <math|<around*|(|1,1,0|)>\<Rightarrow\><around*|(|1,1,0|)>\<cdummy\><around*|(|f<rsub|x>,f<rsub|y>,f<rsub|z>|)>=f<rsub|x>+f<rsub|y>>
  for those tracers

  \;

  The other situation would be:

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>