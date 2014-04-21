#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

set title 'Bevölkerungsentwicklung in Würzburg nach jeweiligem Gebietsstand' font 'Arial,14'
unset key
set style fill transparent solid 0.3
set grid xtics ytics mytics

set xlabel 'Jahr' font 'Arial,14'
set xrange[1800:2012]
# Jahreszahl alle 10 Jahre
set xtics 10
# nochmal unterteilen
set mxtics 10

set ylabel 'Einwohnerzahl' font 'Arial,14'
# Beschriftungsintervall
set ytics 20000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'140000']


set terminal svg size 800,400 font 'Arial,10'
set output 'Wuerzburg_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:2 with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:2 with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
# Datenquelle: http://de.wikipedia.org/wiki/Würzburg
	1200 5000
	1512 5365
	1571 8590
	1621 9782
	1703 13883
	1787 18070
	1813 19925
	1830 21672
	1846 22650
	1852 29848
	1855 32598
	1861 36119
	1864 41575
	1867 42185
	1871 40005
	1875 44975
	1880 51014
	1885 55010
	1890 61039
	1895 68747
	1900 75499
	1905 80327
	1910 84496
	1916 71044
	1917 70923
	1919 86571
	1925 89910
	1933 101003
	1939 107515
	1945 52999
	1946 55604
	1950 78443
	1956 102950
	1961 116883
	1965 122067
	1970 117147
	1975 112584
	1980 128652
	1985 127997
	1987 123378
	1990 127777
	1995 127295
	2000 127966
	2002 131582
	2005 129628
	2006 131320
	2007 132354
	2008 132108
	2010 133799
	2011 124297
	2012 124577
EOF
# Datenquelle: http://de.wikipedia.org/wiki/Würzburg
	1200 5000
	1512 5365
	1571 8590
	1621 9782
	1703 13883
	1787 18070
	1813 19925
	1830 21672
	1846 22650
	1852 29848
	1855 32598
	1861 36119
	1864 41575
	1867 42185
	1871 40005
	1875 44975
	1880 51014
	1885 55010
	1890 61039
	1895 68747
	1900 75499
	1905 80327
	1910 84496
	1916 71044
	1917 70923
	1919 86571
	1925 89910
	1933 101003
	1939 107515
	1945 52999
	1946 55604
	1950 78443
	1956 102950
	1961 116883
	1965 122067
	1970 117147
	1975 112584
	1980 128652
	1985 127997
	1987 123378
	1990 127777
	1995 127295
	2000 127966
	2002 131582
	2005 129628
	2006 131320
	2007 132354
	2008 132108
	2010 133799
	2011 124297
	2012 124577
EOF
