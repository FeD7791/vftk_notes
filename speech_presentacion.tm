<TeXmacs|2.1.4>

<style|generic>

<\body>
  https://web.mit.edu/rsi/www/pdfs/beamer-tutorial.pdf

  Nuestro objetivo principal es el ajuste de parametros cosmologicos
  utilizando vacios cosmicos. Para ello vamos a utilizar un estadistico util
  que se puede obtener de estos: La funcion tamanio de vacios (Void Size
  Function - en ingles).

  En el caso de una simulacion se considera que la busqueda va a estar atada
  a la distribucion de trazadores utilizada y a los modelos de busqueda
  utilizados.

  La idea es no estar atado a un solo modelo de busqueda y poder asi
  diversificar un poco mas acerca de\ 

  Esta erramienta es una erramienta pensada para estudiar y restringir
  constantes cosmologicas utilizando el eltadistico de VSF sobre distintos
  metodos de deteccion de vacios cosmicos.

  Que es un void: cosmic voids are commonly regarded as vast underdense
  regions surrounded by walls of filaments from which matter initially
  escapes to later fall along the filaments and finally reach the galaxy
  clusters.

  making a precise definition of these regions in simulations and
  observations relies on somewhat arbitrary criteria.

  <section|Que es un void?>

  One of the main issues in exploiting cosmic voids as cosmological probes
  lies in the different void definitions adopted in observations and
  theoretical models. In particular, the size function models described in Ÿ2
  define the cosmic voids as underdense, spherical, non-overlapped regions
  that have gone through shell crossing.

  <section|Los void finder en la literatura>

  Several methods using voids have been developed to measure background model
  parameters, test dark energy models, and constrain alternative theories of
  gravity. These methods can be classified into two main statistics: the
  void-galaxy correlation function (hereafter VGCF) and the void size
  function (hereafter VSF).

  <subsection|zobov>

  A popular family of void finders are those based on feature analysis in the
  matter density field. The concept here is to look for basins surrounded by
  bridges of matter.

  This is the case, for instance, of void finders based on watershed
  transformations, which by making an analogy between the matter density
  field with topographic maps, define voids as the regions where the falling
  water eventually drain.

  They have the advantage of assuming no shape for the void, as it is defined
  by the basin surfaces naturally conforming to the filament walls
  surrounding the

  <subsection|spherical>

  Finally, we will consider a third family of void finders, those that define
  a void as an integrated underdensity in a given volume

  \;

  <subsection|Cleaning logs>

  <\with|font-base-size|6>
    CBL \<gtr\> \<gtr\> \<gtr\> \<gtr\> \<gtr\> \<gtr\>
    \<gtr\>\<gtr\>\<gtr\>\<gtr\>\<gtr\>\<gtr\>\<gtr\>\<gtr\>\<gtr\>\<gtr\>
    CLEANING PROCEDURE STARTED \ \<less\>\<less\>\<less\>\<less\>\<less\>\<less\>\<less\>\<less\>\<less\>
    \<less\> \<less\> \<less\> \<less\> \<less\>

    \;

    CBL \<gtr\> Voids in the initial Catalogue: 34228

    \;

    CBL \<gtr\> \ --- Removing spurious voids ---\ 

    \;

    CBL \<gtr\> Removed voids:\ 

    \ \ \ \ \ \ \ \ \ r_min-r_max criterion: 1

    \ \ \ \ \ \ \ \ \ High central density: 28072

    CBL \<gtr\> Voids in the Catalogue: 6155

    CBL \<gtr\> Time spent by the spurious voids-checking procedure: 2.481
    seconds

    \;

    CBL \<gtr\> \ --- Rescaling radii ---\ 

    \;

    CBL \<gtr\> Removed voids:

    \ \ \ \ \ \ \ \ \ Bad rescaled: 5880

    \ \ \ \ \ \ \ \ \ Out of range [0.00,100.00]: 0

    \ \ \ \ \ \ \ \ \ Cloud-in-void: 0

    \ \ \ \ \ \ \ \ \ Empty voids: 0

    CBL \<gtr\> Time spent by the rescaling procedure: 3.703 seconds

    CBL \<gtr\> Voids in the Catalogue: 275

    \;

    CBL \<gtr\> \ --- Checking for overlapping voids ---\ 

    \;

    CBL \<gtr\> Catalogue ordered according to the central density

    \;

    CBL \<gtr\> * * * Generating ChainMesh for void centres * * *

    \;

    CBL \<gtr\> Voids removed to avoid overlap: 7

    CBL \<gtr\> Time spent by the overlap-checking procedure: 0.071 seconds

    \;

    CBL \<gtr\> Voids in the final Catalogue: 268

    \;

    CBL \<gtr\> Total time spent: 6.627 seconds
  </with>

  <subsection|cbl - cleaning>

  <\itemize-dot>
    <item>The central density and the density contrast are computed if they
    are not read from the input void catalogue.

    <item>The <strong|central density> (in units of the average density) is
    computed as the density of a sphere centred in the void centre and with
    radius <math|R=ratio\<cdummy\>R<rsub|eff>> , where <math|R<rsub|eff>> is
    the void <em|effective radius> and <em|<math|ratio >>is a
    parameter<nbsp><math|\<less\>1><nbsp>selected by the user.

    <math|Central density=\<rho\><rsub|R>=<frac|N|V<around*|(|ratio\<cdummy\>R<rsub|eff>|)>>>

    <item>The density contrast is the ratio between the central density and
    the density within the sphere centred in the void centre and with radius

    Density Contrast = <math|<frac|\<rho\><rsub|R>|\<rho\><rsub|R<rsub|eff>>>>

    <item>The criterion for the overlap-check is read from the parameter
    file. In case of overlap:

    <\itemize-minus>
      <item><enumerate|if ol_crit = false<nbsp><math|\<rightarrow\>><nbsp>the
      void with the higher <strong|central density> is rejected,>

      <item><enumerate|if ol_crit = true<nbsp><math|\<rightarrow\>><nbsp>the
      void with the lower <strong|density constras>t is rejected.>
    </itemize-minus>
  </itemize-dot>

  Steps:

  <\enumerate-numeric>
    <item><itemize|clean1 = true<nbsp><math|\<rightarrow\>><nbsp>erase voids
    with underdensities higher than a given threshold>

    <item><itemize|clean2 = true<nbsp><math|\<rightarrow\>><nbsp>erase voids
    with effective radii outside a given range>

    <item><itemize|clean3 = >true<nbsp><math|\<rightarrow\>><nbsp>erase voids
    with density contrast lower than a given value, specified by the
    'relevance' parameter
  </enumerate-numeric>

  <section|vsf>

  The distribution of cosmic voids as a function of their size has been
  modelled for the first time by Sheth & van de Weygaert (2004), with the
  same excursion-set approach used for the mass function of DM haloes.

  It can be demonstrated that, for an initially spherical underdensity, the
  expanding void shells cross at a fixed value of density contrast with
  respect to the background (Blumenthal et al. 1992).
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|2|?|../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|2.1|?|../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-4|<tuple|2.2|?|../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-5|<tuple|2.3|?|../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-6|<tuple|2.4|?|../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-7|<tuple|3|?|../../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Los
      void finder en la literatura> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>