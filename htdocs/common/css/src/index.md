このスタイルガイドは[Hologram](http://trulia.github.io/hologram/)で作成されました。

## 見出し

見出しはHologramの仕様上、classを付与できませんでした。

# Header 1

Lorem ipsizzle shizznit ``sizzle`` amet, that's the shizzle adipiscing bow wow wow. Nullizzle sapizzle velizzle, crackalackin volutpizzle, funky fresh quizzle, i'm in the shizzle vizzle, arcu. Daahng dawg pimpin' gangster. Yo i saw beyonces tizzles and my pizzle went crizzle. Shut the shizzle up at dolor dapibus pimpin' tempus fo

## Header 2

Lorem ipsizzle shizznit ``sizzle`` amet, that's the shizzle adipiscing bow wow wow. Nullizzle sapizzle velizzle, crackalackin volutpizzle, funky fresh quizzle, i'm in the shizzle vizzle, arcu. Daahng dawg pimpin' gangster. Yo i saw beyonces tizzles and my pizzle went crizzle. Shut the shizzle up at dolor dapibus pimpin' tempus fo

### Header 3

Lorem ipsizzle shizznit ``sizzle`` amet, that's the shizzle adipiscing bow wow wow. Nullizzle sapizzle velizzle, crackalackin volutpizzle, funky fresh quizzle, i'm in the shizzle vizzle, arcu. Daahng dawg pimpin' gangster. Yo i saw beyonces tizzles and my pizzle went crizzle. Shut the shizzle up at dolor dapibus pimpin' tempus fo

#### Header 4

Lorem ipsizzle shizznit ``sizzle`` amet, that's the shizzle adipiscing bow wow wow. Nullizzle sapizzle velizzle, crackalackin volutpizzle, funky fresh quizzle, i'm in the shizzle vizzle, arcu. Daahng dawg pimpin' gangster. Yo i saw beyonces tizzles and my pizzle went crizzle. Shut the shizzle up at dolor dapibus pimpin' tempus fo

##### Header 5

Lorem ipsizzle shizznit ``sizzle`` amet, that's the shizzle adipiscing bow wow wow. Nullizzle sapizzle velizzle, crackalackin volutpizzle, funky fresh quizzle, i'm in the shizzle vizzle, arcu. Daahng dawg pimpin' gangster. Yo i saw beyonces tizzles and my pizzle went crizzle. Shut the shizzle up at dolor dapibus pimpin' tempus fo

###### Header 6

Lorem ipsizzle shizznit ``sizzle`` amet, that's the shizzle adipiscing bow wow wow. Nullizzle sapizzle velizzle, crackalackin volutpizzle, funky fresh quizzle, i'm in the shizzle vizzle, arcu. Daahng dawg pimpin' gangster. Yo i saw beyonces tizzles and my pizzle went crizzle. Shut the shizzle up at dolor dapibus pimpin' tempus fo

## 画像

``.sg-image``

インライン
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")

リンク先を参照する
![alt text][logo]

[logo]: https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1"


## 文字のスタイル

``.sg-text-itaric``

The quick *brown* fox jumps over the lazy dog.

``.sg-text-bold``

The quick **brown** fox jumps over the lazy dog.

## 罫線

``.sg-hr``

---

## リスト

``.sg-list-unordered``

- The quick brown fox jumps over the lazy dog.
- The quick brown fox jumps over the lazy dog.
- The quick brown fox jumps over the lazy dog.

``.sg-list-ordered``

1. The quick brown fox jumps over the lazy dog.
1. The quick brown fox jumps over the lazy dog.
1. The quick brown fox jumps over the lazy dog.

### ネストしたリスト

- The quick brown fox jumps over the lazy dog.
  - The quick brown fox jumps over the lazy dog.
  - The quick brown fox jumps over the lazy dog.
  - The quick brown fox jumps over the lazy dog.
- The quick brown fox jumps over the lazy dog.
  1. The quick brown fox jumps over the lazy dog.
  1. The quick brown fox jumps over the lazy dog.
  1. The quick brown fox jumps over the lazy dog.
- The quick brown fox jumps over the lazy dog.
  - ``['a', 'b'].map { |x| x.uppercase }``

## 引用

``.sg-blockquote``

> The quick brown fox jumps over the lazy dog.

The quick brown fox jumps over the lazy dog.

> The quick brown fox jumps over the lazy dog.
> The quick brown fox jumps over the lazy dog.
> The quick brown fox jumps over the lazy dog.
> The quick brown fox jumps over the lazy dog.
> The quick brown fox jumps over the lazy dog.
>
> The quick brown ``fox jumps`` over the lazy dog.
> The quick brown fox jumps over the lazy dog.
> The quick brown fox jumps over the lazy dog.
> The quick brown fox jumps over the lazy dog.
> The quick brown fox jumps over the lazy dog.

## インラインコードブロック

``.sg-code``

Hologram is so ``Awesome``.

## pre

``.sg-pre``

<pre class="sg-pre">
             ,-.
    ,     ,-.   ,-.
   / \   (   )-(   )
   \ |  ,.>-(   )-<
    \|,' (   )-(   )
     Y ___`-'   `-'
     |/__/   `-'
     |
     |
     |    -hrr-
  ___|_____________
</pre>

## 表組み

``.sg-table``

Tables        | Are           | Cool
------------- |:-------------:| -----:
col 3 is      | right-aligned | $1600
col 2 is      | centered      |   $12
zebra stripes | are neat      |    $1
*Still* | `renders` | **nicely**

## コードサンプル

``.sg-codeBlock``

### コードのみ

``.sg-codeBlock > .sg-codeBlock__code``

```html
<div style="width:30px;height:30px;border:3px solid red;text-align:center">!</div>
```

### サンプルとコード

``.sg-codeBlock > .sg-codeBlock__preview + .sg-codeBlock__code``

```html_example
<button class="btn btnDefault">Click</button>
<a class="btn btnDefault" href="http://example.com">Don't click</a>
```

## リンク

``.sg-textLink``

My blog is [&lt;/gecko&gt;](http://geckotang.tumblr.com/).

[Googleさん][1]とか[Yahoo][2]とか[MSN][3]とか

[1]: http://google.com/        "Google"
[2]: http://search.yahoo.com/  "Yahoo Search"
[3]: http://search.msn.com/    "MSN Search"
