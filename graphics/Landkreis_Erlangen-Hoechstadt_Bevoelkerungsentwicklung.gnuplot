#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Graphik nach "Bayerisches Landesamt fuer Statistik: Statistik kommunal 2012 -
# Eine Auswahl wichtiger statistischer Daten fuer den Landkreis Erlangen-Hoechstadt.",
# https://www.statistik.bayern.de/statistikkommunal/09572.pdf
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

# input
set timefmt "%d.%m.%Y"
set datafile separator ";"

# output
set title 'Bevölkerungsentwicklung im Landkreis Erlangen-Höchstadt'
unset key
set style fill transparent solid 0.3
set grid

set xdata time
set xlabel 'Jahr'
set xrange ['01.12.1840':'31.12.2015']
# Jahreszahl alle 10 Jahre (Beginn,Erhoehung in Sekunden,Ende)
# Der Zahlenwert entspricht 10 Jahren zu 365,25 Tagen
set xtics '01.12.1840',315576000,'31.12.2015'
# zusaetzliche jahrweise Unterteilung
set mxtics 10
set format x '%Y'

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 10000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'140000']
set format y '%.0f'


set terminal svg size 800,400 font 'Arial,10'
set output 'Landkreis_Erlangen-Hoechstadt_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:($2) with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:($2) with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
	01.12.1840;32639
	01.12.1871;32342
	01.12.1900;31729
	16.06.1925;35029
	17.05.1939;39867
	13.09.1950;59495
	06.06.1961;67453
	27.05.1970;79752
	25.05.1987;106113
	31.12.2002;130455
	31.12.2003;130660
	31.12.2004;130652
	31.12.2005;130489
	31.12.2006;130788
	31.12.2007;130873
	31.12.2008;131097
	31.12.2009;131059
	31.12.2010;131448
	31.12.2011;132049
EOF
	01.12.1840;32639
	01.12.1871;32342
	01.12.1900;31729
	16.06.1925;35029
	17.05.1939;39867
	13.09.1950;59495
	06.06.1961;67453
	27.05.1970;79752
	25.05.1987;106113
	31.12.2002;130455
	31.12.2003;130660
	31.12.2004;130652
	31.12.2005;130489
	31.12.2006;130788
	31.12.2007;130873
	31.12.2008;131097
	31.12.2009;131059
	31.12.2010;131448
	31.12.2011;132049
EOF
