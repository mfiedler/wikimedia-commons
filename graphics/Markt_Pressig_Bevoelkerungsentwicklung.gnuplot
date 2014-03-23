#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Graphik nach "Bayerisches Landesamt fuer Statistik: Statistik kommunal 2012 -
# Eine Auswahl wichtiger statistischer Daten fuer den Markt Pressig.",
# https://www.statistik.bayern.de/statistikkommunal/09476164.pdf
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

# input
set timefmt "%d.%m.%Y"
set datafile separator ";"

# output
set title 'Bevölkerungsentwicklung im Markt Pressig'
unset key
set style fill transparent solid 0.3
set grid

set xdata time
set xlabel 'Jahr'
set xrange ['01.12.1840':'31.12.2015']
# Jahreszahl alle 10 Jahre (Beginn,Erhoehung in 10 Sekunden,Ende)
# Der Zahlenwert entspricht einem Jahr mit 365,25 Tagen
set xtics '01.12.1840',315576000,'31.12.2015'
# Zehnjahresintervall in 9 Intervalle unterteilt (jedes Jahr eine Markierung)
set mxtics 10
set format x '%Y'

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 1000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'6000']
set format y '%.0f'


set terminal svg size 800,400 font 'Arial,10'
set output 'Markt_Pressig_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:($2) with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:($2) with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
	01.12.1840;2031
	01.12.1871;2436
	01.12.1900;2804
	16.06.1925;3991
	17.05.1939;4098
	13.09.1950;5553
	06.06.1961;5035
	27.05.1970;5059
	25.05.1987;4498
	31.12.2002;4350
	31.12.2003;4313
	31.12.2004;4322
	31.12.2005;4284
	31.12.2006;4225
	31.12.2007;4194
	31.12.2008;4190
	31.12.2009;4155
	31.12.2010;4123
	31.12.2011;4084
EOF
	01.12.1840;2031
	01.12.1871;2436
	01.12.1900;2804
	16.06.1925;3991
	17.05.1939;4098
	13.09.1950;5553
	06.06.1961;5035
	27.05.1970;5059
	25.05.1987;4498
	31.12.2002;4350
	31.12.2003;4313
	31.12.2004;4322
	31.12.2005;4284
	31.12.2006;4225
	31.12.2007;4194
	31.12.2008;4190
	31.12.2009;4155
	31.12.2010;4123
	31.12.2011;4084
EOF
