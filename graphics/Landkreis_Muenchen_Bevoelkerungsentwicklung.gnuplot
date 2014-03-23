#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

set title 'Bevölkerungsentwicklung im Landkreis München'
unset key
set style fill transparent solid 0.3
set grid

set xlabel 'Jahr'
set xrange [1840:2012]
# Jahreszahl alle 10 Jahre
set xtics 10
# nochmal unterteilen
set mxtics 10

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 25000
# weitere Unterteilung ohne Beschriftung
set mytics 5
set yrange ['0':'350000']


set terminal svg size 800,400 font 'Arial,10'
set output 'Landkreis_Muenchen_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:2 with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:2 with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
# Datenquelle: http://de.wikipedia.org/wiki/Landkreis_München
	1840 12393
	1900 20521
	1939 59377
	1950 96475
	1961 123369
	1970 168336
	1987 249784
	1995 279007
	2000 295247
	2005 309080
	2008 317543
	2012 325744
EOF
	1840 12393
	1900 20521
	1939 59377
	1950 96475
	1961 123369
	1970 168336
	1987 249784
	1995 279007
	2000 295247
	2005 309080
	2008 317543
	2012 325744
EOF
