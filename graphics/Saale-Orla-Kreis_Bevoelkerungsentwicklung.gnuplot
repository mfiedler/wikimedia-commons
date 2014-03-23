#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

set title 'Bevölkerungsentwicklung im Saale-Orla-Kreis'
unset key
set style fill transparent solid 0.3
set grid

set xlabel 'Jahr (jeweils 31.12.)'
set xrange [1994:2012]
# Jahreszahl alle 2 Jahre
set xtics 2
# nochmal in zwei Teilintervalle unterteilen (jedes Jahr eine Markierung)
set mxtics 1

set ylabel 'Einwohnerzahl'
# Beschriftungsintervall
set ytics 10000
# weitere Unterteilung ohne Beschriftung
set mytics 2
set yrange ['0':'100000']


set terminal svg size 500,400 font 'Arial,11'
set output 'Saale-Orla-Kreis_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:2 with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:2 with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
# Datenquelle: http://de.wikipedia.org/wiki/Saale-Orla-Kreis
	1994 91793
	1995 92226
	1996 92901
	1997 93551
	1998 93847
	1999 93679
	2000 93929
	2001 93404
	2002 92969
	2003 92311
	2004 91470
	2005 90761
	2006 89827
	2007 88935
	2008 88199
	2009 87400
	2010 86809
	2011 86906
	2012 84435
EOF
	1994 91793
	1995 92226
	1996 92901
	1997 93551
	1998 93847
	1999 93679
	2000 93929
	2001 93404
	2002 92969
	2003 92311
	2004 91470
	2005 90761
	2006 89827
	2007 88935
	2008 88199
	2009 87400
	2010 86809
	2011 86906
	2012 84435
EOF
