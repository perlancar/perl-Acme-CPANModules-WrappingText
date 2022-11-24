package Module::Features::TextWrapper;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our %FEATURES_DEF = (
    v => 1,
    summary => 'Features of modules that wrap text',
    description => <<'_',

Keywords: fold

_
    features => {
        can_unicode => {summary => 'Can wrap Unicode text, including wide characters'},
        can_cjk     => {summary => 'Can wrap CJK wide characters'},
        can_ansi    => {summary => 'Can wrap text that contains ANSI color/escape codes'},
    },
);

1;
# ABSTRACT: Features of modules that wrap text

=head1 SEE ALSO

L<Module::Features>
