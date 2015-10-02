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

    TODO

# METHODS

- $tika->meta($bytes, $contentType)

    TODO

- $tika->rmeta($bytes, $contentType)

    TODO

- $tika->tika($bytes, $contentType)

    TODO

- $tika->detect\_stream($bytes)

    TODO

- $tika->language\_stream($bytes)

    TODO
