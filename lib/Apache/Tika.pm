use strict;
use warnings;

package Apache::Tika;

use LWP::UserAgent;

sub new {
	my ($this, %pars) = @_;

	my $self = bless {}, $this;
	$self->{ua} = $pars{ua} // LWP::UserAgent->new();
	$self->{url} = $pars{url} // 'http://localhost:9998';

	return $self;
}

1;
