#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

set title 'Bevölkerungsentwicklung der Stadt Erlangen (zum jeweiligen Gebietsstand)' font 'Arial,11'
unset key
set style fill transparent solid 0.3
set grid xtics ytics mytics

set xlabel 'Jahr' font 'Arial,11'
set xrange [1495:2013]
# Jahreszahl alle 10 Jahre
set xtics 10
# nochmal unterteilen
set mxtics 10

set ylabel 'Einwohnerzahl' font 'Arial,11'
# Beschriftungsintervall
set ytics 5000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'110000']


set terminal svg size 1500,800 font 'Arial,8'
set output 'Erlangen_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:2 with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:2 with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
# Datenquelle: http://de.wikipedia.org/wiki/Erlangen
	1495 460
	1557 410
	1619 520
	1634 0
	1655 500
	1690 1100
	1708 2500
	1723 3930
	1752 7939
	1760 8140
	1774 7724
	1792 8178
	1800 10000
	1812 8592
	1820 9271
	1830 9831
	1840 10630
	1852 10910
	1861 10896
	1864 11202
	1867 11546
	1871 12510
	1875 13597
	1880 14876
	1885 15828
	1890 17559
	1895 20892
	1900 22953
	1905 23737
	1910 24877
	1916 19688
	1917 19599
	1919 23521
	1925 29597
	1933 32348
	1939 34066
	1946 45536
	1950 50011
	1956 60378
	1961 69552
	1965 78800
	1970 84110
	1975 100671
	1980 101845
	1985 99628
	1987 99808
	1990 101017
	1995 101361
	2000 100064
	2005 102896
	2008 104542
	2009 105164
	2010 105258
	2011 105964
	2012 107103
	2013 107345
EOF
	1495 460
	1557 410
	1619 520
	1634 0
	1655 500
	1690 1100
	1708 2500
	1723 3930
	1752 7939
	1760 8140
	1774 7724
	1792 8178
	1800 10000
	1812 8592
	1820 9271
	1830 9831
	1840 10630
	1852 10910
	1861 10896
	1864 11202
	1867 11546
	1871 12510
	1875 13597
	1880 14876
	1885 15828
	1890 17559
	1895 20892
	1900 22953
	1905 23737
	1910 24877
	1916 19688
	1917 19599
	1919 23521
	1925 29597
	1933 32348
	1939 34066
	1946 45536
	1950 50011
	1956 60378
	1961 69552
	1965 78800
	1970 84110
	1975 100671
	1980 101845
	1985 99628
	1987 99808
	1990 101017
	1995 101361
	2000 100064
	2005 102896
	2008 104542
	2009 105164
	2010 105258
	2011 105964
	2012 107103
	2013 107345
EOF
