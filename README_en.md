# EntryCategoryEntries Plugin

A Movable Type plugin for listing entries included in the primary category of the current entry.

## Overview

This plugin allows you to list entries included in the primary category of the current entry. This plugin can be used only in the entry context, which means the inside of the MTEntries container or the individual entry archives.

## Tags

### MTEntryCategoryEntries

A container tag for listing entries included in the primary category of the current entry.

Almost same options are availablable as MTEntries.

## Example

    <ul>
    <MTEntryCategoryEntries lastn="10">
      <li><a href="<$MTEntryPermalink$>"><MTEntryTitle></a></li>
    </MTEntryCategoryEntries>
    </ul>

## See Also

## License

This code is released under the Artistic License. The terms of the Artistic License are described at [http://www.perl.com/language/misc/Artistic.html](http://www.perl.com/language/misc/Artistic.html).

## Author & Copyright

Copyright (c) 2005 Hirotaka Ogawa (hirotaka.ogawa at gmail.com)
