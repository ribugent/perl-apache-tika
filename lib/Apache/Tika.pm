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

sub _request {
	my ($self, $method, $path, $headers, $bodyBytes) = @_;

	# Perform request
	my $response = $self->{ua}->$method(
		$self->{url} . '/' . $path,
		%$headers,
		Content => $bodyBytes
	);

	# Check for errors
	# TODO

	return $response->decoded_content();
}

sub tika {
	my ($self, $bytes, $contentType) = @_;
	return $self->_request(
		'put',
		'tika',
		{
			'Accept-content' => 'plain/text',
			$contentType? ('Content-type' => $contentType) : ()
		},
		$bytes
	);
}

1;
