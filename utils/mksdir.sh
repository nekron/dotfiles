if (($# == 2))
then
	mkdir "Season $1"
	cd "Season $1"
	for ((i=1 ; i<=$2; i++))
	do
		if (("$1" < 10))
		then
			if (("$i" < 10))
			then
				mkdir "S0$1E0$i"
			else
				mkdir "S0$1E$i"
			fi
		else
			if (("$i" < 10))
			then
				mkdir "S$1E0$i"
			else
				mkdir "S$1E$i"
			fi
		fi	
	done
else
	if (($# == 3))
	then
		mkdir "Season $1"
		cd "Season $1"
		for ((i=$2 ; i<=$3; i++))
		do
			if (("$1" < 10))
			then
				if (("$i" < 10))
				then
					mkdir "S0$1E0$i"
				else
					mkdir "S0$1E$i"
				fi
			else
				if (("$i" < 10))
				then
					mkdir "S$1E0$i"
				else
					mkdir "S$1E$i"
				fi
			fi	
		done
	else
		echo "Error en la cantidad de parámetros ingresados.
Se esperan 2 o 3 parámetros:
./seasonDirs.sh <número de temporada> [<número de capítulo inicial>]<cantidad de capítulos de la temporada>

Ejemplo: 
./mksdir.sh 2 25

Generará los directorios para la temporada 2 episodios 1 al 25

./mksdir.sh 2 7 25

Generará los directorios para la temporada 2 episodios 7 al 25"
	fi
fi
