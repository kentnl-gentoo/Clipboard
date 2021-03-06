use File::Spec::Functions qw(rel2abs);
use lib rel2abs('.');
use Test::Clipboard;
use Test::MockClipboard;
use strict; # XXX make Test::Clipboard do this
$Clipboard::driver = 'PhonyClipboard';
my $str = 'Semirobotic Invasion';
Clipboard->copy($str);
is($PhonyClipboard::board, $str, 'copy');
is(Clipboard->paste, $str, 'paste');
