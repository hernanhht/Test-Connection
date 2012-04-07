#!/opt/local/bin/perl
use IO::Socket;
my $sock = new IO::Socket::INET (
				PeerAddr => 'www.google.com',
				PeerPort => '80',
				Proto => 'tcp',
				);
die "No me puedo conectar: $!\n" unless $sock;
print "------------------\n";
print "Conexion exitosa !\n";
print "------------------\n";
$sock->send("GET / HTTP1.0\n\n");
$sock->recv($text,128000);
print "Recibiendo:\n", $text,"'\n";
close($sock);
