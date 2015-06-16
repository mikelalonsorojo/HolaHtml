<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>
  
<section>
	<h2>JavaScript</h2>

	<article>	
		<header>
			<h1>Date</h1>
		</header>
		<div class="cnt_article">
			
			<script type="text/javascript">
				//crear objeto fecha actual
				var fecha = new Date();
				var fechaGMT = fecha.toGMTString();
				
				//escribe en la pagina
				document.write("Fecha actual: <strong>" + fecha + "</strong><br>");
				document.write("Fecha actual: <strong>" + fechaGMT + "</strong><br>");
				document.write("Fecha actual: <strong>" + fecha.toLocaleString() + "</strong><br>");
				
			</script>
			
	 	</div>
			
		<footer>
			Capitulo 13; pagina 316
		</footer>
	</article>
	
			
			
	<article>	
		<header>
			<h1>Jquery UI - DatePicker </h1>
		</header>
		<div class="cnt_article">
			
			<p>Date: <input type="text" readonly data-widget="calendario" class="fecha"></p>
			
	 	</div>
			
		<footer>
			<a href="https://jqueryui.com/datepicker/" target="_blank">DatePicker - Jquery</a>
		</footer>			
			
	</article>
	
</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>