<?php
require_once(__DIR__ . "/../../server/tools.php");
require_once(__DIR__ . "/../../server/auth/Config.php");
$config =Config::getInstance();
?>

<div style="width=100%">
    <form name="excel-importOpts">
        <p>
            <?php _e("Current round to import data into");?>:<br/>
            <span style="font-style:italic;" id="import-excelRoundInfo"></span><br/>
            <?php _e("Database backup is recommended before import");?> &nbsp; &nbsp;
            <input type="button" class="icon_button icon-db_backup" name="<?php _e('Backup');?>" value="<?php _e('Backup');?>" onClick="backupDatabase();"/>
        </p>
        <hr />
        <p>
            <?php _e("Select Excel file to retrieve round result data from");?><br />
            <?php _e("Press import to start, or cancel to abort import"); ?>
            <br />&nbsp;<br />
            <input type="file" name="import-excel" value="" id="import-excel-fileSelect"
                   class="icon_button icon-search"
                   accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" onchange="read_excelFile(this)">
            <br />
            <input id="import-excelData" type="hidden" name="excelData" value="">

            <!--
            La importacion de resultados no tiene opciones:
            - En modo ciego solo actualiza resultados si la licencia existe y coincide
              * en el caso de pruebas RFEC en que la misma licencia puede pertenecer a varios perros
                se intenta buscar tambien del nombre.
            - En modo interactivo, los campos sin licencia del excel tambien se ignoran, pero en caso de
              no encontrar licencia o multiples perros con misma licencia, se le pregunta al usuario
            -->
            <span id="import_excelBlindCheck"> <!-- modo blind (no interactivo -->
                <br />
                <label for="import-excelBlindMode"><?php _e("Blind (non-interactive) mode");?></label>
                <input id="import-excelBlindMode" type="checkbox" name="excelBlindMode" value="1"/>
                <br />
            </span>
            <!-- opciones para el modo blind. En la importacion de resultados no se usa, por lo que lo ponemos oculto-->
            <span style="display:none">
				<input id="import-excelPrefDB"   type="radio" name="excelPreference" value="1"/>
				<input id="import-excelPrefFile" type="radio" name="excelPreference" value="0" checked="checked"/>
				<input id="import-excelUpperCase" type="radio" name="excelUpperCase" value="1" checked="checked"/>
				<input id="import-excelLeave" type="radio" name="excelUpperCase" value="0"/>
				<input id="import-excelEmptyIgnore"   type="radio" name="excelEmpty" value="0" checked="checked"/>
				<input id="import-excelEmptyUse" type="radio" name="excelEmpty" value="1"/>
			</span>
            <span id="import-excelBlindOptions">
				<br/><strong><?php _e("Excel import options");?>:</strong> <br/>
                <label for="import-excelParseCourseData"><?php _e("Also read (if available) course data");?></label>
                <input id="import-excelParseCourseData"  type=checkbox name="excelParseCourseData" value="1" checked="checked"/>
                <br/>
                <label for="import-excelAllowNoLicense"><?php _e("Try to deal entry when no license provided");?></label>
                <input id="import-excelAllowNoLicense" type="checkbox" name="excelAllowNoLicense" value="1" checked="checked"/>
            </span>
            <br />
        </p>
    </form>
    <p>
        <span style="float:left"><?php _e('Import status'); ?>:	</span>
        <span id="import-excel-progressbar" style="float:right;text-align:center;"></span>
    </p>
</div>


<script type="text/javascript">

    $('#import-excel-progressbar').progressbar({
        width: '70%',
        value: 0,
        text: '{value}'
    });

    addTooltip($('#import-excelBlindMode'),'<?php _e("Assume no coherency errors with current database data"); ?>');
</script>