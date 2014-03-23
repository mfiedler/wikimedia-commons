#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Graphik nach den Daten von https://commons.wikimedia.org/wiki/File:Nuremberg_population.svg
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

# input
set timefmt "%d.%m.%Y"
set datafile separator ";"

# output
set title 'Bevölkerungsentwicklung von Nürnberg 1920‒1950'
unset key
set style fill transparent solid 0.3
set grid

set xdata time
set xlabel 'Jahr'
set xrange ['01.01.1920':'31.12.1951']
# Jahreszahl alle 10 Jahre (Beginn,Erhoehung in 0.1 Sekunden,Ende)
# Der Zahlenwert entspricht einem Jahr mit 365,25 Tagen
set xtics '01.01.1920',157788000,'13.09.1950'
# Zehnjahresintervall in 9 Intervalle unterteilt (jedes Jahr eine Markierung)
set mxtics 5
set format x '%Y'

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 50000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'500000']
set format y '%.0f'


set terminal svg size 500,400 font 'Arial,12'
set output 'Nuremberg_population_1920-1950.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:($2) with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:($2) with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
	08.10.1919;352675
	31.12.1920;364093
	16.06.1925;392494
	31.12.1930;416700
	16.06.1933;410438
	31.12.1935;407686
	17.05.1939;423383
	31.12.1940;429400
	30.04.1945;196270
	31.12.1945;286833
	29.10.1946;312338
	13.09.1950;362459
	31.12.1955;419013
EOF
	08.10.1919;352675
	31.12.1920;364093
	16.06.1925;392494
	31.12.1930;416700
	16.06.1933;410438
	31.12.1935;407686
	17.05.1939;423383
	31.12.1940;429400
	30.04.1945;196270
	31.12.1945;286833
	29.10.1946;312338
	13.09.1950;362459
	31.12.1955;419013
EOF
