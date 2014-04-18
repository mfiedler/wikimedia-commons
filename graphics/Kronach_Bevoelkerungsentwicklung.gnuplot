#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Graphik nach "Bayerisches Landesamt fuer Statistik: Statistik kommunal 2012 -
# Eine Auswahl wichtiger statistischer Daten fuer die Stadt Kronach.",
# http://www.statistik.bayern.de/statistikkommunal/09476145.pdf
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

# input
set timefmt "%d.%m.%Y"
set datafile separator ";"

# output
set title 'Bevölkerungsentwicklung in Kronach'
unset key
set style fill transparent solid 0.3
set grid

set xdata time
set xlabel 'Jahr'
set xrange ['01.12.1840':'31.12.2012']
# Jahreszahl alle 10 Jahre (Beginn,Erhoehung in 0,1 Sekunden,Ende)
# Der Zahlenwert entspricht einem Jahr mit 365,25 Tagen
set xtics '31.12.1839',315576000,'31.12.2015'
# Zehnjahresintervall in 9 Intervalle unterteilt (jedes Jahr eine Markierung)
set mxtics 10
set format x '%Y'

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 2000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'20000']


set terminal svg size 800,400 font 'Arial,10'
set output 'Kronach_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:($2) with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:($2) with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
	01.12.1840;7528
	01.12.1871;8918
	01.12.1900;10178
	16.06.1925;12651
	17.05.1939;13239
	13.09.1950;17559
	06.06.1961;18456
	27.05.1970;18890
	25.05.1987;18401
	31.12.2002;18331
	31.12.2003;18289
	31.12.2004;18258
	31.12.2005;18028
	31.12.2006;17884
	31.12.2007;17739
	31.12.2008;17564
	31.12.2009;17437
	31.12.2010;17279
	31.12.2011;17201
	31.12.2012;16967
EOF
	01.12.1840;7528
	01.12.1871;8918
	01.12.1900;10178
	16.06.1925;12651
	17.05.1939;13239
	13.09.1950;17559
	06.06.1961;18456
	27.05.1970;18890
	25.05.1987;18401
	31.12.2002;18331
	31.12.2003;18289
	31.12.2004;18258
	31.12.2005;18028
	31.12.2006;17884
	31.12.2007;17739
	31.12.2008;17564
	31.12.2009;17437
	31.12.2010;17279
	31.12.2011;17201
	31.12.2012;16967
EOF
