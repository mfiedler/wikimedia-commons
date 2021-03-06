#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Graphik nach "Bayerisches Landesamt fuer Statistik: Statistik kommunal 2012 -
# Eine Auswahl wichtiger statistischer Daten fuer den Landkreis Bayreuth.",
# https://www.statistik.bayern.de/statistikkommunal/09472.pdf
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

# input
set timefmt "%d.%m.%Y"
set datafile separator ";"

# output
set title 'Bevölkerungsentwicklung im Landkreis Bayreuth'
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
set yrange ['0':'120000']
set format y '%.0f'


set terminal svg size 800,400 font 'Arial,10'
set output 'Landkreis_Bayreuth_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:($2) with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:($2) with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
	01.12.1840;70548
	01.12.1871;72801
	01.12.1900;68035
	16.06.1925;70356
	17.05.1939;71380
	13.09.1950;101092
	06.06.1961;92733
	27.05.1970;97104
	25.05.1987;96772
	31.12.2002;109302
	31.12.2003;109404
	31.12.2004;109219
	31.12.2005;108724
	31.12.2006;108256
	31.12.2007;107649
	31.12.2008;106952
	31.12.2009;106488
	31.12.2010;106102
	31.12.2011;105740
EOF
	01.12.1840;70548
	01.12.1871;72801
	01.12.1900;68035
	16.06.1925;70356
	17.05.1939;71380
	13.09.1950;101092
	06.06.1961;92733
	27.05.1970;97104
	25.05.1987;96772
	31.12.2002;109302
	31.12.2003;109404
	31.12.2004;109219
	31.12.2005;108724
	31.12.2006;108256
	31.12.2007;107649
	31.12.2008;106952
	31.12.2009;106488
	31.12.2010;106102
	31.12.2011;105740
EOF
