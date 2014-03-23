#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

set title 'Bevölkerungsentwicklung in Bamberg' font 'Arial,14'
unset key
set style fill transparent solid 0.3
set grid xtics ytics mytics

set xlabel 'Jahr' font 'Arial,14'
set xrange [1599:2012]
# Jahreszahl alle 10 Jahre
set xtics 10
# nochmal unterteilen
set mxtics 10

set ylabel 'Einwohnerzahl' font 'Arial,14'
# Beschriftungsintervall
set ytics 10000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'80000']


set terminal svg size 1400,400 font 'Arial,10'
set output 'Bamberg_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:2 with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:2 with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
# Datenquelle: http://de.wikipedia.org/wiki/Bamberg
	1599 11500
	1618 12000
	1648 7000
	1795 16000
	1811 17095
	1830 18600
	1840 20900
	1852 20594
	1855 22391
	1858 23456
	1861 23500
	1864 25200
	1867 26100
	1871 25700
	1875 26951
	1880 29587
	1885 31500
	1890 35815
	1895 38940
	1900 41823
	1905 45483
	1910 48063
	1916 40344
	1917 41395
	1919 49179
	1925 50152
	1933 54161
	1939 59466
	1945 75193
	1946 74733
	1950 76180
	1956 75116
	1961 74115
	1965 72869
	1970 70581
	1975 74236
	1980 71928
	1985 69920
	1987 69100
	1990 70521
	1995 69652
	2000 69036
	2005 69934
	2006 69574
	2007 69884
	2008 69989
	2009 69827
	2010 70004
	2011 70084
	2012 70863
EOF
	1599 11500
	1618 12000
	1648 7000
	1795 16000
	1811 17095
	1830 18600
	1840 20900
	1852 20594
	1855 22391
	1858 23456
	1861 23500
	1864 25200
	1867 26100
	1871 25700
	1875 26951
	1880 29587
	1885 31500
	1890 35815
	1895 38940
	1900 41823
	1905 45483
	1910 48063
	1916 40344
	1917 41395
	1919 49179
	1925 50152
	1933 54161
	1939 59466
	1945 75193
	1946 74733
	1950 76180
	1956 75116
	1961 74115
	1965 72869
	1970 70581
	1975 74236
	1980 71928
	1985 69920
	1987 69100
	1990 70521
	1995 69652
	2000 69036
	2005 69934
	2006 69574
	2007 69884
	2008 69989
	2009 69827
	2010 70004
	2011 70084
	2012 70863
EOF
