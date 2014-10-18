#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

# output
set title 'Bevölkerungsentwicklung im Landkreis Saalfeld-Rudolstadt'
unset key
set style fill transparent solid 0.3
set grid

set xlabel 'Jahr (jeweils 31.12.)'
set xrange [1994:2013]
# Jahreszahl alle 2 Jahre
set xtics 2
# nochmal in zwei Teilintervalle unterteilen (jedes Jahr eine Markierung)
set mxtics 1

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 20000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'145000']


set terminal svg size 500,400 font 'Arial,12'
set output 'Landkreis_Saalfeld-Rudolstadt_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:2 with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:2 with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
# Datenquelle: http://de.wikipedia.org/wiki/Landkreis_Saalfeld-Rudolstadt
	1994 140112
	1995 139040
	1996 138529
	1997 137282
	1998 135425
	1999 134307
	2000 132885
	2001 131015
	2002 129610
	2003 127910
	2004 126692
	2005 125087
	2006 123516
	2007 121542
	2008 119817
	2009 118303
	2010 116818
	2011 115722
	2012 111463
	2013 110307
EOF
	1994 140112
	1995 139040
	1996 138529
	1997 137282
	1998 135425
	1999 134307
	2000 132885
	2001 131015
	2002 129610
	2003 127910
	2004 126692
	2005 125087
	2006 123516
	2007 121542
	2008 119817
	2009 118303
	2010 116818
	2011 115722
	2012 111463
	2013 110307
EOF
