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

# METHODS

- $tika->meta($bytes, $contentType)
    - $tika->rmeta($bytes, $contentType)
        - $tika->tika($bytes, $contentType)
            - $tika->detect\_stream($bytes)
                - $tika->language\_stream($bytes)

# POD ERRORS

Hey! **The above document had some coding errors, which are explained below:**

- Around line 37:

    You forgot a '=back' before '=head1'

- Around line 39:

    &#x3d;over without closing =back

- Around line 43:

    &#x3d;over without closing =back

- Around line 47:

    &#x3d;over without closing =back

- Around line 51:

    &#x3d;over without closing =back

- Around line 55:

    &#x3d;over without closing =back
