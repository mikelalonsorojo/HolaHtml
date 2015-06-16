<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Test para utilidades.js</title>
  <link rel="stylesheet" href="//code.jquery.com/qunit/qunit-1.18.0.css">
</head>
<body>
  <div id="qunit"></div>
  <div id="qunit-fixture"></div>
  <script src="//code.jquery.com/qunit/qunit-1.18.0.js"></script>
  
  
  <script src="../../js/utilidades.js"></script>
  
  <script>
  
  QUnit.test( "Date - fechas", function( assert ) {
	  
	  var fecha = new Date (2015, 5, 15);
	  
	  assert.ok ( convertirFecha (fecha, CORTO) =="15/06/2015" , 'fecha corta' );
	  assert.ok ( convertirFecha (fecha, LARGO) =="el 15 de Junio del 2015" , 'fecha larga' );
	  assert.ok ( convertirFecha (fecha, 'formato no valido') ==null , 'formato no valido' );
	  assert.ok ( convertirFecha (null, CORTO) ==null , 'fecha null' );
	  assert.ok ( convertirFecha (undefined, CORTO) ==null , 'fecha undefined' );
	  assert.ok ( convertirFecha ('45/ff/2020', CORTO) ==null , 'fecha no correcta' );
	  
	  var fechaInvalida = new Date('45/ff/2020');
	  assert.ok ( convertirFecha ( fechaInvalida , CORTO) ==null , 'fecha invalida' );
	  
	  
  });
  
  QUnit.test( "Arrays / Vectores", function( assert ) {
  	var jonWayne = new Array("Jon", "Wayne", 45);
  	assert.ok ( jonWayne[0] == 'Jon', 'Posición 0 está "Jon"' );
  	assert.ok ( jonWayne[1] == 'Wayne', 'Posición 1 está "Wayne"' );
  	assert.ok ( jonWayne[2] == 45, 'Posición 2 está "45"' );
  	assert.ok ( jonWayne.length == 3 , "Longitud del array = 3");
  	
  	var otroJonWayne = new Array ('El bueno el feo y el malo', 1973, 'nipidea');
  	assert.ok ( jonWayne.concat(otroJonWayne)[0] == 'Jon' , 'Posición 0 está "Jon"' );
  	assert.ok ( jonWayne.concat(otroJonWayne)[3] == 'El bueno el feo y el malo' , 'Posición 3 está "El bueno el feo y el malo"' );
  	assert.ok ( jonWayne.concat(otroJonWayne)[4] == 1973 , 'Posición 4 está 1973' );
  	assert.ok ( jonWayne.concat(otroJonWayne)[5] == 'nipidea' , 'Posición 5 está "nipidea"' );
  	
  	assert.ok ( jonWayne.join("#") == "Jon#Wayne#45" , 'array.join(#) es "Jon#Wayne#45"' );
  	
  	assert.ok ( jonWayne.reverse()[0] == 45 , 'array.reverse() Posición 0 está 45' ); //Lo pone alrevés para siempre
  	// Si pongo jonWayne.reverse()[1] ejecutaría reverse de nuevo y lo dejaría como estaba
  	assert.ok ( jonWayne[2] == "Jon" , 'array.reverse() Posición 2 está "Jon"' );
  	
  	var numeros = new Array (-5, 5, 3, 1, 0);
  	var numerosOrdenados=new Array();
  	numerosOrdenados=numeros.sort();
  	assert.ok ( numerosOrdenados[0] == -5 , 'Números ordenados de menor a mayor: 1º -5' );
  	assert.ok ( numerosOrdenados[1] == 0 , '2º 0' ); // Si pongo numeros.sort()[1] ejecutaría sort de nuevo
  	assert.ok ( numerosOrdenados[2] == 1 , '3º 1' );
  	assert.ok ( numerosOrdenados[3] == 3 , '4º 3' );
  	assert.ok ( numerosOrdenados[4] == 5 , '5º 5' );
  	
  	var letras = new Array ("b", "a", "A", "h");
  	assert.ok ( letras.sort()[0] == "A" , 'Letras ordenadas de menor a mayor: 1º "A"' );
  	assert.ok ( letras.sort()[1] == "a" , '2º "a"' );
  	assert.ok ( letras.sort()[2] == "b", '3º "b"' );
  	assert.ok ( letras.sort()[3] == "h" , '4º "h"' );


  });

  
  
  	QUnit.test( "Funciones predefinidas", function( assert ) {
  		
  		assert.ok( escape('Hola Mundo') == 'Hola%20Mundo' , "'Hola Mundo' escapado" );
  		assert.ok( escape('Hóla Mundo') == 'H%F3la%20Mundo' , "'Hóla Mundo' escapado" );
  		
  		assert.ok( (10 + "1") == "101"          , "Sin parseInt 10 + \"1\" = 101" );
  		assert.ok( (10 + parseInt("1") ) == 11  , "Con parseInt 10 + \"1\" = 11" );
  		
  		assert.ok( isNaN("123abc")   , "123abc No es numero" );  		
  		assert.ok( !isNaN("123")      , "123 Es numero" );
  		
  		
  		var jonWaine = new Array("Jon", "Waine", 45);
  		
  		assert.ok( jonWaine[0] == "Jon"   , "posicion 0 esta 'Jon' ");
  		assert.ok( jonWaine[1] == "Waine" , "posicion 1 esta 'Waine' ");
  		assert.ok( jonWaine[2] == 45      , "posicion 2 esta 45 ");
  		assert.ok( jonWaine.length == 3   , "Longitud del array ==3 ");
  		
  		
  	});
  
  
  	//Nuestro codigo de Test  	
	QUnit.test( "entradas (dia,edad) ", function( assert ) {
		
		  assert.ok( entradas('lunes',34 ) == 2 , " lunes <  35 años = 2 € " );
		  assert.ok( entradas('lunes',35 ) == 2 , " lunes =< 35 años = 2 € " );
		  assert.ok( entradas('lunes',36 ) == 5 , " lunes >  35 años = 5 € " );
		  
		  assert.ok( entradas('martes', 0)    == 2 , "martes 0");
		  assert.ok( entradas('martes',20)    == 2 , "martes 20");
		  assert.ok( entradas('martes',25)    == 2 , "martes 25");
		  assert.ok( entradas('martes',26)    == 5 , "martes 26");
		  assert.ok( entradas('martes',28)    == 5 , "martes 28");
		  assert.ok( entradas('martes',50)    == 5 , "martes 50");
		  assert.ok( entradas('martes',51)    == 7 , "martes 51");
		  assert.ok( entradas('martes',99)    == 7 , "martes 99");
		  
		  assert.ok( entradas('miercoles',15) == 3 , "miercoles  15 años 3€");
		  assert.ok( entradas('miercoles',30) == 5 , "miercoles  30 años 5€");
		  assert.ok( entradas('miercoles',50) == 5 , "miercoles  50 años 8€");
		  assert.ok( entradas('miercoles',51) == 8 , "miercoles  51 años 8€");
		  
		  assert.ok( entradas('jueves',15)    == 5 , "jueves     15 años 5€");
		  assert.ok( entradas('jueves',30)    == 7, "jueves     30 años 10€");
		  
		  assert.ok( entradas('viernes',30)   == 10, "viernes    30 años 10€");
		  
		  assert.ok( entradas('sabado',30)    == 10, "sabado     30 años 10€");

		  assert.ok( entradas('domingo',30)   == 10, "domingo   30 años 10€");
		  
		  //parametros incorrectos
		  assert.ok( entradas('domingo',-30)  == "El dia o la edad no son correctos", "domingo   (-30) años dato incorrecto");		  
		  assert.ok( entradas('vernes',30)    == "El dia o la edad no son correctos", "vernes   30 años dato incorrecto");
		  assert.ok( entradas(null,30)        == "El dia o la edad no son correctos", "null   30 años dato incorrecto");
		  assert.ok( entradas('undefined' ,30)  == "El dia o la edad no son correctos", "null   30 años dato incorrecto");
	});
  	
  	
	QUnit.test( "es_par(numero)", function( assert ) {
		
		  assert.ok( es_par(0) 			 ,  "0 es par" );
		  assert.ok( es_par(2) 			 ,  "2 es par" );
		  assert.ok( !es_par(3) 		 , "3 NO es par" );
		  assert.ok( es_par(null)		 ,  "null es par !!! " );
		  assert.ok( !es_par(undefined)  ,  "undefined NO es par" );
		  assert.ok( es_par(-2)			 ,  "-2 es par" );
		  assert.ok( !es_par(-3) 		 ,  "-3 NO es par" );
		  assert.ok( es_par(2.0) 		 ,  "2.0 es par" );
		  assert.ok( !es_par(2.1) 		 ,  "2.1 NO es par" );
		  
	});
  	
    
  </script>
</body>
</html>
