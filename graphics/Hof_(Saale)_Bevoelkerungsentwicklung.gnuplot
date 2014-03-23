#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

set title 'Bevölkerungsentwicklung in der Stadt Hof'
unset key
set style fill transparent solid 0.3
set grid

set xlabel 'Jahr'
set xrange [1818:2012]
# Jahreszahl alle 10 Jahre
set xtics 10
# nochmal unterteilen
set mxtics 10

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 10000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'65000']


set terminal svg size 800,400 font 'Arial,11'
set output 'Hof_(Saale)_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:2 with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:2 with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
# Datenquelle: https://de.wikipedia.org/wiki/Hof_(Saale)
	1818 4667
	1840 7985
	1880 21000
	1900 32781
	1920 40785
	1939 44878
	1945 55405
	1950 61033
	1955 58005
	1960 58595
	1961 57129
	1965 55810
	1970 54454
	1975 54644
	1980 53180
	1985 51035
	1988 50938
	1989 52319
	1990 52913
	1995 52590
	2000 50741
	2004 49163
	2006 48124
	2007 47744
	2009 46779
	2010 46286
	2011 45943
	2012 44461
EOF
	1818 4667
	1840 7985
	1880 21000
	1900 32781
	1920 40785
	1939 44878
	1945 55405
	1950 61033
	1955 58005
	1960 58595
	1961 57129
	1965 55810
	1970 54454
	1975 54644
	1980 53180
	1985 51035
	1988 50938
	1989 52319
	1990 52913
	1995 52590
	2000 50741
	2004 49163
	2006 48124
	2007 47744
	2009 46779
	2010 46286
	2011 45943
	2012 44461
EOF
