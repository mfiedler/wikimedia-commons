#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Graphik nach "Bayerisches Landesamt fuer Statistik: Statistik kommunal 2012 -
# Eine Auswahl wichtiger statistischer Daten fuer den Landkreis Kulmbach.",
# https://www.statistik.bayern.de/statistikkommunal/09477.pdf
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

# input
set timefmt "%d.%m.%Y"
set datafile separator ";"

# output
set title 'Bevölkerungsentwicklung im Landkreis Kulmbach'
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
set mxtics 9
set format x '%Y'

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 10000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'100000']
set format y '%.0f'


set terminal svg size 800,400 font 'Arial,10'
set output 'Landkreis_Kulmbach_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:($2) with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:($2) with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
	01.12.1840;46596
	01.12.1871;52338
	01.12.1900;56322
	16.06.1925;57306
	17.05.1939;58973
	13.09.1950;85781
	06.06.1961;78450
	27.05.1970;78489
	25.05.1987;73055
	31.12.2002;78266
	31.12.2003;77940
	31.12.2004;77556
	31.12.2005;77141
	31.12.2006;76641
	31.12.2007;76153
	31.12.2008;75593
	31.12.2009;74967
	31.12.2010;74491
	31.12.2011;73926
EOF
	01.12.1840;46596
	01.12.1871;52338
	01.12.1900;56322
	16.06.1925;57306
	17.05.1939;58973
	13.09.1950;85781
	06.06.1961;78450
	27.05.1970;78489
	25.05.1987;73055
	31.12.2002;78266
	31.12.2003;77940
	31.12.2004;77556
	31.12.2005;77141
	31.12.2006;76641
	31.12.2007;76153
	31.12.2008;75593
	31.12.2009;74967
	31.12.2010;74491
	31.12.2011;73926
EOF
