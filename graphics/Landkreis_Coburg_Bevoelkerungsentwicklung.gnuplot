#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Graphik nach "Bayerisches Landesamt fuer Statistik: Statistik kommunal 2012 -
# Eine Auswahl wichtiger statistischer Daten fuer den Landkreis Coburg.",
# https://www.statistik.bayern.de/statistikkommunal/09473.pdf
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

# output
set title 'Bevölkerungsentwicklung im Landkreis Coburg'
unset key
set style fill transparent solid 0.3
set grid

set xdata time
set timefmt "%d.%m.%Y"
set xlabel 'Jahr'
# Jahreszahl alle 10 Jahre (Erhoehung in 0.1 Sekunden)
# Der Zahlenwert entspricht einem Jahr mit 365,25 Tagen
set xtics 315576000
set xrange ['01.01.1840':'31.12.2012']
set mxtics 10
set format x '%Y'

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 10000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':]

set terminal svg size 800,400 font 'Arial,10'
set output 'Landkreis_Coburg_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:($2) with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:($2) with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
	# zusaetzliche Datenquelle: https://www.statistikdaten.bayern.de/genesis/
	01.12.1840 33487
	01.12.1871 39151
	01.12.1900 45169
	16.06.1925 51298
	17.05.1939 53336
	13.09.1950 79307
	31.12.1960 79987
	06.06.1961 80676
	27.05.1970 85161
	31.12.1970 85294
	31.12.1980 82901
	25.05.1987 82033
	31.12.1990 85833
	31.12.2000 92243
	31.12.2002 92205
	31.12.2003 92053
	31.12.2004 91785
	31.12.2005 91325
	31.12.2006 90786
	31.12.2007 90244
	31.12.2008 89503
	31.12.2009 88943
	31.12.2010 88193
	31.12.2011 87744
	31.12.2012 87006
EOF
	01.12.1840 33487
	01.12.1871 39151
	01.12.1900 45169
	16.06.1925 51298
	17.05.1939 53336
	13.09.1950 79307
	31.12.1960 79987
	06.06.1961 80676
	27.05.1970 85161
	31.12.1970 85294
	31.12.1980 82901
	25.05.1987 82033
	31.12.1990 85833
	31.12.2000 92243
	31.12.2002 92205
	31.12.2003 92053
	31.12.2004 91785
	31.12.2005 91325
	31.12.2006 90786
	31.12.2007 90244
	31.12.2008 89503
	31.12.2009 88943
	31.12.2010 88193
	31.12.2011 87744
	31.12.2012 87006
EOF
