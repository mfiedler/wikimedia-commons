#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Graphik nach "Bayerisches Landesamt fuer Statistik: Statistik kommunal 2012 -
# Eine Auswahl wichtiger statistischer Daten fuer den Markt Kueps.",
# https://www.statistik.bayern.de/statistikkommunal/09476146.pdf
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

# output
set title 'Bevölkerungsentwicklung im Markt Küps'
unset key
set style fill transparent solid 0.3
set grid

set xdata time
set timefmt "%d.%m.%Y"
set xlabel 'Jahr'
# Jahreszahl alle 10 Jahre (Beginn,Erhoehung in 10 Sekunden,Ende)
# Der Zahlenwert entspricht einem Jahr mit 365,25 Tagen
set xtics '01.12.1840',315576000,'31.12.2012'
# Zehnjahresintervall in 9 Intervalle unterteilt (jedes Jahr eine Markierung)
set mxtics 10
set format x '%Y'

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 1000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':]

set terminal svg size 800,400 font 'Arial,10'
set output 'Markt_Kueps_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:($2) with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:($2) with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
	# zusaetzliche Datenquelle: https://www.statistikdaten.bayern.de/genesis/
	01.12.1840 3803
	01.12.1871 4180
	01.12.1900 4506
	16.06.1925 5539
	17.05.1939 5621
	13.09.1950 7777
	31.12.1960 7531
	06.06.1961 7475
	27.05.1970 7798
	31.12.1970 7778
	31.12.1980 7341
	25.05.1987 7125
	31.12.1990 7323
	31.12.2000 8270
	31.12.2002 8268
	31.12.2003 8275
	31.12.2004 8285
	31.12.2005 8270
	31.12.2006 8177
	31.12.2007 8080
	31.12.2008 8023
	31.12.2009 8004
	31.12.2010 7935
	31.12.2011 7924
	31.12.2012 7850
EOF
	01.12.1840 3803
	01.12.1871 4180
	01.12.1900 4506
	16.06.1925 5539
	17.05.1939 5621
	13.09.1950 7777
	31.12.1960 7531
	06.06.1961 7475
	27.05.1970 7798
	31.12.1970 7778
	31.12.1980 7341
	25.05.1987 7125
	31.12.1990 7323
	31.12.2000 8270
	31.12.2002 8268
	31.12.2003 8275
	31.12.2004 8285
	31.12.2005 8270
	31.12.2006 8177
	31.12.2007 8080
	31.12.2008 8023
	31.12.2009 8004
	31.12.2010 7935
	31.12.2011 7924
	31.12.2012 7850
EOF
