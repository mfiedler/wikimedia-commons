#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Graphik nach "Bayerisches Landesamt fuer Statistik: Statistik kommunal 2012 -
# Eine Auswahl wichtiger statistischer Daten fuer den Landkreis Kronach.",
# http://www.statistik.bayern.de/statistikkommunal/09476.pdf
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

# input
set timefmt "%d.%m.%Y"

# output
set title 'Bevölkerungsentwicklung im Landkreis Kronach'
unset key
set style fill transparent solid 0.3
set grid

set xdata time
set xlabel 'Jahr'
# Jahreszahl alle 10 Jahre (Erhoehung in 0.1 Sekunden)
# Der Zahlenwert entspricht einem Jahr mit 365,25 Tagen
set xtics 315576000
set xrange ['01.01.1840':'31.12.2012']
# jedes Jahr eine Markierung)
set mxtics 10
set format x '%Y'

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':]


set terminal svg size 800,400 font 'Arial,10'
set output 'Landkreis_Kronach_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:($2) with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:($2) with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
	# Daten zum Teil aus https://www.statistikdaten.bayern.de/genesis/
	01.12.1840 40458
	01.12.1871 46943
	01.12.1900 49409
	16.06.1925 59371
	17.05.1939 62511
	13.09.1950 82002
	31.12.1960 79136
	06.06.1961 79501
	27.05.1970 80716
	31.12.1970 80615
	31.12.1980 76405
	25.05.1987 75353
	31.12.1990 76670
	31.12.2000 75591
	31.12.2002 75038
	31.12.2003 74582
	31.12.2004 74275
	31.12.2005 73678
	31.12.2006 72909
	31.12.2007 72289
	31.12.2008 71609
	31.12.2009 70941
	31.12.2010 70106
	31.12.2011 69599	# Fortschreibung des Zensus 2011 laut https://www.statistikdaten.bayern.de/genesis/
	31.12.2012 69095
EOF
	# Daten zu  Teil aus https://www.statistikdaten.bayern.de/genesis/
	01.12.1840 40458
	01.12.1871 46943
	01.12.1900 49409
	16.06.1925 59371
	17.05.1939 62511
	13.09.1950 82002
	31.12.1960 79136
	06.06.1961 79501
	27.05.1970 80716
	31.12.1970 80615
	31.12.1980 76405
	25.05.1987 75353
	31.12.1990 76670
	31.12.2000 75591
	31.12.2002 75038
	31.12.2003 74582
	31.12.2004 74275
	31.12.2005 73678
	31.12.2006 72909
	31.12.2007 72289
	31.12.2008 71609
	31.12.2009 70941
	31.12.2010 70106
	31.12.2011 69599	# Fortschreibung des Zensus 2011 laut https://www.statistikdaten.bayern.de/genesis/
	31.12.2012 69095
EOF
