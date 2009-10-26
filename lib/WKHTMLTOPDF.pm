
package WKHTMLTOPDF;

use Moose;
with 'MooseX::Role::Cmd';

our $VERSION = '0.01';

=head1 NAME

WKHTMLTOPDF - Perl interface to the wkhtmltopdf program for producing PDF-Files from HTML-Content.

=head1 SYNOPSIS

    use WKHTMLTOPDF;

    my $pdf = new WKHTMLTOPDF;
    $pdf->_input_file('teste.html');
    $pdf->_output_file('teste.pdf');
    $pdf->grayscale(1);

    $pdf->generate;

=head1 DESCRIPTION

Please, visit http://code.google.com/p/wkhtmltopdf/

=head1 AUTHOR

Thiago Rondon <thiago@aware.com.br>

=head1 LICENSE

This library is free software, you can redistribute it and/or modify it under the same terms as Perl itself.

=cut

use constant DEFAULT_BIN_NAME => '/usr/bin/wkhtmltopdf';

has '_input_file' => ( is => 'rw', isa => 'Str' );
has '_output_file' => ( is => 'rw', isa => 'Str' );
has 'bin_name' => ( is => 'rw', isa => 'Str', default => DEFAULT_BIN_NAME );

has 'book' => ( is => 'rw', isa => 'Bool', default => 0);
has 'cover' => ( is => 'rw', isa => 'Str');
has 'default-header' => ( is => 'rw', isa => 'Bool', default => 0);
has 'disable-javascript' => ( is => 'rw', isa => 'Bool', default => 0);
has 'enable-plugins' => ( is => 'rw', isa => 'Bool', default => 0);

has 'dpi' => ( is => 'rw', isa => 'Str');
has 'encoding' => ( is => 'rw', isa => 'Str');

has 'footer-center' => (is => 'rw', isa => 'Str');
has 'footer-font-name' => (is => 'rw', isa => 'Str');
has 'footer-font-size' => (is => 'rw', isa => 'Int');
has 'footer-left' => (is => 'rw', isa => 'Str');
has 'footer-line' => (is => 'rw', isa => 'Bool', default => 0);
has 'footer-right' => (is => 'rw', isa => 'Str');

has 'header-center' => (is => 'rw', isa => 'Str');
has 'header-font-name' => (is => 'rw', isa => 'Str');
has 'header-font-size' => (is => 'rw', isa => 'Int');
has 'header-left' => (is => 'rw', isa => 'Str');
has 'header-line' => (is => 'rw', isa => 'Bool', default => 0);
has 'header-right' => (is => 'rw', isa => 'Str');

has 'grayscale' => (is => 'rw', isa => 'Bool', default => 0);
has 'lowquality' => (is => 'rw', isa => 'Bool', default => 0);

has 'margin-bottom' => (is => 'rw', isa => 'Str');
has 'margin-left' => (is => 'rw', isa => 'Str');
has 'margin-right' => (is => 'rw', isa => 'Str');
has 'margin-top' => (is => 'rw', isa => 'Str');

has 'no-background' => (is => 'rw', isa => 'Bool', default => 0);
has 'orientation' => (is => 'rw', isa => 'Str');
has 'outline' => (is => 'rw', isa => 'Bool', default => 0);
has 'outline-depth' => (is => 'rw', isa => 'Int');
has 'page-offset' => (is => 'rw', isa => 'Int');
has 'page-size' => (is => 'rw', isa => 'Str');
has 'password' => (is => 'rw', isa => 'Str');
has 'print-media-type' => (is => 'rw', isa => 'Bool', default => 0);
has 'proxy' => (is => 'rw', isa => 'Str');
has 'quit' => (is => 'rw', isa => 'Bool', default => 0);
has 'redirect-delay' => (is => 'rw', isa => 'Int');

has 'toc' => (is => 'rw', isa => 'Bool', default => 0);
has 'toc-depth' => (is => 'rw', isa => 'Int');
has 'toc-hedaer-fs' => (is => 'rw', isa => 'Int');
has 'toc-header-text' => (is => 'rw', isa => 'Str');
has 'toc-l1-font-size' => (is => 'rw', isa => 'Int');
has 'toc-l1-indentation' => (is => 'rw', isa => 'Int');
has 'toc-l2-font-size' => (is => 'rw', isa => 'Int');
has 'toc-l2-indentation' => (is => 'rw', isa => 'Int');
has 'toc-l3-font-size' => (is => 'rw', isa => 'Int');
has 'toc-l3-indentation' => (is => 'rw', isa => 'Int');
has 'toc-no-dots' => (is => 'rw', isa => 'Bool', default => 0);

has 'toc-no-dots' => (is => 'rw', isa => 'Bool', default => 0);
has 'user-style-sheet' => (is => 'rw', isa => 'Str');
has 'username' => (is => 'rw', isa => 'Str');



sub generate {
    my $self = shift;
    $self->run(($self->_input_file, $self->_output_file));

}

1;

