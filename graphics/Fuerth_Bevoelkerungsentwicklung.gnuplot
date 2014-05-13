#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

set title 'Bevölkerungsentwicklung der Stadt Fürth (zum jeweiligen Gebietsstand)' font 'Arial,11'
unset key
set style fill transparent solid 0.3
set grid xtics ytics mytics

set xlabel 'Jahr' font 'Arial,11'
set xrange [1604:2013]
# Jahreszahl alle 10 Jahre
set xtics 10
# nochmal unterteilen
set mxtics 10

set ylabel 'Einwohnerzahl' font 'Arial,11'
# Beschriftungsintervall
set ytics 5000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':]


set terminal svg size 1500,800 font 'Arial,8'
set output 'Fuerth_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:2 with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:2 with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
# Datenquelle: http://de.wikipedia.org/wiki/Fürth
	1604 1600
	1648 800
	1700 6000
	1795 12000
	1809 12438
	1818 12700
	1830 13900
	1840 15100
	1852 16700
	1855 17341
	1858 18241
	1861 19100
	1864 21100
	1867 22500
	1871 24580
	1875 27360
	1880 31063
	1885 35455
	1890 43206
	1895 46726
	1900 54144
	1905 60635
	1910 66553
	1916 56967
	1917 57282
	1919 68162
	1925 73693
	1933 77135
	1939 82315
	1945 86515
	1946 95369
	1950 99890
	1956 98643
	1961 98332
	1965 96125
	1970 94774
	1975 101639
	1980 99088
	1985 97331
	1987 97480
	1990 103362
	1995 108418
	2000 110477
	2005 113459
	2006 113767
	2007 114130
	2008 113661
	2009 114044
	2010 114628
	2011 116317
	2012 118358
	2013 120000
EOF
	1604 1600
	1648 800
	1700 6000
	1795 12000
	1809 12438
	1818 12700
	1830 13900
	1840 15100
	1852 16700
	1855 17341
	1858 18241
	1861 19100
	1864 21100
	1867 22500
	1871 24580
	1875 27360
	1880 31063
	1885 35455
	1890 43206
	1895 46726
	1900 54144
	1905 60635
	1910 66553
	1916 56967
	1917 57282
	1919 68162
	1925 73693
	1933 77135
	1939 82315
	1945 86515
	1946 95369
	1950 99890
	1956 98643
	1961 98332
	1965 96125
	1970 94774
	1975 101639
	1980 99088
	1985 97331
	1987 97480
	1990 103362
	1995 108418
	2000 110477
	2005 113459
	2006 113767
	2007 114130
	2008 113661
	2009 114044
	2010 114628
	2011 116317
	2012 118358
	2013 120000
EOF
