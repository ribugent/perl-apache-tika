# NAME

Apache::Tika - A perl interface to Apache Tika API

# SYNOPSIS

    use Apache::Tika

    my $tika = Apache::Tika->new();

    # Extract metadata and text from a pdf file
    open my $fh, '<:raw', '/local/file.pdf';
    my $pdf = do { local $/; <$fh> };
    close $fh;

    my $meta = $tika->meta($pdf);
    my $text = $tika->tika($pdf);

    # Extract text from a website
    my $response = LWP::UserAgent->get('http://some.web.site');
    my $text = $tika->tika(
     $r->decoded_content('charset' => 'none'),
     $r->headers->header('content-type')
    );

# DESCRIPTION

This module provide Apache Tika api support

# CONSTRUCTOR

- Apache::Tika->new(%options)

    This constructs `Apache::Tika` object. You can specify the following options

    - url

        Apache Tika server url (defaults to http://localhost:9998)

    - ua

        Custom useragent

# METHODS

The following api methods are available, to get more information about method responses visit [http://wiki.apache.org/tika/TikaJAXRS](http://wiki.apache.org/tika/TikaJAXRS)

- $tika->meta($bytes, $contentType)
- $tika->rmeta($bytes, $contentType)
- $tika->tika($bytes, $contentType)
- $tika->detect\_stream($bytes)
- $tika->language\_stream($bytes)

The $bytes parameter is always required and must contain the data to send to the server.
The $contentType is optional, but if know the $bytes content-type (p.e. "text/html; charset=iso-8") you can send it to improve the tika response.

# SEE ALSO
[Apache Tika](http://wiki.apache.org/tika/TikaJAXRS)
