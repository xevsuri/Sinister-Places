<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0">
<head>
  <meta charset="utf-8"/>
  <title>Sinister Places</title>
   <link rel="stylesheet" type="text/css" href="lib/css/estiloPag.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="lib/css/estiloPagXML.css" media="screen" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"/>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script language="javascript" type="text/javascript">
       function mostrar(locations,locationsID){
        var lo = $("#search").val();
        var po =locations.indexOf(lo);
       if(locations.includes(lo)){
       $("#searchlocations").hide()
        $("#"+locationsID[po][1]).show();
        }
     }
  $( function() {
      var locations= ["Hotel Colonia Puig","Cementerio de mascotas","Parador de Cardona","Avistamientos OVNI"];
      var locationsID =new Array(["Hotel Colonia Puig","0"],["Cementerio de mascotas","1"],["Parador de Cardona","2"],["Avistamientos OVNI","3"]);
     $( "#search" ).autocomplete({
       source: locations
     });
         $("#sear").click(function(event) {
        mostrar(locations,locationsID);
      });
        $("#search").button();
  } );

</script>
</head>

<body>
  <nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top">
    <a class="navbar-brand" href="#">Sinister places</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="#section1">Búsqueda</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#section2">Contacto</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#section3">Lugares</a>
        </li>
        </ul>
      </div>

</nav>

<div class="container-fluid" id="section1">
  <div id="searchlocations" >
    <div id="titlesearch">
      <i id="mapmarker" class="fas fa-map-marker-alt fa-3x"></i><br/><br/>
    </div>
    <div id="entersearch">
      <form >
        <input id="search" class="form-control" type="text" placeholder="Enter location"/> <br/>
        <button type="button" class="btn btn-outline-danger my-2 my-sm-0" id="sear">Search</button>
      </form>
    </div>
  </div>
    <xsl:for-each select="places/place">
    <div id="{@id}" class="pag" style="display:none">
        <h1 class="tituloXML"><xsl:value-of select="title"/></h1>
        <p id="Contenido"  align="justify"><xsl:value-of select="description"/></p>
        <img id="imagenes" class="card-img-top" src="{image}" alt="Card image cap"/><br/>
        <a id="boton" href="https://www.google.es/maps/place/{location}" target="_blank" class="btn btn-primary">Go to place</a>
    </div>
    </xsl:for-each>
</div>

<div class="center_container container-fluid bg-dark text-white" id="section2">
  <h2>Contacto</h2>
  <form>
    <div class="form-group">
      <label>Nombre</label>
      <input type="text" class="center_input form-control" placeholder="Introduce tu nombre"/>
    </div>
    <div class="form-group">
      <label>Apellido</label>
      <input type="text" class="center_input form-control" placeholder="Introduce tu apellido"/>
    </div>
    <div class="form-group">
      <label>Correo</label>
      <input type="email" class="center_input form-control" placeholder="Introduce tu correo"/>
    </div>
    <div class="form-group">
      <label>Mensaje</label>
      <textarea class="center_input form-control" rows="3"></textarea>
    </div>
  </form>
</div>
<div id="section3" class="center_container container">
  <h2>Contribuir</h2>
  Github<br/>
  <a href="https://github.com/vvsvictor/Sinister-Places" target="_blank"><i class="fab fa-github fa-7x"></i></a>
</div>
<div id="footer" class=" center_container container-fluid bg-dark text-white">
  © 2018 Copyright - Sinister Places
</div>

</body>
</html>
