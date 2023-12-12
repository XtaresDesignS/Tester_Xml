<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    
    <xsl:for-each select="automoveis/situacao/marca/veiculo">

      <div class="card">
        <div class="relative flex w-80 flex-col rounded-xl bg-white bg-clip-border text-gray-700 shadow-md">
          <div class="relative mx-4 -mt-6 h-40 overflow-hidden rounded-xl bg-blue-gray-500 bg-clip-border text-white shadow-lg shadow-blue-gray-500/40 bg-gradient-to-r from-blue-500 to-blue-600">
            <img class="image-card" src='{foto}'/>
          </div>
          <div class="p-6">
            <h5 class="mb-2 block font-sans text-l font-semibold leading-snug tracking-normal text-blue-gray-900 antialiased">
              <xsl:value-of select='ancestor::marca/@id'/>
              <xsl:value-of select="modelo"/>
            </h5>
            
            <p class="block font-sans text-base font-light leading-relaxed text-inherit antialiased">
              Matricula: <xsl:value-of select="matricula"></xsl:value-of>             
            </p>  <p class="block font-sans text-base font-light leading-relaxed text-inherit antialiased">
             Kms: <xsl:value-of select="kms"></xsl:value-of>
            </p>  <p class="block font-sans text-base font-light leading-relaxed text-inherit antialiased">
             estado : <xsl:value-of select="ancestor::situacao/@id"></xsl:value-of>
            </p>
          </div>
          <div class="p-6 pt-0">
            <button data-ripple-light="true" type="button" class="select-none rounded-lg bg-blue-500 py-3 px-6 text-center align-middle font-sans text-xs font-bold uppercase text-white shadow-md shadow-blue-500/20 transition-all hover:shadow-lg hover:shadow-blue-500/40 focus:opacity-[0.85] focus:shadow-none active:opacity-[0.85] active:shadow-none disabled:pointer-events-none disabled:opacity-50 disabled:shadow-none">
              Comprar
            </button>
          </div>
        </div>
      </div>
      <br></br>
      <br></br>
         </xsl:for-each>
    
  </xsl:template>

</xsl:stylesheet>
