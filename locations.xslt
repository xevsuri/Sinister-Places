<?xml version="1.0" encoding="UTF-8" ?>


<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0" style="background:#151515">

  <link rel="stylesheet" type="text/css" href="lib/css/estiloPagXML.css" media="screen" />
  <head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
   
  </head>
  <body style="font-family: Arial, Helvetica, sans-serif"  >

    <div class="tituloXML"><h1>SINISTERS</h1></div>
    <div class="card-columns" bgcolor= "#151515" style="display: flex; justify-content: space-around"   >
    <xsl:for-each select="places/place">
    <div class="card padding" style="width: 20rem" >
        <img class="card-img-top" src="{image}" alt="Card image cap" style="padding:10px"/>
        <div class="card-body">
          <h5 class="card-title"><xsl:value-of select="title"/></h5>
          <p class="card-text"><xsl:value-of select="description"/></p>
          <a href="https://www.google.es/maps/place/{location}"  target="_blank" class="btn btn-primary" style="background:#151515; border:unset; ">Go to place</a>
        </div>
    </div>
  </xsl:for-each>
</div>
  </body>
</html>
