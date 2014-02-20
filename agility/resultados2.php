<!-- CLASIFICACIONES DE PRUEBA/JORNADA/RONDA -->
<div id="resultados-info" class="easyui-panel" title="Informacion de la Ronda">
<div id="resultados-infolayout" class="easyui-layout" style="height:200px;">
	<div data-options="region:'west',title:'Datos de la Prueba',split:true,collapsed:false" style="width:300px;padding:10px;font-size:9px">
		<form class="result_forms" id="resultados-info-prueba" method="get">
		<table>
		<tr>
		<td colspan="2"><label for="Nombre">Denominaci&oacute;n:</label><br />
		<input id="resultados-info-nombre" type="text" class="result_forms" readonly="readonly" name="Nombre" size="30"/></td>
		</tr>
		<tr>
		<td><label for="Club">Club Organizador:</label></td>
		<td><input id="resultados-info-club" type="text" class="result_forms" readonly="readonly" name="Club"/></td>
		</tr>
		<tr>
		<td><label for="Jornada">Jornada:</label></td>
		<td><input id="resultados-info-jornada" type="text" class="result_forms" readonly="readonly" name="Jornada"/></td>
		</tr>
		<tr>
		<td><label for="Fecha">Fecha:</label></td>
		<td><input id="resultados-info-fecha" type="text" class="result_forms" readonly="readonly" name="Fecha"/></td>
		</tr>
		<tr>
		<td><label for="Ronda">Ronda:</label></td>
		<td><input id="resultados-info-ronda" type="text" class="result_forms" readonly="readonly" name="Ronda"/></td>
		</tr>
		<tr>
		<td><label for="Observaciones">Observaciones:</label></td>
		<td><input id="resultados-info-comments" type="text" class="result_forms" readonly="readonly" name="Observaciones"/></td>
		</tr>
		</form>
		</table>
	</div> <!-- Datos de Prueba/Jornada/Ronda -->
	
	<div data-options="region:'center',title:'Datos de las Mangas de esta ronda'" style="width:500px">
		<!-- TABLA DE DATOS DE TRS Y TRM DE LA MANGA 1-->
		<form class="result_forms" id="resultados-manga1-trs-form" method="get">
			<label for="Tipo">Manga 1: </label>
			<input id="rm1t" type="text" name="Tipo" readonly="readonly" size="6">
			<label for="Juez">Juez: </label>
			<input id="rm1j" type="text" name="Juez" readonly="readonly" size="50">
			<table>
				<tr>
					<th>Large</th>
					<td>Distancia <input type="text" size=4" class="result_forms" readonly="readonly" name="DIST_L"></td>
					<td>Obst&aacute;culos <input type="text" size=4" class="result_forms" readonly="readonly" name="OBST_L"></td>
					<td>TRS <input type="text" size=4" class="result_forms" readonly="readonly" name="TRS_L"></td>
					<td>TRM <input type="text" size=4" class="result_forms" readonly="readonly" name="TRM_L"></td>
					<td>Vel. <input type="text" size=4" class="result_forms" readonly="readonly" name="VEL_L"></td>
				</tr>
				<tr>
					<th>Medium</th>
					<td>Distancia <input type="text" size=4" class="result_forms" readonly="readonly" name="DIST_M"></td>
					<td>Obst&aacute;culos <input type="text" size=4" class="result_forms" readonly="readonly" name="OBST_M"></td>
					<td>TRS <input type="text" size=4" class="result_forms" readonly="readonly" name="TRS_M"></td>
					<td>TRM <input type="text" size=4" class="result_forms" readonly="readonly" name="TRM_M"></td>
					<td>Vel. <input type="text" size=4" class="result_forms" readonly="readonly" name="VEL_M"></td>
				</tr>
				<tr>
					<th>Small</th>
					<td>Distancia <input type="text" size=4" class="result_forms" readonly="readonly" name="DIST_S"></td>
					<td>Obst&aacute;culos <input type="text" size=4" class="result_forms" readonly="readonly" name="OBST_S"></td>
					<td>TRS <input type="text" size=4" class="result_forms" readonly="readonly" name="TRS_S"></td>
					<td>TRM <input type="text" size=4" class="result_forms" readonly="readonly" name="TRM_S"></td>
					<td>Vel. <input type="text" size=4" class="result_forms" readonly="readonly" name="VEL_S"></td>
				</tr>
			</table>
		</form> <!-- Datos de la manga 1 -->
		<hr />
		<form class="result_forms" id="resultados-manga2-trs-form" method="get">
			<label for="Tipo">Manga 2: </label>
			<input id="rm2t" type="text" name="Tipo" readonly="readonly" size="6">
			<label for="Juez">Juez: </label>
			<input id="rm2j" type="text" name="Juez" readonly="readonly" size="50">
			<table>
				<tr>
					<th>Large</th>
					<td>Distancia <input type="text" size=4" class="result_forms" readonly="readonly" name="DIST_L"></td>
					<td>Obst&aacute;culos <input type="text" size=4" class="result_forms" readonly="readonly" name="OBST_L"></td>
					<td>TRS <input type="text" size=4" class="result_forms" readonly="readonly" name="TRS_L"></td>
					<td>TRM <input type="text" size=4" class="result_forms" readonly="readonly" name="TRM_L"></td>
					<td>Vel. <input type="text" size=4" class="result_forms" readonly="readonly" name="VEL_L"></td>
				</tr>
				<tr>
					<th>Medium</th>
					<td>Distancia <input type="text" size=4" class="result_forms" readonly="readonly" name="DIST_M"></td>
					<td>Obst&aacute;culos <input type="text" size=4" class="result_forms" readonly="readonly" name="OBST_M"></td>
					<td>TRS <input type="text" size=4" class="result_forms" readonly="readonly" name="TRS_M"></td>
					<td>TRM <input type="text" size=4" class="result_forms" readonly="readonly" name="TRM_M"></td>
					<td>Vel. <input type="text" size=4" class="result_forms" readonly="readonly" name="VEL_M"></td>
				</tr>
				<tr>
					<th>Small</th>
					<td>Distancia <input type="text" size=4" class="result_forms" readonly="readonly" name="DIST_S"></td>
					<td>Obst&aacute;culos <input type="text" size=4" class="result_forms" readonly="readonly" name="OBST_S"></td>
					<td>TRS <input type="text" size=4" class="result_forms" readonly="readonly" name="TRS_S"></td>
					<td>TRM <input type="text" size=4" class="result_forms" readonly="readonly" name="TRM_S"></td>
					<td>Vel. <input type="text" size=4" class="result_forms" readonly="readonly" name="VEL_S"></td>
				</tr>
			</table>
		</form> <!-- Datos de la manga 2 -->
	</div> <!-- Layout: center --> 
</div> <!-- informacion de layout -->
</div> <!-- panel de informacion -->

<div id="resultados-data" class="easyui-panel" title="Clasificaciones">
	<div id="resultados-datatabs" class="easyui-tabs" style="height:325px;padding:0px 0px 10px 0px;">
		<div title="Manga 1" data-options="closable:false">
			<table id="resultados-manga1-datagrid" class="easyui-datagrid" style="padding:10px 20px"></table>
		</div>
		<div title="Manga 2" data-options="closable:false">
			<table id="resultados-manga2-datagrid" class="easyui-datagrid" style="padding:10px 20px"></table>
		</div>
		<div title="Conjunta" data-options="closable:false">
			<table id="resultados-conjunta-datagrid" class="easyui-datagrid" style="padding:10px 20px"></table>
		</div>
	</div>
</div>

<div id="resultados-toolbar">
	<form id="resultados-cat-form" class="result_forms">
	<select id="resultados-cat-form-select">
		<option value="0">Large</option>
		<option value="1">Medium</option>
		<option value="2">Small</option>
		<option value="3">Medium + Small</option>
		<option value="4">Large + Medium + Small</option>
	</select>
    <a id="resultados-refreshBtn" href="#" class="easyui-linkbutton" onclick="">Refrescar</a>
    <a id="resultados-labelsBtn" href="#" class="easyui-linkbutton" onclick="">Etiquetas</a>
    <a id="resultados-printBtn" href="#" class="easyui-linkbutton" onclick="">Imprimir</a>
	</form>
</div>

<script type="text/javascript">

//cabecera de la pagina
$('#Header_Operation').html('<p>Resultados y Clasificaciones</p>');
//inicializamos formularios
$('#resultados-info').panel({
	border:true,
	closable:false,
	collapsible:true,
	collapsed:false
});
$('#resultados-data').panel({
	border:		true,
	closable:	false,
	collapsible:false,
	collapsed:	false,
});
// preserve space for combobox
// $('#resultados-data').panel('header').css('height',30);

$('#resultados-infolayout').layout();
$('#resultados-datatabs').tabs({
	tools:'#resultados-toolbar'
});
$('#resultados-info-prueba').form('load',{
	Nombre:	workingData.datosPrueba.Nombre,
	Club:	workingData.datosPrueba.Club,
	Jornada: workingData.datosJornada.Nombre,
	Fecha:	workingData.datosJornada.Fecha,
	Ronda:	workingData.datosRonda.Nombre,
	Observaciones: workingData.datosPrueba.Observaciones
});
$('#resultados-manga1-trs-form').form({
		onLoadSuccess: function (data) {
			var j=" - "+workingData.datosRonda.Juez12;
			$('#rm1t').val(workingData.datosRonda.Nombre1);
			if (j===" - -- Sin asignar --") j=""; 
			$('#rm1j').val(workingData.datosRonda.Juez11+j);
			// data.Observaciones=workingData.datosRonda.Observaciones1;
		}
	});
$('#resultados-manga1-trs-form').form(
		'load',
		"database/mangaFunctions.php?Operation=getTRS&Jornada="+workingData.jornada+"&Manga="+workingData.datosRonda.Manga1
		);
$('#resultados-manga2-trs-form').form({
	onLoadSuccess: function (data) {
		var j=" - "+workingData.datosRonda.Juez22;
		$('#rm2t').val(workingData.datosRonda.Nombre2);
		if (j===" - -- Sin asignar --") j=""; 
		$('#rm2j').val(workingData.datosRonda.Juez21+j);
		// data.Observaciones=workingData.datosRonda.Observaciones2;
	}
});
$('#resultados-manga2-trs-form').form(
		'load',
		"database/mangaFunctions.php?Operation=getTRS&Jornada="+workingData.jornada+"&Manga="+workingData.datosRonda.Manga2
		);

// botones de la tabla de resultados
$('#resultados-refreshBtn').linkbutton({plain:true,iconCls:'icon-reload'}); // recargar
$('#resultados-refreshBtn').tooltip({
	position: 'top',
	content: '<span style="color:#000">Actualizar la tabla de resultados</span>',
	onShow: function(){	$(this).tooltip('tip').css({backgroundColor: '#ef0',borderColor: '#444'	});
	}
});
$('#resultados-labelsBtn').linkbutton({plain:true,iconCls:'icon-table'}); // etiquetas
$('#resultados-labelsBtn').tooltip({
	position: 'top',
	content: '<span style="color:#000">Generar patron CSV para componer etiquetas</span>',
	onShow: function(){	$(this).tooltip('tip').css({backgroundColor: '#ef0',borderColor: '#444'	});
	}
});
$('#resultados-printBtn').linkbutton({plain:true,iconCls:'icon-print'}); // imprimir
$('#resultados-printBtn').tooltip({
	position: 'top',
	content: '<span style="color:#000">Imprimir los resultados</span>',
	onShow: function(){	$(this).tooltip('tip').css({backgroundColor: '#ef0',borderColor: '#444'	});
	}
});

// declaracion de las diversas tablas de resultados
$('#resultados-manga1-datagrid').datagrid({
	// propiedades del panel asociado
	fit: true,
	border: false,
	closable: false,
	collapsible: false,
	collapsed: false,
	// propiedades del datagrid
	method: 'get',
	url: 'database/clasificacionesFunctions.php',
    queryParams: {
        Jornada: workingData.jornada,
        Manga: workingData.manga,
        Operation: 'parcial',
        Orden: $('#resultados-cat-form-select').val()
    },
    loadMsg: "Actualizando resultados de la manga 1 ....",
    pagination: false,
    rownumbers: false,
    fitColumns: true,
    singleSelect: true,
    // toolbar: '#resultadosmanga-toolbar',
    columns:[[
        { field:'Manga',		hidden:true },
        { field:'Dorsal',		hidden:true },
        // { field:'Dorsal',		width:10, align:'left',  title: 'Dorsal'},
      	{ field:'Licencia',		hidden:true },
        { field:'Puesto',		width:10, align:'left',  title: 'Puesto'},
        { field:'Nombre',		width:15, align:'left',  title: 'Nombre'},
        { field:'Guia',			width:40, align:'right', title: 'Guia' },
        { field:'Club',			width:25, align:'right', title: 'Club' },
      	{ field:'Categoria',	width:10, align:'center',title: 'Cat.' },
      	{ field:'Faltas',		width:10, align:'center', title: 'Faltas'},
      	{ field:'Rehuses',		width:10, align:'center', title: 'Rehuses'},
      	{ field:'Tocados',		width:10, align:'center', title: 'Tocados'},
      	{ field:'Tiempo',		width:15, align:'right', title: 'Tiempo'},
      	{ field:'Velocidad',	width:10, align:'right', title: 'Vel.'},
      	{ field:'Penalizacion',	width:15, align:'right', title: 'Penal.'}, 
      	{ field:'Calificacion',	width:25, align:'center',title: 'Calificacion'}
    ]],
    rowStyler:function(index,row) { // colorize rows
        return ((index&0x01)==0)?'background-color:#ccc;':'background-color:#eee;';
    },
    onBeforeLoad: function(param) { return (workingData.manga<=0)?false:true; } // do not load if no manga selected
});

$('#resultados-manga2-datagrid').datagrid({
	// propiedades del panel asociado
	fit: true,
	border: false,
	closable: false,
	collapsible: false,
	collapsed: false,
	// propiedades del datagrid
	method: 'get',
	url: 'database/clasificacionesFunctions.php',
    queryParams: {
        Jornada: workingData.jornada,
        Manga: workingData.manga2,
        Operation: 'parcial',
        Orden: $('#resultados-cat-form-select').val()
    },
    loadMsg: "Actualizando resultados de la manga 2 ....",
    pagination: false,
    rownumbers: false,
    fitColumns: true,
    singleSelect: true,
    columns:[[
        { field:'Manga',		hidden:true },
        { field:'Dorsal',		hidden:true },
        // { field:'Dorsal',		width:10, align:'left',  title: 'Dorsal'},
      	{ field:'Licencia',		hidden:true },
        { field:'Puesto',		width:10, align:'left',  title: 'Puesto'},
        { field:'Nombre',		width:15, align:'left',  title: 'Nombre'},
        { field:'Guia',			width:40, align:'right', title: 'Guia' },
        { field:'Club',			width:25, align:'right', title: 'Club' },
      	{ field:'Categoria',	width:10, align:'center',title: 'Cat.' },
      	{ field:'Faltas',		width:10, align:'center', title: 'Faltas'},
      	{ field:'Rehuses',		width:10, align:'center', title: 'Rehuses'},
      	{ field:'Tocados',		width:10, align:'center', title: 'Tocados'},
      	{ field:'Tiempo',		width:15, align:'right', title: 'Tiempo'},
      	{ field:'Velocidad',	width:10, align:'right', title: 'Vel.'},
      	{ field:'Penalizacion',	width:15, align:'right', title: 'Penal.'}, 
      	{ field:'Calificacion',	width:25, align:'center',title: 'Calificacion'}
    ]],
    rowStyler:function(index,row) { // colorize rows
        return ((index&0x01)==0)?'background-color:#ccc;':'background-color:#eee;';
    },
    onBeforeLoad: function(param) { return (workingData.manga<=0)?false:true; } // do not load if no manga selected
});

$('#resultados-conjunta-datagrid').datagrid({
	// propiedades del panel asociado
	fit: true,
	border: false,
	closable: false,
	collapsible: false,
	collapsed: false,
	// propiedades del datagrid
	method: 'get',
	url: 'database/clasificacionesFunctions.php',
    queryParams: {
        Jornada: workingData.jornada,
        Manga: workingData.manga,
        Manga2: workingData.manga2,
        Operation: 'final',
        Orden: $('#resultados-cat-form-select').val()
    },
    loadMsg: "Actualizando resultados de la clasificacion conjunta ....",
    pagination: false,
    rownumbers: false,
    fitColumns: true,
    singleSelect: true,
    // toolbar: '#resultadosmanga-toolbar',
    columns:[[
        { field:'Manga',		hidden:true },
        { field:'Dorsal',		hidden:true },
        // { field:'Dorsal',		width:10, align:'left',  title: 'Dorsal'},
      	{ field:'Licencia',		hidden:true },
        { field:'Puesto',		width:10, align:'left',  title: 'Puesto'},
        { field:'Nombre',		width:15, align:'left',  title: 'Nombre'},
        { field:'Guia',			width:40, align:'right', title: 'Guia' },
        { field:'Club',			width:25, align:'right', title: 'Club' },
      	{ field:'Categoria',	width:10, align:'center',title: 'Cat.' }
    ]],
    rowStyler:function(index,row) { // colorize rows
        return ((index&0x01)==0)?'background-color:#ccc;':'background-color:#eee;';
    },
    onBeforeLoad: function(param) { // do not load if no manga selected
        if (workingData.manga<=0) return false;
        if (workingData.manga2<=0) return false;
        return true;
    }
});
</script>