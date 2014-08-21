<?php

require_once("DBObject.php");

class Mangas extends DBObject {
	protected $jornada;
	
	/* copia de la estructura de la base de datos, para ahorrar consultas */
	public static $tipo_manga= array(
			array ( 0,'',''),
			array( 1, 'Manga sin tipo definido', '-'),
			array( 2, 'Ronda de Pre-Agility', 'P.A.'),
			array( 3, 'Agility Grado I Manga 1', 'GI'),
		 	array( 4, 'Agility Grado I Manga 2', 'GI'),
			array( 5, 'Agility Grado II', 'GII'),
			array( 6, 'Agility Grado III', 'GIII'),
			array( 7, 'Agility Abierta (Open)', '-'),
			array( 8, 'Agility Equipos (3 mejores)', '-'),
			array( 9, 'Agility Equipos (Conjunta)', '-'),
			array( 10,'Jumping Grado II', 'GII'),
			array( 11,'Jumping Grado III', 'GIII'),
			array( 12,'Jumping Abierta (Open)', '-'),
			array( 13,'Jumping por Equipos (3 mejores)', '-'),
			array( 14,'Jumping por Equipos (Conjunta)', '-'),
			array( 15,'Ronda K.O.', '-'),
			array( 16,'Ronda de Exhibición', '-')	
	);
	
	/**
	 * Constructor
	 * @param {string} $file caller for this object
	 * @param {string} $jornada jornada ID
	 * @throws Exception if cannot contact database or invalid jornada ID
	 */
	function __construct($file,$jornada) {
		parent::__construct($file);
		if ($jornada<=0) {
			$this->errormsg="Manga::Construct invalid jornada ID";
			throw new Exception($this->errormsg);
		}
		$this->jornada=$jornada;
	}
	
	/**
	 * 
	 * @param {integer} $tipo ID del tipo manga (tabla 'Tipo_Manga')
	 * @param {string} $grado valor asociado al grado de la manga de la ID dada
	 * @return {string} empty on success, else error 
	 */
	function insert($tipo,$grado) {
		$this->myLogger->enter();
		$j=$this->jornada;
		// si la manga existe no hacer nada; si no existe crear manga
		$res=$this->__selectObject(
				"count(*) AS Result", 
				"Mangas", 
				"( Jornada=$j ) AND  ( Tipo=$tipo ) AND ( Grado='$grado' )"
		);
		if ($res->Result>0){
			$this->myLogger->info("Jornada:".$this->jornada." Manga: $tipo already exists. exit OK");
			return "";
		}
		$str="INSERT INTO Mangas ( Jornada , Tipo, Grado ) VALUES ($j,$tipo,'$grado')";
		$rs=$this->query($str);
		if (!$rs) return $this->error($this->conn->error); 
		$this->myLogger->leave();
		return "";
	}
	
	function update($mangaid) {
		$this->myLogger->enter();
		if ($mangaid <=0) return $this->error("Invalid Manga ID"); 
		// preparamos la query SQL
		$sql= "UPDATE Mangas SET
 			Recorrido=? ,
			Dist_L=? , Obst_L=? , Dist_M=? , Obst_M=? , Dist_S=? , Obst_S=? ,
			TRS_L_Tipo=? , TRS_L_Factor=? , TRS_L_Unit=? , TRM_L_Tipo=? , TRM_L_Factor=? , TRM_L_Unit=? ,
			TRS_M_Tipo=? , TRS_M_Factor=? , TRS_M_Unit=? , TRM_M_Tipo=? , TRM_M_Factor=? , TRM_M_Unit=? ,
			TRS_S_Tipo=? , TRS_S_Factor=? , TRS_S_Unit=? , TRM_S_Tipo=? , TRM_S_Factor=? , TRM_S_Unit=? ,
			Juez1=? , Juez2=? ,
			Observaciones=?
			WHERE (ID=?)";
		
		$stmt=$this->conn->prepare($sql);
		if (!$stmt) return $this->error($this->conn->error); 
		$res=$stmt->bind_param(
				'iiiiiiiiisiisiisiisiisiissssi',
				$recorrido,
				$dist_l,		$obst_l,		$dist_m,		$obst_m,		$dist_s,		$obst_s, 	// distancias y obstaculos
				$trs_l_tipo,	$trs_l_factor,	$trs_l_unit,	$trm_l_tipo,	$trm_l_factor,	$trm_l_unit,// TRS y TRM Large
				$trs_m_tipo,	$trs_m_factor,	$trs_m_unit,	$trm_m_tipo,	$trm_m_factor,	$trm_m_unit,// TRS Y TRM Medium
				$trs_s_tipo,	$trs_s_factor,	$trs_s_unit,	$trm_s_tipo,	$trm_s_factor,	$trm_s_unit,// TRS y TRM Small
				$juez1, 		$juez2, 		$observaciones,	$id		
		);
		if (!$res) return $this->error($this->conn->error); 
		
		// retrieve http request variables
		/*
		 * ID		(PRIMARY KEY)
		* Jornada	(no debe ser modificada)
		* Tipo 	(no debe ser modificada)
		* Recorrido
		* Dist_L Obst_L Dist_M Obst_M Dist_S Obst_S
		* TRS_L_Tipo TRS_L_Factor TRS_L_Unit TRM_L_Tipo TRM_L_Factor TRM_L_Unit
		* TRS_M_Tipo TRS_M_Factor TRS_M_Unit TRM_M_Tipo TRM_M_Factor TRM_M_Unit
		* TRS_S_Tipo TRS_S_Factor TRS_S_Unit TRM_S_Tipo TRM_S_Factor TRM_S_Unit
		* Juez1 Juez2
		* Observaciones
		* Orden_Salida (se modifica en otro sitio)
		*/
		$id			= $mangaid;
		$recorrido	= http_request("Recorrido","i",0);(isset($_REQUEST['Recorrido']))?intval($_REQUEST['Recorrido']):0;
		// distancias
		$dist_l = http_request("Dist_L","i",0);
		$dist_m = http_request("Dist_M","i",0);
		$dist_s = http_request("Dist_S","i",0);
		// obstaculos
		$obst_l = http_request("Obst_L","i",0); 
		$obst_m = http_request("Obst_M","i",0);
		$obst_s = http_request("Obst_S","i",0);
		// tipo TRS
		$trs_l_tipo = http_request("TRS_L_Tipo","i",0);
		$trs_m_tipo = http_request("TRS_M_Tipo","i",0);
		$trs_s_tipo = http_request("TRS_S_Tipo","i",0);
		// tipo TRM
		$trm_l_tipo = http_request("TRM_L_Tipo","i",0);
		$trm_m_tipo = http_request("TRM_M_Tipo","i",0);
		$trm_s_tipo = http_request("TRM_S_Tipo","i",0);
		// factor TRS
		$trs_l_factor = http_request("TRS_L_Factor","i",0);
		$trs_m_factor = http_request("TRS_M_Factor","i",0);
		$trs_s_factor = http_request("TRS_S_Factor","i",0);
		// factor TRM
		$trm_l_factor = http_request("TRM_L_Factor","i",0);
		$trm_m_factor = http_request("TRM_M_Factor","i",0);
		$trm_s_factor = http_request("TRM_S_Factor","i",0);
		// Unidad TRS
		$trs_l_unit = http_request("TRS_L_Unit","s","s",false);
		$trs_m_unit = http_request("TRS_M_Unit","s","s",false);
		$trs_s_unit = http_request("TRS_S_Unit","s","s",false);
		// Unidad TRM
		$trm_l_unit = http_request("TRM_L_Unit","s","s",false);
		$trm_m_unit = http_request("TRM_M_Unit","s","s",false);
		$trm_s_unit = http_request("TRM_S_Unit","s","s",false);
		// Jueces y observaciones
		$juez1 = http_request("Juez1","s",null,false);
		$juez2 = http_request("Juez2","s",null,false);
		$observaciones = http_request("Observaciones","s",null,false);
		
		// ejecutamos el query
		// invocamos la orden SQL y devolvemos el resultado
		$res=$stmt->execute();
		if (!$res) return $this->error($this->conn->error); 
		$stmt->close();
		$this->myLogger->leave();
		return "";
	}
	
	/**
	 * Delete a Manga from jornada $this->jornada when tipo is $tipo
	 * @param {integer} tipo ID a sociado a tipo manga
	 * @return "" on success; null on error
	 */
	function delete($tipo) {
		$this->myLogger->enter();
		if ( ($tipo<=0) || ($tipo>16) ) return $this->error("Invalid value for 'Tipo'"); 
		// si la manga existe, borrarla; si no existe, no hacer nada
		$str="DELETE FROM Mangas WHERE ( Jornada = ".$this->jornada." ) AND  ( Tipo = ".$tipo." )";
		$rs=$this->query($str);
		if (!$rs) return $this->error($this->conn->error); 
		$this->myLogger->leave();
		return "";
	}
	
	/**
	 * recupera los datos de una manga determinada
	 * @param unknown $id id de la manga
	 * @return null on error, data on success
	 */
	function selectByID($id) {
		$this->myLogger->enter();
		if ($id<=0) return $this->error("Invalid Manga ID"); 
		// second query to retrieve $rows starting at $offset
		$str="SELECT * FROM Mangas WHERE ( ID = $id )";
		$rs=$this->query($str);
		if (!$rs) return $this->error($this->conn->error); 
		// retrieve result into an array
		if ($rs->num_rows==0) return $this->error("No manga(s) found"); 
		$result = $rs->fetch_object();  // should only be one element
		// disconnect from database
		$rs->free();
		$this->myLogger->leave();
		return $result;
	}
	
	/**
	 * Enumera las mangas de una jornada
	 * @return null on error, result on success
	 */
	function selectByJornada() {
		$this->myLogger->enter();
		$result=$this->__select(
			/* SELECT */"Mangas.ID AS ID, Mangas.Tipo AS Tipo, Mangas.Recorrido AS Recorrido,Tipo_Manga.Grado AS Grado, Tipo_Manga.Descripcion AS Descripcion",
			/* FROM */ "Mangas,Tipo_Manga",
			/* WHERE */ "( ( Jornada = {$this->jornada} ) AND ( Mangas.Tipo = Tipo_Manga.ID ) )",
			/* ORDER */ "Descripcion ASC",
			/* LIMIT */ ""
		);
		$this->myLogger->leave();
		return $result;
	}
	
	/**
	 * creacion / borrado de mangas asociadas a una jornada
	 * @param {integer} $id ID de jornada
	 * @param {integer} $grado1 la jornada tiene(1) o no (0) mangas de grado 1
	 * @param {integer} $grado2 la jornada tiene (1) o no (0) mangas de grado 2
	 * @param {integer} $grado3 la jornada tiene (1) o no (0) mangas de grado 3
	 * @param {integer} $open la jornada tiene (1) o no (0) una prueba abierta (Open)
	 * @param {integer} $equipos3 la jornada tiene (1) o no (0) una manga por equipos (3 de 4)
	 * @param {integer} $equipos4 la jornada tiene (1) o no (0) una manga por equipos (conjunta)
	 * @param {integer} $preagility la jornada tiene (1) o no (0) manga de preagility
	 * @param {integer} $ko la jornada contiene (1) o no (0) una prueba k0
	 * @param {integer} $exhibicion la jornada tiene (1) o no (0) mangas de exhibicion
	 * @param {integer} $otras la jornada contiene (1) o no (0) mangas no definidas
	 * // TODO: handle ko, exhibicion and otras
	 */
	function prepareMangas($id,$grado1,$grado2,$grado3,$open,$equipos3,$equipos4,$preagility,$ko,$exhibicion,$otras) {
		$this->myLogger->enter();

		/* 3, 'Agility Grado I Manga 1', 'GI' */
		/* 4, 'Agility Grado I Manga 2', 'GI' */
		if ($grado1) { 	$this->insert(3,'GI'); $this->insert(4,'GI');		}
		else { $this->delete(3);	$this->delete(4); }

		/* 5, 'Agility Grado II', 'GII' */
		/* 10,'Jumping Grado II', 'GII' */
		if ($grado2) { $this->insert(5,'GII'); $this->insert(10,'GII'); }
		else { $this->delete(5); $this->delete(10); }

		/* 6, 'Agility Grado III', 'GIII' */
		/* 11,'Jumping Grado III', 'GIII' */
		if ($grado3) { $this->insert(6,'GIII'); $this->insert(11,'GIII'); }
		else { $this->delete(6);	$this->delete(11); }

		/* 7, 'Agility Abierta (Open)', '-' */
		/* 12,'Jumping Abierta (Open)', '-' */
		if ($open) { $this->insert(7,'-'); $this->insert(12,'-'); }
		else { $this->delete(7);	$this->delete(12); }

		/* 8, 'Agility Equipos (3 mejores)', '-' */
		/* 13,'Jumping por Equipos (3 mejores)', '-' */
		if ($equipos3) {	$this->insert(8,'-');	$this->insert(13,'-');	}
		else { $this->delete(8);	$this->delete(13);	}

		/* 9, 'Agility Equipos (Conjunta)', '-' */
		/* 14,'Jumping por Equipos (Conjunta)', '-' */
		if ($equipos4) {	$this->insert(9,'-');	$this->insert(14,'-');	}
		else { $this->delete(9);	$this->delete(14);	}

		/* 2, 'Ronda de Pre-Agility', 'P.A.' */
		if ($preagility) { $this->insert(2,'P.A.'); }
		else { $this->delete(2); }

		/* 16,'Ronda de Exhibición', '-' */
		if ($exhibicion) { $this->insert(16,'-');}
		else { $this->delete(16); }

		/* 15,'Ronda K.O.', '-' */
		// TODO: las mangas KO hay que crearlas dinamicamente en funcion del numero de participantes
		
		// TODO: Decidir que se hace con las mangas 'otras'
		/*  0,'','' */
		/* 1, 'Manga sin tipo definido', '-' */
		
		$this->myLogger->leave();
	}
}

?>