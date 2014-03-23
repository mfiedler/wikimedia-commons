#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Graphik nach "Bayerisches Landesamt fuer Statistik: Statistik kommunal 2012 -
# Eine Auswahl wichtiger statistischer Daten fuer den Landkreis Bamberg.",
# https://www.statistik.bayern.de/statistikkommunal/09471.pdf
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

# input
set timefmt "%d.%m.%Y"
set datafile separator ";"

# output
set title 'Bevölkerungsentwicklung im Landkreis Bamberg'
unset key
set style fill transparent solid 0.3
set grid

set xdata time
set xlabel 'Jahr'
set xrange ['01.12.1840':'31.12.2015']
# Jahreszahl alle 10 Jahre (Beginn,Erhoehung in 0.1 Sekunden,Ende)
# Der Zahlenwert entspricht einem Jahr mit 365,25 Tagen
set xtics '01.12.1840',315576000,'31.12.2015'
# Zehnjahresintervall in 9 Intervalle unterteilt (jedes Jahr eine Markierung)
set mxtics 10
set format x '%Y'

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 10000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'160000']
set format y '%.0f'


set terminal svg size 800,400 font 'Arial,10'
set output 'Landkreis_Bamberg_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:($2) with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:($2) with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
	01.12.1840;63772
	01.12.1871;67706
	01.12.1900;65574
	16.06.1925;68145
	17.05.1939;70333
	13.09.1950;94751
	06.06.1961;95267
	27.05.1970;106658
	25.05.1987;119829
	31.12.2002;143877
	31.12.2003;144268
	31.12.2004;144831
	31.12.2005;144825
	31.12.2006;144993
	31.12.2007;144949
	31.12.2008;144524
	31.12.2009;144442
	31.12.2010;144211
	31.12.2011;144361
EOF
	01.12.1840;63772
	01.12.1871;67706
	01.12.1900;65574
	16.06.1925;68145
	17.05.1939;70333
	13.09.1950;94751
	06.06.1961;95267
	27.05.1970;106658
	25.05.1987;119829
	31.12.2002;143877
	31.12.2003;144268
	31.12.2004;144831
	31.12.2005;144825
	31.12.2006;144993
	31.12.2007;144949
	31.12.2008;144524
	31.12.2009;144442
	31.12.2010;144211
	31.12.2011;144361
EOF
