#!/usr/bin/perl

my $num = 0;
my $bpm = 100;
my $rate = 10;
my $freq = 360;
my $minimum = 60;
my $folder = 'normal';
while ($num <= 20){
	$bpm = int(rand(30)) + $minimum;
	system("./ecgsyn -s $freq -S $freq -n $rate -h $bpm -O '$folder/$num.d'");
	$num++;
}
