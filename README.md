# EntryCategoryEntriesプラグイン

現在のエントリーのプライマリカテゴリーに属するエントリーをリストアップするMovable Typeプラグイン。

## 概要

このプラグインは、現在のエントリーのプライマリカテゴリーをカテゴリーに設定しているエントリーをリストアップするMTEntryCategoryEntriesコンテナタグを追加するものです。このコンテナタグは、エントリーコンテキスト、すなわちMTEntriesコンテナの内部、もしくは個別エントリーアーカイブで利用できます。

## 追加されるタグ

### MTEntryCategoryEntries

現在のエントリーのプライマリカテゴリーに属するエントリーをリストアップするコンテナタグ。

MTEntriesとほぼ同様のオプションを利用することができます。

## 使用例

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
