package Acme::CPANModules::WrappingText;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => "List of modules and utilities to wrap text",
    description => <<'_',

See also: <prog:fold> Unix command line.

_
    # TODO: use Module::Features
    entry_features => {
        can_unicode => {summary => 'Can wrap Unicode text, including wide characters'},
        can_cjk     => {summary => 'Can wrap CJK wide characters'},
        can_ansi    => {summary => 'Can wrap text that contains ANSI color/escape codes'},
    },
    entries => [
        {
            module => 'App::TextWrapUtils',
            script => 'textwrap',
            description => <<'_',

CLI front-end for various backends mentioned in this list.

_
        },
        {
            module => 'Lingua::JA::Fold',
            function => 'fold',
            description => <<'_',

Specifically for folding Japanese (and other CJK) text.

_
            features => {
                can_unicode => 0,
                can_cjk => 1,
                can_ansi => 0,
            },
        },
        {
            module => 'Text::ANSI::Fold',
            function => 'ansi_fold',
            description => <<'_',

_
            features => {
                can_unicode => 1,
                can_cjk => 1,
                can_ansi => 1,
            },
        },
        {
            module => 'Text::ANSI::Util',
            function => 'ta_wrap',
            description => <<'_',

For wrapping text that contains ANSI escape/color codes.

_
            features => {
                can_unicode => 0,
                can_cjk => 0,
                can_ansi => 1,
            },
        },
        {
            module => 'Text::ANSI::WideUtil',
            function => 'ta_mbwrap',
            description => <<'_',

For wrapping text that contains ANSI escape/color codes *and* Unicode wide
characters.

_
            features => {
                can_unicode => 1,
                can_cjk => 0,
                can_ansi => 1,
            },
        },
        {
            module => 'Text::WideChar::Util',
            function => 'mbwrap',
            description => <<'_',

For wrapping text that contains Unicode wide characters.

_
            features => {
                can_unicode => 1,
                can_cjk => 0,
                can_ansi => 0,
            },
        },
        {
            module => 'Text::Fold',
            function => 'fold_text',
            description => <<'_',

_
            features => {
                can_unicode => 1,
                can_cjk => 0,
                can_ansi => 0,
            },
        },
        {
            module => 'Text::LineFold',
            method => 'fold',
            description => <<'_',

_
            features => {
                can_unicode => 0,
                can_cjk => 0,
                can_ansi => 0,
            },
        },
        {
            module => 'Text::Wrap',
            description => <<'_',

Core module.

_
            features => {
                can_unicode => 0,
                can_cjk => 0,
                can_ansi => 0,
            },
        },
    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION