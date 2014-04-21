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

# output
set title 'Bevölkerungsentwicklung im Markt Pressig'
unset key
set style fill transparent solid 0.3
set grid

set xdata time
set xlabel 'Jahr'
set xrange ['01.01.1840':'31.12.2012']
# Jahreszahl alle 10 Jahre (Erhoehung in 0.1 Sekunden)
# Der Zahlenwert entspricht einem Jahr mit 365,25 Tagen
set xtics 315576000
set mxtics 10
set format x '%Y'

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':]

set terminal svg size 800,400 font 'Arial,10'
set output 'Markt_Pressig_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:($2) with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:($2) with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
	# Daten zum Teil aus https://www.statistikdaten.bayern.de/genesis/
	01.12.1840 2031
	01.12.1871 2436
	01.12.1900 2804
	16.06.1925 3991
	17.05.1939 4098
	13.09.1950 5553
	31.12.1960 5031
	06.06.1961 5035
	27.05.1970 5059
	31.12.1970 5054
	31.12.1980 4564
	25.05.1987 4498
	31.12.1990 4505
	31.12.2000 4379
	31.12.2002 4350
	31.12.2003 4313
	31.12.2004 4322
	31.12.2005 4284
	31.12.2006 4225
	31.12.2007 4194
	31.12.2008 4190
	31.12.2009 4155
	31.12.2010 4123
	31.12.2011 3998  # Fortschreibung Zensus 2011 laut https://www.statistikdaten.bayern.de/genesis/
	31.12.2012 3974
EOF
	# Daten zu  Teil aus https://www.statistikdaten.bayern.de/genesis/
	01.12.1840 2031
	01.12.1871 2436
	01.12.1900 2804
	16.06.1925 3991
	17.05.1939 4098
	13.09.1950 5553
	31.12.1960 5031
	06.06.1961 5035
	27.05.1970 5059
	31.12.1970 5054
	31.12.1980 4564
	25.05.1987 4498
	31.12.1990 4505
	31.12.2000 4379
	31.12.2002 4350
	31.12.2003 4313
	31.12.2004 4322
	31.12.2005 4284
	31.12.2006 4225
	31.12.2007 4194
	31.12.2008 4190
	31.12.2009 4155
	31.12.2010 4123
	31.12.2011 3998  # Fortschreibung Zensus 2011 laut https://www.statistikdaten.bayern.de/genesis/
	31.12.2012 3974
EOF
