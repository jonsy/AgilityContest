/**
 * Set text of 'header' field on main window
 * @param {string} msg text to be shown
 */
function setHeader(msg) { $('#Header_Operation').html('<p>'+msg+'</p>'); } 

/**
 * Load html contents from 'page' URL and set as contents on '#contenido' tag
 * @param page URL where to retrieve HTML data
 * @param title new page title
 */
function loadContents(page,title) {
	$('#mymenu').panel('collapse');
	$('#contenido').load(	
			page,
			{},
			function(response,status,xhr){
				setHeader(title);
				if (status=='error') $('#contenido').load('frm_notavailable.php');
			}
		);
}

/**
 * Poor's man javascript implementation of php's replaceAll()
 */
function replaceAll(find,replace,from) {
	return from.replace(new RegExp(find, 'g'), replace);
}

/**
 * Poor's man javascript implementation of php's strpos()
 * @param {string} pajar
 * @param {string} aguja
 * @param {integer} offset
 * @returns
 */
function strpos (pajar, aguja, offset) {
	var i = (pajar + '').indexOf(aguja, (offset || 0));
	return i === -1 ? false : i;
}


/**
 * indica si una variable, funcion u objeto está definido
 * @param {string} variable objeto buscar
 * @returns {Boolean} true si existe el objeto 'variable'
 */
function isDefined(variable) { return (typeof(window[variable]) != "undefined");}

/**
 * Initialize working data information object
 */
function initWorkingData() {
	workingData.perro= 0; // IDPerro del perro en edicion
	workingData.guia= 0; // ID del guia en edicion
	workingData.club= 0; // ID del club activo
	workingData.juez= 0; // ID del juez activo
	workingData.prueba= 0; // ID de la prueba en curso
	workingData.nombrePrueba= ""; // nombre de la prueba en curso
	workingData.jornada= 0; // ID de la jornada en curso
	workingData.nombreJornada= ""; // nombre de la jornada
	workingData.manga= 0; // ID de la manga en curso
	workingData.manga2= 0; // ID de la segunda manga para el calculo de resultados
	workingData.nombreManga = ""; // denominacion de la manga
	workingData.datosPrueba= new Object(); // last selected prueba data
	workingData.datosJornada= new Object(); // last selected jornada data
	workingData.datosManga= new Object(); // last selected jornada data
	workingData.datosRonda= new Object(); // last selected ronda (grade, manga1, manga2)
}

/**
* Declare and initialize Object to store working data primary keys
*/
var workingData = new Object();
initWorkingData();

/**
 * Used to evaluate position, width and heigh on an element to be 
 * layed out in a grid
 * @param dg datagrid { cols, rows }
 * @param id id of element to be layed out
 * @param x start col
 * @param y start row
 * @param w nuber of cols
 * @param h number of rows
 */
function doLayout(dg,id,x,y,w,h) {
	var elem=$(id);
	elem.css('display','inline-block');
	elem.css('position','absolute');
	elem.css('float','left');
	elem.css('padding','5px');
	elem.css('-webkit-box-sizing','border-box');
	elem.css('-moz-box-sizing','border-box');
	elem.css('box-sizing','border-box');
	elem.css('left',  ((25+x*100)/dg.cols)+'%');
	elem.css('top',   ((100+y*100)/dg.rows)+'%');
	elem.css('width', ((w*100)/dg.cols)+'%');
	elem.css('height',((h*100)/dg.rows)+'%');
}

/**
 * Add a tooltip provided element, with given text
 * @param {easyui-object} obj Element suitable to add a tooltip
 * @param {string} text Data text to be shown
 */
function addTooltip(obj,text) {
	obj.tooltip({
    	position: 'top',
		deltaX: 30, // shift tooltip 30px right from top/center
    	content: '<span style="color:#000">'+text+'</span>',
    	onShow: function(){	$(this).tooltip('tip').css({backgroundColor: '#ef0',borderColor: '#444'	});
    	}
	});
}

/**
 * Common rowStyler function for AgilityContest datagrids
 * @paramm {integer} idx Row index
 * @param {Object} row Row data
 * @return {string} proper row style for given idx
 */
function myRowStyler(idx,row) {
	return ((idx&0x01)==0)?'background-color:#ccc;':'background-color:#eee;';
}

/**
 * Extension of datagrid methods to add "align" property on array declared toolbars
 * http://www.jeasyui.com/forum/index.php?topic=3540.msg8090#msg8090
 * Básicamente lo que hace es redefinir el toolbar (remove()+prepend(),
 * y ajustar el style "float" de todos los elementos declarados, +appentTo()
 */
$.extend($.fn.datagrid.methods, {
	buildToolbar: function(jq, items){
		return jq.each(function(){
			var p = $(this).datagrid('getPanel');
			p.children('div.datagrid-toolbar').remove();
			var tb = $('<div class="datagrid-toolbar"></div>').prependTo(p);
			$.map(items, function(item){
	        var t = $('<a href="javascript:void(0)"></a>').appendTo(tb);
	        t.linkbutton($.extend({}, item, {
	        	onClick:function(){
	        		if (item.handler) { item.handler.call(this); }
	        		if (item.onClick){ item.onClick.call(this); }
	        	}
	        }));
	        t.css('float', item.align || '');
			});
		});
	}
});

/**
 * Extension del messager para permitir una coleccion de radiobuttons en lugar de un prompt
 * Se anyade la opcion $messager.radio(title,{val:text},callback)
 */
/*
$.extend($.messager, {
    radio: function(title, msg, fn) {
    	var str="";
    	$.each(msg,function(val,text){
    		str +='<input class="messager-input" type="radio" name="messager-radio" value="'+val+'">'+text+'</input>\n';
    	});
        var content = '<div class="messager-icon messager-question"></div>'
                                + '<div>' + title + '</div>'
                                + '<br/>'
                                + str
                                + '<div style="clear:both;"/>';
        var buttons = {};
        buttons[$.messager.defaults.ok] = function(){
                win.window('close');
                if (fn){
            			var val=$('input:radio[name="messager-radio"]:checked').val();
                        fn(val);
                        return false;
                }
        };
        buttons[$.messager.defaults.cancel] = function(){
                win.window('close');
                if (fn){
                        fn();
                        return false;
                }
        };
        // _f: createDialog()
        var win= _f(title,content,buttons);
        return win;
    }
});
*/

/**
 * Generic function for adding key handling to datagrids
 * 
 * Create key bindings for edit,new,delete, and search actions on datagrid
 * assume that search textbox has 'dgid'-search as id
 * Called functions have a pointer to base datagrid
 * @param {string} dgid id(ie xxxx-datagrid) 
 * @param {function(dgid,searchval} insertfn new/insert function
 * @param {function(dgid) } updatefn edit function
 * @param {function(dgid) } deletefn delete function
 * @returns true on success, else false
 */
function addKeyHandler(dgid,insertfn,updatefn,deletefn) {
   	
    // activa teclas up/down para navegar por el panel
    $(dgid).datagrid('getPanel').panel('panel').attr('tabindex',0).focus().bind('keydown',function(e){
    	
    	// up & down
        function selectRow(t,up){
        	var count = t.datagrid('getRows').length;    // row count
        	var selected = t.datagrid('getSelected');
        	if (selected){
            	var index = t.datagrid('getRowIndex', selected);
            	index = index + (up ? -1 : 1);
            	if (index < 0) index = 0;
            	if (index >= count) index = count - 1;
            	t.datagrid('clearSelections');
            	t.datagrid('selectRow', index);
        	} else {
            	t.datagrid('selectRow', (up ? count-1 : 0));
        	}
    	}
    	
        // pgup & pg down
		function selectPage(t,offset) {
        	var count = t.datagrid('getRows').length;    // row count
        	var selected = t.datagrid('getSelected');
        	if (selected){
            	var index = t.datagrid('getRowIndex', selected);
            	switch(offset) {
            	case 1: index+=10; break;
            	case -1: index-=10; break;
            	case 2: index=count -1; break;
            	case -2: index=0; break;
            	}
            	if (index<0) index=0;
            	if (index>=count) index=count-1;
            	t.datagrid('clearSelections');
            	t.datagrid('selectRow', index);
        	} else {
            	t.datagrid('selectRow', 0);
        	}
		}
		
    	var t = $(dgid);
        switch(e.keyCode){
        case 38:	/* Up */	 selectRow(t,true); return false;
        case 40:    /* Down */	 selectRow(t,false); return false;
        case 13:	/* Enter */	 updatefn(dgid); return false;
        case 45:	/* Insert */ insertfn(dgid,$(dgid+'-search').val()); return false;
        case 46:	/* Supr */	 deletefn(dgid); return false;
        case 33:	/* Re Pag */ selectPage(t,-1); return false;
        case 34:	/* Av Pag */ selectPage(t,1); return false;
        case 35:	/* Fin */    selectPage(t,2); return false;
        case 36:	/* Inicio */ selectPage(t,-2); return false;
        case 9: 	/* Tab */
            // if (e.shiftkey) return false; // shift+Tab
            return false;
        case 16:	/* Shift */
        case 17:	/* Ctrl */
        case 18:	/* Alt */
        case 27:	/* Esc */
            return false;
        }
	}); 

    // - activar la tecla "Enter" en la casilla de busqueda
    $(dgid+'-search').keydown(function(event){
        if(event.keyCode != 13) return;
      	// reload data adding search criteria
        $(dgid).datagrid('load',{
            where: $(dgid+'-search').val()
        });
    });
}
