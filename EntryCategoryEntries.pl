# Movable Type plugin for listing entries included in the primary
# category of the current entry.
#
# $Id$
#
# This software is provided as-is. You may use it for commercial or 
# personal use. If you distribute it, please keep this notice intact.
#
# Copyright (c) 2005 Hirotaka Ogawa
#
package MT::Plugin::EntryCategoryEntries;
use strict;
use base 'MT::Plugin';
use vars qw($VERSION);
$VERSION = '0.02';

use MT;
use MT::Template::Context;
use MT::Entry;

my $plugin = MT::Plugin::EntryCategoryEntries->new({
    name => 'Entry Category Entries',
    description => "A plugin for listing entries included in the primary category of the current entry",
    doc_link => 'http://code.as-is.net/wiki/EntryCategoryEntries_Plugin',
    author_name => 'Hirotaka Ogawa',
    author_link => 'http://profile.typekey.com/ogawa/',
    version => $VERSION,
});
MT->add_plugin($plugin);
MT::Template::Context->add_container_tag(EntryCategoryEntries => \&entries);

sub entries {
    my ($ctx, $args, $cond) = @_;
    my $entry = $ctx->stash('entry')
	or return $ctx->_no_entry_error('MT' . $ctx->stash('tag'));
    my $cat = $entry->category or return '';
    $args->{category} = MT->version_number > 3.2 ? ['OR',[$cat]] : ['OR',$cat];
    MT::Template::Context::_hdlr_entries(@_);
}

1;
__END__

=head1 NAME

EntryCategoryEntries.pl - Movable Type plugin for listing entries
included in the primary category of the current entry.

=head1 DESCRIPTION

This plugin allows you to list entries included in the primary
category of the current entry. This plugin can be used only in the
entry context, which means the inside of the MTEntries container or
the individual entry archives.

=head1 TAGS

=over 4

=item MTEntryCategoryEntries

A container tag for listing entries included in the primary category
of the current entry. Almost same as MTEntries.

=back

=head1 EXAMPLE

<ul>
<MTEntryCategoryEntries lastn="10">
  <li><a href="<$MTEntryPermalink$>"><MTEntryTitle></a></li>
</MTEntryCategoryEntries>
</ul>

=head1 LICENSE

This code is released under the Artistic License. The terms of the
Artistic License are described at
L<http://www.perl.com/language/misc/Artistic.html>.

=head1 AUTHOR & COPYRIGHT

Copyright (c) 2005 Hirotaka Ogawa (hirotaka.ogawa at gmail.com)

=cut

=end
