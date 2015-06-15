/**
 *   JavaScript para ejecutar en todas las paginas del proyecto
 *   Se carga en foot.jsp despues de incluir todas las librerias necesarias de JS 	
 */

//Se ejecuta cuando todo el HTML se ha cargado
$(function() {
	
	console.debug('document ready!');
	$('#select').filterByText($('#textbox'), false);


	 //asociar a todos los elementos con clase 'fecha' el datePicker de Jquery UI 
		$( "input[data-widget='calendario']" ).datepicker();
		console.debug('datePicker habilitado');
	
  });