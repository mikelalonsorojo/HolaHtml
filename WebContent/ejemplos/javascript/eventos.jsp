<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>
  
<section>
	<h2>Eventos</h2>

	<article>	
		<header>
			<h1>Onclick en etiqueta</h1>
		</header>
		<div class="cnt_article">
			
			<i class="fa fa-align-justify fa-4x" onclick="alert('pulsado icono');"></i>			
						
	 	</div>			
		<footer>
			Capitulo 14; pagina 328
		</footer>
	</article>
	
	<article>	
		<header>
			<h1>Onclick en el Objeto con JavaScript</h1>
		</header>
		<div class="cnt_article">
			
			<i class="fa fa-align-justify fa-4x" id="btn_menu"></i>			
			<script>
				
				var btn_menu = document.getElementById("btn_menu");
				btn_menu.onclick = function(){
					alert('Boton pulsado, evento relacionado con javaScript');
				};
			
			</script>			
	 	</div>			
		<footer>
			Capitulo 14; pagina 328
		</footer>
	</article>
	
	<article>	
		<header>
			<h1>Asociar evento con Listener</h1>
		</header>
		<div class="cnt_article">
			
			<i class="fa fa-align-justify fa-4x"></i>
			<i class="fa fa-align-justify fa-4x"></i>
			<i class="fa fa-align-justify fa-4x"></i>
			<i class="fa fa-align-justify fa-4x"></i>
						
			<script>
				
				//declaramos una referencia a la funcion
				var referencia_funcion_saluda = function saluda(){
					alert('Hola');
				}
			
				var listaBotones = document.getElementsByTagName("i");
				//recorro todos los elementos para asociarle el Listener
				for (i=0; i < listaBotones.length; i++){
					listaBotones[i].addEventListener("click", referencia_funcion_saluda );
				}	
				
			
			</script>			
	 	</div>			
		<footer>
			Capitulo 14; pagina 328
		</footer>
	</article>
	
	
	<article>	
		<header>
			<h1>Mostrar eventos en textarea</h1>
		</header>
		<div class="cnt_article">
			
			<div class="clearfix cnt_cols">
				
				<div class="col1">
				
					<textarea id="txt" cols="50" rows="20"></textarea>
				
				</div>
				
				<div class="col2">
					
					<input type="button" id="boton" value="pulsame">
					<input type="button" id="clear" value="Limpiar">
					
					<select id="selec">
						<option value="bio">Bilbao</option>
						<option value="bar">Barakaldo</option>
					</select>
					
				</div>
			
			</div>			
			
			<script type="text/javascript">
			
				//buscar objetos por su ID
				var txt   = document.getElementById("txt");
				var boton = document.getElementById("boton");
				var selec = document.getElementById("selec");
				var clear = document.getElementById("clear");
				
				boton.onclick = function( event ){
					console.debug('Boton pulsado');		
					var posicion = "["+event.x+","+event.y+"]"
					txt.value += 'Boton pulsado [x,y] '+posicion+' \n';
				}
				
				clear.onclick = function( event ){
					console.debug('Boton Limpiar');					
					txt.value = '';
				}
				
				selec.onchange = function( event ){
					console.debug('selec cambiado');
					
					var indice = selec.selectedIndex;
					var texto  = selec.options[indice].text;
					var valor  = selec.options[indice].value;
										
					txt.value += 'opcion cambiada: '+ texto + ' ['+ valor + ']\n';
				}
			
			</script>
						
	 	</div>			
		<footer>
			Sin referencia
		</footer>
	</article>
	
	<article>	
	
</section>	
			
	

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>