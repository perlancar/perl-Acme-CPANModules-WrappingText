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
            bench_code_template => 'die "NOT YET IMPLEMENTED"',
            bench_include_by_default => 0,
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
            include_by_default => 0,
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
            bench_code_template => 'die "NOT YET IMPLEMENTED"',
            bench_include_by_default => 0,
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
            bench_fcall_template => 'Text::ANSI::Util::ta_wrap(<str>, <width>)',
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
            bench_fcall_template => 'Text::ANSI::WideUtil::ta_mbwrap(<str>, <width>)',
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
            bench_fcall_template => 'Text::WideChar::Util::mbwrap(<str>, <width>)',
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
            bench_code_template => 'die "NOT YET IMPLEMENTED"',
            bench_include_by_default => 0,
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
            bench_code_template => 'die "NOT YET IMPLEMENTED"',
            bench_include_by_default => 0,
        },
        {
            module => 'Text::Wrap',
            function => 'wrap',
            description => <<'_',

Core module.

_
            features => {
                can_unicode => 0,
                can_cjk => 0,
                can_ansi => 0,
            },
            bench_code_template => 'local $Text::Wrap::columns = <width>; Text::Wrap::wrap("", "", <str>)',
        },
    ],

    bench_datasets => [
        {name=>"ansi_len200", args=>{str=>"xxxxxxxxx " x 20, width=>80}},
    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION
