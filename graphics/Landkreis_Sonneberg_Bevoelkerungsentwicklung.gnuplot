#!/usr/bin/gnuplot
# gnuplot 4.6 / Debian 7
#
# Erstellt von Michael Fiedler <michael.fiedler87@gmx.de>
# Lizenz: CC-BY-SA 3.0 unported, http://creativecommons.org/licenses/by-sa/3.0/deed.de
# Basierend auf http://commons.wikimedia.org/wiki/File:Muc_population.svg von Gorgo

# output
set title 'Bevölkerungsentwicklung im Landkreis Sonneberg'
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
set yrange ['0':'75000']


set terminal svg size 400,300 font 'Arial,10'
set output 'Landkreis_Sonneberg_Bevoelkerungsentwicklung.svg'

# '-' nimmt die nachfolgenden Daten als Eingabewerte
plot '-' using 1:2 with filledcurves below x1 linetype rgb 'dark-blue' linewidth 2, \
	    '-' using 1:2 with impulses linecolor rgbcolor 'dark-red' linewidth 1.5
# Datenquelle: Thueringer Landesamt fuer Statistik, http://www.tls.thueringen.de/datenbank/portrait.asp?TabelleID=gg000102&auswahl=extra&nr=72000&Aevas2=Aevas2&tit2=&TIS=&SZDT=
	1994 71454
	1995 70721
	1996 70193
	1997 69639
	1998 69146
	1999 68423
	2000 67833
	2001 67175
	2002 66562
	2003 65683
	2004 64983
	2005 64005
	2006 63122
	2007 62384
	2008 61315
	2009 60560
	2010 59954
	2011 59249
	2012 57802
EOF
	1994 71454
	1995 70721
	1996 70193
	1997 69639
	1998 69146
	1999 68423
	2000 67833
	2001 67175
	2002 66562
	2003 65683
	2004 64983
	2005 64005
	2006 63122
	2007 62384
	2008 61315
	2009 60560
	2010 59954
	2011 59249
	2012 57802
EOF
