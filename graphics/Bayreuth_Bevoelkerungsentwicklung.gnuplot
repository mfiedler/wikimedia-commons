#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

set title 'Bevölkerungsentwicklung in Bayreuth'
unset key
set style fill transparent solid 0.3
set grid xtics ytics mytics

set xlabel 'Jahr'
set xrange [1735:2013]
# Jahreszahl alle 10 Jahre
set xtics 10
# nochmal unterteilen
set mxtics 10

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 10000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'80000']


set terminal svg size 1000,400 font 'Arial,10'
set output 'Bayreuth_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:2 with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:2 with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
# Datenquelle: http://de.wikipedia.org/wiki/Bayreuth
	1735 7000
	1792 9000
	1818 10000
	1830 13030
	1840 16700
	1852 18600
	1855 17372
	1858 17850
	1861 18100
	1864 19200
	1867 19500
	1871 17841
	1875 19200
	1880 22072
	1885 23600
	1890 24556
	1895 27693
	1900 29387
	1905 31903
	1910 34547
	1916 28807
	1917 27913
	1919 33128
	1925 35306
	1933 37196
	1939 45028
	1945 53684
	1946 55612
	1950 58800
	1956 59544
	1961 61835
	1965 63033
	1970 64536
	1975 67035
	1980 70633
	1985 71848
	1987 69813
	1990 72345
	1995 73016
	2000 74153
	2006 73202
	2007 73097
	2008 72935
	2009 72576
	2010 72670
	2011 73111
	2012 71482
	2013 71480
EOF
	1735 7000
	1792 9000
	1818 10000
	1830 13030
	1840 16700
	1852 18600
	1855 17372
	1858 17850
	1861 18100
	1864 19200
	1867 19500
	1871 17841
	1875 19200
	1880 22072
	1885 23600
	1890 24556
	1895 27693
	1900 29387
	1905 31903
	1910 34547
	1916 28807
	1917 27913
	1919 33128
	1925 35306
	1933 37196
	1939 45028
	1945 53684
	1946 55612
	1950 58800
	1956 59544
	1961 61835
	1965 63033
	1970 64536
	1975 67035
	1980 70633
	1985 71848
	1987 69813
	1990 72345
	1995 73016
	2000 74153
	2006 73202
	2007 73097
	2008 72935
	2009 72576
	2010 72670
	2011 73111
	2012 71482
	2013 71480
EOF
