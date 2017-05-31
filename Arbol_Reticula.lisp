(setq arbol 
	'("reticula"
		("semestreuno"
			("fundamentosinvestigacion"
				("rosana" "si") 
				("claudia" "no")) 
			("tallerdmon" 
				("guadalupe" "si") 
				("Lourdes" "no")) 
			("calculodiferencial" 
				("mariana" "si") 
				("mario" "no")) 
			("fundprogramacion" 
				("karina" "si") 
				("pedro" "no")) 
			("matediscretas" 
				("bogard" "si") 
				("juan" "no")) 
			("talleretica" 
				("lourdes" "si") 
				("adriana" "no"))) 
		("semestredos" 
			("tallerinvestigacionuno" 
				("claudia" "si") 
				("ruth" "no")) 
			("contabilidad" 
				("heidy" "si") 
				("jessica" "no")) 
			("desarrollosustentable" 
				("margarita" "si") 
				("gabriela" "no")) 
			("algebrelineal" 
				("rogelio" "si") 
				("jesus" "no")) 
			("calculointegral" 
				("jose" "si") 
				("mariana" "no")) 
			("progorientadaobjetos" 
				("alejandra" "si") 
				("luz" "no"))) 
		("semestretres" 
			("culturaempresarial" 
				("marvelis" "si") 
				("vanessa" "no")) 
			("estructuradatos" 
				("claudia" "si") 
				("elena" "no")) 
			("calculovectorial" 
				("jesus" "si") 
				("mariana" "no")) 
			("probabilidadestadistica" 
				("xochitl" "si") 
				("manuel" "no")) 
			("sistemasoperaticos" 
				("erasmo" "si") 
				("bertha" "no")) 
			("quimica" 
				("miguel" "si") 
				("raul" "no"))) 
		("semestrecuatro" 
			("metodosnumericos" 
				("victor" "si") 
				("david" "no")) 
			("fisica" 
				("eugenia" "si") 
				("fernando" "no")) 
			("topicosavansadosprogramacion" 
				("concepcion" "si") 
				("diana" "no")) 
			("ecuacionesdiferenciales" 
				("manuel" "si") 
				("cesar" "no")) 
			("tallersistemasoperativos" 
				("rogelio" "si") 
				("juan" "no")) 
			("fundamentosbasedatos" 
				("hector" "si") 
				("adolfo" "no"))) 
		("semestrecinco" 
			("fundamentosingenieriasoftware" 
				("reinaldo" "si") 
				("rogelio" "no")) 
			("investigacionoperaciones" 
				("diego" "si") 
				("angel" "no")) 
			("tallerbasedatos" 
				("margarita" "si") 
				("clara" "no")) 
			("fundamentostelecomunicaciones" 
				("alfonso" "si") 
				("ricardo" "no")) 
			("graficacion" 
				("arnulfo" "si") 
				("daniel" "no")) 
			("principioselectricosaplicaciones" 
				("alejandro" "si") 
				("sergio" "no"))) 
		("semestreseis" 
			("ingenieriasoftware" 
				("resffa" "si") 
				("juliana" "no")) 
			("redescomputadoras" 
				("rene" "si") 
				("arturo" "no")) 
			("lenguajesautomatas" 
				("erasmo" "si") 
				("aurora" "no")) 
			("arquitecturacomputadoras" 
				("miguel" "si") 
				("magdaleno" "no")) 
			("admonbasedatos" 
				("gustavo" "si") 
				("pedro" "no"))
			("simulacion" 
				("ignacio" "si") 
				("jorge" "no")))
		("semestresiete" 
			("lenguajesprogramacion" 
				("concepcion" "si") 
				("dolores" "no")) 
			("patronesdiseno" 
				("rene" "si")
				("mario" "no")) 
			("comutacionenrutamientoredes" 
				("loreto" "si") 
				("julio" "no")) 
			("lenguajesinterfaz" 
				("rene" "si") 
				("lorenzo" "no")) 
			("lenguajesautomatasdos" 
				("virgilio" "si") 
				("octavio" "no")) 
			("programacionweb" 
				("jorge" "si") 
				("luis" "no"))) 
		("semestreocho" 
			("admonredes" 
				("loreto" "si") 
				("juana" "no")) 
			("computacionnube" 
				("miguel" "si") 
				("benito" "no")) 
			("adas" 
				("diego" "si") 
				("andres" "no")) 
			("tallerinvestigaciondos" 
				("rene" "si") 
				("saul" "no")) 
			("proggramacionlogicafuncional" 
				("hector" "si") 
				("andrian" "no"))
			("sistemasprogramacion" 
				("alberto" "si") 
				("eduardo" "no")) 
			("serviciosocial" "si")) 
		("semestrenueve" 
			("inteligenciaartificial" 
				("arnulfo" "si") 
				("armando" "no")) 
			("optativa" 
				("fernando" "si") 
				("arturo" "no")) 
			("gestionproyectossoftware" 
				("luis" "si") 
				("joaquin" "no")) 
			("residencia" 
				("papeleo" "si") 
				("practicas" "no")))))
(write arbol)
(TERPRI)
(TERPRI)

(defun root(tree) (car tree))
(write (root arbol))
(TERPRI)
(TERPRI)

(defun sub-tree(tree attribute-value)  (assoc attribute-value (cdr tree) :test #'equalp))
(write (sub-tree arbol "semestreocho"))
(TERPRI)
(TERPRI)

(defun sub-tree1(tree attribute-value) (second (assoc attribute-value (cdr tree) :test #'equalp)))
(write (sub-tree1 arbol "semestrenueve"))
(TERPRI)
(TERPRI)

(defun leaf(tree) (atom tree))
(write (leaf arbol))
(TERPRI)
(TERPRI)

(defun print_Hole_branch(tree leaf_name) 
	((if (leaf tree)
		((if (equalp leaf_name tree)
			(
				(write tree)
				(return T)
			)
			(
				(return nil)
			))
		(if (print_Hole_branch((cdr tree) leaf_name))
			((write car arbol)
				(return T))
			(return nil)
		))
	)))
(print_Hole_branch arbol "papeleo")