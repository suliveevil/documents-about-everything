# [Markdown](https://zh.mweb.im/markdown-cat.html) 语法说明

[TOC]

------

## Markdown 文件

![Markdown](http://markdown.tw/images/208x128.png)

**NOTE:** This is Traditional Chinese Edition Document of
Markdown Syntax. If you are seeking for English Edition 
Document. Please refer to [Markdown: Syntax](http://daringfireball.net/projects/markdown/syntax).



## Markdown: Syntax

- 概述
  - [哲學](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#philosophy)
  - [行內 HTML](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#html)
  - [特殊字元自動轉換](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#autoescape)
- 區塊元素
  - [段落和換行](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#p)
  - [標題](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#header)
  - [區塊引言](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#blockquote)
  - [清單](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#list)
  - [程式碼區塊](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#precode)
  - [分隔線](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#hr)
- 區段元素
  - [連結](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#link)
  - [強調](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#em)
  - [程式碼](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#code)
  - [圖片](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#img)
- 其它
  - [跳脫字元](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#backslash)
  - [自動連結](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#autolink)
- [感謝](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#acknowledgement)

**注意：**這份文件是用 Markdown 寫的，你可以[看看它的原始檔](https://github.com/othree/markdown-syntax-zhtw/blob/master/syntax.md) 。

------

## 概述



### 哲學



Markdown 的目标是实现“易读易写”。

不过最需要强调的便是它的可读性。一份使用 Markdown 格式撰写的文件应该可以直接以纯文字发布，并且看起来不会像是由许多标签或是格式指令所构成。Markdown 语法受到一些既有 text-to-HTML 格式的影响，包括 [Setext](http://docutils.sourceforge.net/mirror/setext.html)、[atx](http://www.aaronsw.com/2002/atx/)、[Textile](http://textism.com/tools/textile/)、[reStructuredText](http://docutils.sourceforge.net/rst.html)、[Grutatext](http://www.triptico.com/software/grutatxt.html) 和 [EtText](http://ettext.taint.org/doc/)，然而最大灵感来源其实是纯文字的电子邮件格式。

因此 Markdown 的语法全由标点符号所组成，并经过严谨慎选，是为了让它们看起来就像所要表达的意思。像是在文字两旁加上星号，看起来就像强调。Markdown 的清单看起来，嗯，就是清单。假如你有使用过电子邮件，区块引言看起来就真的像是引用一段文字。

### 行內 HTML



Markdown 的语法有个主要的目的：用来作为一种网路内容的写作用语言。

Markdown 不是要来取代 HTML，甚至也没有要和它相似，它的语法种类不多，只和 HTML 的一部分有关系，重点不是要创造一种更容易写作 HTML 文件的语法，我认为 HTML 已经很容易写了，Markdown 的重点在于，它能让文件更容易阅读、编写。HTML 是一种发布的格式，Markdown 是一种编写的格式，因此，Markdown 的格式语法只涵盖纯文字可以涵盖的范围。

不在 Markdown 涵盖范围之外的标签，都可以直接在文件里面用 HTML 撰写。不需要额外标注这是 HTML 或是 Markdown；只要直接加标签就可以了。

只有区块元素──比如 <div>、<table>、<pre>、<p> 等标签，必须在前后加上空行，以利与内容区隔。而且这些（元素）的开始与结尾标签，不可以用 tab 或是空白来缩排。Markdown 的产生器有智慧型判断，可以避免在区块标签前后加上没有必要的 <p> 标签。

举例来说，在 Markdown 文件里加上一段 HTML 表格：

```text
This is a regular paragraph.

<table>
    <tr>
        <td>Foo</td>
    </tr>
</table>

This is another regular paragraph.
```

请注意，Markdown 语法在 HTML 区块标签中将不会被进行处理。例如，你无法在 HTML 区块内使用 Markdown 形式的*强调*。

HTML 的区段标签如 <span>、<cite>、<del> 则不受限制，可以在 Markdown 的段落、清单或是标题里任意使用。依照个人习惯，甚至可以不用Markdown 格式，而采用 HTML 标签来格式化。举例说明：如果比较喜欢 HTML 的  <a> 或 <img> 标签，可以直接使用这些标签，而不用 Markdown 提供的连结或是影像标示语法。

HTML 区段标签和区块标签不同，在区段标签的范围内， Markdown 的语法是有效的。

### 特殊字元自動轉換



在 HTML 文件中，有两个字元需要特殊处理： < 和 & 。 < 符号用于起始标签，& 符号则用于标记 HTML 实体，如果你只是想要使用这些符号，你必须要使用实体的形式，像是 &lt; 和 &amp;。

& 符号其实很容易让写作网路文件的人感到困扰，如果你要打“AT&T” ，你必须要写成“AT&amp;T” ，还得转换网址内的 & 符号，如果你要连结到：

```text
http://images.google.com/images?num=30&q=larry+bird
```

你必須要把網址轉成：

```text
http://images.google.com/images?num=30&amp;q=larry+bird
```

才能放到连结标签的 href 属性里。不用说也知道这很容易忘记，这也可能是 HTML 标准检查所检查到的错误中，数量最多的。

Markdown 允许你直接使用这些符号，但是你要小心跳脱字元的使用，如果你是在HTML 实体中使用 &符号的话，它不会被转换，而在其它情形下，它则会被转换成 &amp;。所以你如果要在文件中插入一个著作权的符号，你可以这样写：

```text
&copy;
```

Markdown 將不會對這段文字做修改，但是如果你這樣寫：

```text
AT&T
```

Markdown 就會將它轉為：

```text
AT&amp;T
```

類似的狀況也會發生在 `<` 符號上，因為 Markdown 支援 [行內 HTML](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#html) ，如果你是使用 `<` 符號作為 HTML 標籤使用，那 Markdown 也不會對它做任何轉換，但是如果你是寫：

```text
4 < 5
```

Markdown 將會把它轉換為：

```text
4 &lt; 5
```

不過需要注意的是，code 範圍內，不論是行內還是區塊， `<` 和 `&` 兩個符號都*一定*會被轉換成 HTML 實體，這項特性讓你可以很容易地用 Markdown 寫 HTML code （和 HTML 相對而言， HTML 語法中，你要把所有的 `<` 和 `&` 都轉換為 HTML 實體，才能在 HTML 文件裡面寫出 HTML code。）

------

## 區塊元素



### 段落和換行



一个段落是由一个以上相连接的行句组成，而一个以上的空行则会切分出不同的段落（空行的定义是显示上看起来像是空行，便会被视为空行。比方说，若某一行只包含空白和 tab，则该行也会被视为空行），一般的段落不需要用空白或断行缩排。

“一个以上相连接的行句组成”这句话其实暗示了 Markdown 允许段落内的强迫断行，这个特性和其他大部分的 text-to-HTML 格式不一样（包括 MovableType 的“Convert Line Breaks”选项），其它的格式会把每个断行都转成 `<br />` 标签。

如果你*真的*想要插入 `<br />` 标签的话，在行尾加上两个以上的空白，然后按 enter。

是的，这确实需要花比较多功夫来插入 `<br />` ，但是“每个换行都转换为 `<br />`”的方法在 Markdown 中并不适合， Markdown 中 email 式的 [区块引言](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#blockquote) 和多段落的 [清单](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#list) 在使用换行来排版的时候，不但更好用，还更好阅读。

### 標題



Markdown 支援兩種標題的語法，[Setext](http://docutils.sourceforge.net/mirror/setext.html) 和 [atx](http://www.aaronsw.com/2002/atx/) 形式。

Setext 形式是用底線的形式，利用 `=` （最高階標題）和 `-` （第二階標題），例如：

```text
This is an H1
=============

This is an H2
-------------
```

任何數量的 `=` 和 `-` 都可以有效果。

Atx 形式則是在行首插入 1 到 6 個 `#` ，對應到標題 1 到 6 階，例如：

```text
# This is an H1

## This is an H2

###### This is an H6
```

你可以選擇性地「關閉」atx 樣式的標題，這純粹只是美觀用的，若是覺得這樣看起來比較舒適，你就可以在行尾加上 `#`，而行尾的 `#` 數量也不用和開頭一樣（行首的井字數量決定標題的階數）：

```text
# This is an H1 #

## This is an H2 ##

### This is an H3 ######
```

### Blockquotes



Markdown 使用 email 形式的區塊引言，如果你很熟悉如何在 email 信件中引言，你就知道怎麼在 Markdown 文件中建立一個區塊引言，那會看起來像是你強迫斷行，然後在每行的最前面加上 `>` ：

```text
> This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
> consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
> Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.
> 
> Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
> id sem consectetuer libero luctus adipiscing.
```

Markdown 也允許你只在整個段落的第一行最前面加上 `>` ：

```text
> This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.

> Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
id sem consectetuer libero luctus adipiscing.
```

區塊引言可以有階層（例如：引言內的引言），只要根據層數加上不同數量的 `>` ：

```text
> This is the first level of quoting.
>
> > This is nested blockquote.
>
> Back to the first level.
```

引言的區塊內也可以使用其他的 Markdown 語法，包括標題、清單、程式碼區塊等：

```text
> ## This is a header.
> 
> 1.   This is the first list item.
> 2.   This is the second list item.
> 
> Here's some example code:
> 
>     return shell_exec("echo $input | $markdown_script");
```

任何標準的文字編輯器都能簡單地建立 email 樣式的引言，例如 BBEdit ，你可以選取文字後然後從選單中選擇*增加引言階層*。

### 清單

Markdown 支援有序清單和無序清單。

無序清單使用星號、加號或是減號作為清單標記：

```text
*   Red
*   Green
*   Blue
```

等同於：

```text
+   Red
+   Green
+   Blue
```

也等同於：

```text
-   Red
-   Green
-   Blue
```

有序清單則使用數字接著一個英文句點：

```text
1.  Bird
2.  McHale
3.  Parish
```

很重要的一點是，你在清單標記上使用的數字並不會影響輸出的 HTML 結果，上面的清單所產生的 HTML 標記為：

```text
<ol>
<li>Bird</li>
<li>McHale</li>
<li>Parish</li>
</ol>
```

如果你的清單標記寫成：

```text
1.  Bird
1.  McHale
1.  Parish
```

或甚至是：

```text
3. Bird
1. McHale
8. Parish
```

你都會得到完全相同的 HTML 輸出。重點在於，你可以讓 Markdown 文件的清單數字和輸出的結果相同，或是你懶一點，你可以完全不用在意數字的正確性。

如果你使用懶惰的寫法，建議第一個項目最好還是從 1. 開始，因為 Markdown 未來可能會支援有序清單的 start 屬性。

清單項目標記通常是放在最左邊，但是其實也可以縮排，最多三個空白，項目標記後面則一定要接著至少一個空白或 tab。

要讓清單看起來更漂亮，你可以把內容用固定的縮排整理好：

```text
*   Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
    Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,
    viverra nec, fringilla in, laoreet vitae, risus.
*   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
    Suspendisse id sem consectetuer libero luctus adipiscing.
```

但是如果你很懶，那也不一定需要：

```text
*   Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,
viverra nec, fringilla in, laoreet vitae, risus.
*   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
Suspendisse id sem consectetuer libero luctus adipiscing.
```

如果清單項目間用空行分開， Markdown 會把項目的內容在輸出時用 `<p>` 
標籤包起來，舉例來說：

```text
*   Bird
*   Magic
```

會被轉換為：

```text
<ul>
<li>Bird</li>
<li>Magic</li>
</ul>
```

但是這個：

```text
*   Bird

*   Magic
```

會被轉換為：

```text
<ul>
<li><p>Bird</p></li>
<li><p>Magic</p></li>
</ul>
```

清單項目可以包含多個段落，每個項目下的段落都必須縮排 4 個空白或是一個 tab ：

```text
1.  This is a list item with two paragraphs. Lorem ipsum dolor
    sit amet, consectetuer adipiscing elit. Aliquam hendrerit
    mi posuere lectus.

    Vestibulum enim wisi, viverra nec, fringilla in, laoreet
    vitae, risus. Donec sit amet nisl. Aliquam semper ipsum
    sit amet velit.

2.  Suspendisse id sem consectetuer libero luctus adipiscing.
```

如果你每行都有縮排，看起來會看好很多，當然，再次地，如果你很懶惰，Markdown 也允許：

```text
*   This is a list item with two paragraphs.

    This is the second paragraph in the list item. You're
only required to indent the first line. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit.

*   Another item in the same list.
```

如果要在清單項目內放進引言，那 `>` 就需要縮排：

```text
*   A list item with a blockquote:

    > This is a blockquote
    > inside a list item.
```

如果要放程式碼區塊的話，該區塊就需要縮排*兩次*，也就是 8 個空白或是兩個 tab：

```text
*   A list item with a code block:

        <code goes here>
```

當然，項目清單很可能會不小心產生，像是下面這樣的寫法：

```text
1986. What a great season.
```

換句話說，也就是在行首出現*數字-句點-空白*，要避免這樣的狀況，你可以在句點前面加上反斜線。

```text
1986\. What a great season.
```

### 程式碼區塊



和程式相關的寫作或是標籤語言原始碼通常會有已經排版好的程式碼區塊，通常這些區塊我們並不希望它以一般段落文件的方式去排版，而是照原來的樣子顯示，Markdown 會用 `<pre>` 和 `<code>` 標籤來把程式碼區塊包起來。

要在 Markdown 中建立程式碼區塊很簡單，只要簡單地縮排 4 個空白或是 1 個 tab 就可以，例如，下面的輸入：

```text
This is a normal paragraph:

    This is a code block.
```

Markdown 會轉換成：

```text
<p>This is a normal paragraph:</p>

<pre><code>This is a code block.
</code></pre>
```

這個每行一階的縮排（4 個空白或是 1 個 tab），都會被移除，例如：

```text
Here is an example of AppleScript:

    tell application "Foo"
        beep
    end tell
```

會被轉換為：

```text
<p>Here is an example of AppleScript:</p>

<pre><code>tell application "Foo"
    beep
end tell
</code></pre>
```

一個程式碼區塊會一直持續到沒有縮排的那一行（或是文件結尾）。

在程式碼區塊裡面， `&` 、 `<` 和 `>` 會自動轉成 HTML 實體，這樣的方式讓你非常容易使用 Markdown 插入範例用的 HTML 原始碼，只需要複製貼上，再加上縮排就可以了，剩下的 Markdown 都會幫你處理，例如：

```text
    <div class="footer">
        &copy; 2004 Foo Corporation
    </div>
```

會被轉換為：

```text
<pre><code>&lt;div class="footer"&gt;
    &amp;copy; 2004 Foo Corporation
&lt;/div&gt;
</code></pre>
```

程式碼區塊中，一般的 Markdown 語法不會被轉換，像是星號便只是星號，這表示你可以很容易地以 Markdown 語法撰寫 Markdown 語法相關的文件。

### 分隔線



你可以在一行中用三個或以上的星號、減號、底線來建立一個分隔線，行內不能有其他東西。你也可以在星號中間插入空白。下面每種寫法都可以建立分隔線：

```text
* * *

***

*****

- - -

---------------------------------------
```

------

## 區段元素



### 連結



Markdown 支援兩種形式的連結語法： *行內*和*參考*兩種形式。

不管是哪一種，連結的文字都是用 [方括號] 來標記。

要建立一個行內形式的連結，只要在方塊括號後面馬上接著括號並插入網址連結即可，如果你還想要加上連結的 title 文字，只要在網址後面，用雙引號把 title 文字包起來即可，例如：

```text
This is [an example](http://example.com/ "Title") inline link.

[This link](http://example.net/) has no title attribute.
```

會產生：

```text
<p>This is <a href="http://example.com/" title="Title">
an example</a> inline link.</p>

<p><a href="http://example.net/">This link</a> has no
title attribute.</p>
```

如果你是要連結到同樣主機的資源，你可以使用相對路徑：

```text
See my [About](/about/) page for details.   
```

參考形式的連結使用另外一個方括號接在連結文字的括號後面，而在第二個方括號裡面要填入用以辨識連結的標籤：

```text
This is [an example][id] reference-style link.
```

你也可以選擇性地在兩個方括號中間加上空白：

```text
This is [an example] [id] reference-style link.
```

接著，在文件的任意處，你可以把這個標籤的連結內容定義出來：

```text
[id]: http://example.com/  "Optional Title Here"
```

連結定義的形式為：

- 方括號，裡面輸入連結的辨識用標籤
- 接著一個冒號
- 接著一個以上的空白或 tab
- 接著連結的網址
- 選擇性地接著 title 內容，可以用單引號、雙引號或是括弧包著

下面這三種連結的定義都是相同：

```text
[foo]: http://example.com/  "Optional Title Here"
[foo]: http://example.com/  'Optional Title Here'
[foo]: http://example.com/  (Optional Title Here)
```

**請注意：**有一個已知的問題是 Markdown.pl 1.0.1 會忽略單引號包起來的連結 title。

連結網址也可以用方括號包起來：

```text
[id]: <http://example.com/>  "Optional Title Here"
```

你也可以把 title 屬性放到下一行，也可以加一些縮排，網址太長的話，這樣會比較好看：

```text
[id]: http://example.com/longish/path/to/resource/here
    "Optional Title Here"
```

網址定義只有在產生連結的時候用到，並不會直接出現在文件之中。

連結辨識標籤可以有字母、數字、空白和標點符號，但是並*不*區分大小寫，因此下面兩個連結是一樣的：

```text
[link text][a]
[link text][A]
```

*預設的連結標籤*功能讓你可以省略指定連結標籤，這種情形下，連結標籤和連結文字會視為相同，要用預設連結標籤只要在連結文字後面加上一個空的方括號，如果你要讓 "Google" 連結到 google.com，你可以簡化成：

```text
[Google][]
```

然後定義連結內容：

```text
[Google]: http://google.com/
```

由於連結文字可能包含空白，所以這種簡化的標籤內也可以包含多個文字：

```text
Visit [Daring Fireball][] for more information.
```

然後接著定義連結：

```text
[Daring Fireball]: http://daringfireball.net/
```

連結的定義可以放在文件中的任何一個地方，我比較偏好直接放在連結出現段落的後面，你也可以把它放在文件最後面，就像是註解一樣。

下面是一個參考式連結的範例：

```text
I get 10 times more traffic from [Google] [1] than from
[Yahoo] [2] or [MSN] [3].

  [1]: http://google.com/        "Google"
  [2]: http://search.yahoo.com/  "Yahoo Search"
  [3]: http://search.msn.com/    "MSN Search"
```

如果改成用連結名稱的方式寫：

```text
I get 10 times more traffic from [Google][] than from
[Yahoo][] or [MSN][].

  [google]: http://google.com/        "Google"
  [yahoo]:  http://search.yahoo.com/  "Yahoo Search"
  [msn]:    http://search.msn.com/    "MSN Search"
```

上面兩種寫法都會產生下面的 HTML。

```text
<p>I get 10 times more traffic from <a href="http://google.com/"
title="Google">Google</a> than from
<a href="http://search.yahoo.com/" title="Yahoo Search">Yahoo</a>
or <a href="http://search.msn.com/" title="MSN Search">MSN</a>.</p>
```

下面是用行內形式寫的同樣一段內容的 Markdown 文件，提供作為比較之用：

```text
I get 10 times more traffic from [Google](http://google.com/ "Google")
than from [Yahoo](http://search.yahoo.com/ "Yahoo Search") or
[MSN](http://search.msn.com/ "MSN Search").
```

參考式的連結其實重點不在於它比較好寫，而是它比較好讀，比較一下上面的範例，使用參考式的文章本身只有 81 個字元，但是用行內形式的連結卻會增加到 176 個字元，如果是用純 HTML 格式來寫，會有 234 個字元，在 HTML 格式中，標籤比文字還要多。

使用 Markdown 的參考式連結，可以讓文件更像是瀏覽器最後產生的結果，讓你可以把一些標記相關的資訊移到段落文字之外，你就可以增加連結而不讓文章的閱讀感覺被打斷。

### 強調



Markdown 使用星號（`*`）和底線（`_`）作為標記強調字詞的符號，被 `*` 或 `_` 包圍的字詞會被轉成用 `<em>` 標籤包圍，用兩個 `*` 或 `_` 包起來的話，則會被轉成 `<strong>`，例如：

```text
*single asterisks*

_single underscores_

**double asterisks**

__double underscores__
```

會轉成：

```text
<em>single asterisks</em>

<em>single underscores</em>

<strong>double asterisks</strong>

<strong>double underscores</strong>
```

你可以隨便用你喜歡的樣式，唯一的限制是，你用什麼符號開啟標籤，就要用什麼符號結束。

強調也可以直接插在文字中間：

```text
un*frigging*believable
```

但是如果你的 `*` 和 `_` 兩邊都有空白的話，它們就只會被當成普通的符號。

如果要在文字前後直接插入普通的星號或底線，你可以用反斜線：

```text
\*this text is surrounded by literal asterisks\*
```

### 程式碼



如果要標記一小段行內程式碼，你可以用反引號把它包起來（```），例如：

```text
Use the `printf()` function.
```

會產生：

```text
<p>Use the <code>printf()</code> function.</p>
```

如果要在程式碼區段內插入反引號，你可以用多個反引號來開啟和結束程式碼區段：

```text
``There is a literal backtick (`) here.``
```

這段語法會產生：

```text
<p><code>There is a literal backtick (`) here.</code></p>
```

程式碼區段的起始和結束端都可以放入一個空白，起始端後面一個，結束端前面一個，這樣你就可以在區段的一開始就插入反引號：

```text
A single backtick in a code span: `` ` ``

A backtick-delimited string in a code span: `` `foo` ``
```

會產生：

```text
<p>A single backtick in a code span: <code>`</code></p>

<p>A backtick-delimited string in a code span: <code>`foo`</code></p>
```

在程式碼區段內，`&` 和方括號都會被轉成 HTML 實體，這樣會比較容易插入 HTML 原始碼，Markdown 會把下面這段：

```text
Please don't use any `<blink>` tags.
```

轉為：

```text
<p>Please don't use any <code>&lt;blink&gt;</code> tags.</p>
```

你也可以這樣寫：

```text
`&#8212;` is the decimal-encoded equivalent of `&mdash;`.
```

以產生：

```text
<p><code>&amp;#8212;</code> is the decimal-encoded
equivalent of <code>&amp;mdash;</code>.</p>
```

### 圖片



很明顯地，要在純文字應用中設計一個 「自然」的語法來插入圖片是有一定難度的。

Markdown 使用一種和連結很相似的語法來標記圖片，同樣也允許兩種樣式： *行內*和*參考*。

行內圖片的語法看起來像是：

```text
![Alt text](/path/to/img.jpg)

![Alt text](/path/to/img.jpg "Optional title")
```

詳細敘述如下：

- 一個驚嘆號 `!`
- 接著一個方括號，裡面放上圖片的替代文字
- 接著一個普通括號，裡面放上圖片的網址，最後還可以用引號包住並加上
  選擇性的 'title' 文字。

參考式的圖片語法則長得像這樣：

```text
![Alt text][id]
```

「id」是圖片參考的名稱，圖片參考的定義方式則和連結參考一樣：

```text
[id]: url/to/image  "Optional title attribute"
```

到目前為止， Markdown 還沒有辦法指定圖片的寬高，如果你需要的話，你可以使用普通的 `<img>` 標籤。

------

## 其它



### 自動連結



Markdown 支援比較簡短的自動連結形式來處理網址和電子郵件信箱，只要是用方括號包起來， Markdown 就會自動把它轉成連結，連結的文字就和連結位置一樣，例如：

```text
<http://example.com/>
```

Markdown 會轉為：

```text
<a href="http://example.com/">http://example.com/</a>
```

自動的郵件連結也很類似，只是 Markdown 會先做一個編碼轉換的過程，把文字字元轉成 16 進位碼的 HTML 實體，這樣的格式可以混淆一些不好的信箱地址收集機器人，例如：

```text
<address@example.com>
```

Markdown 會轉成：

```text
<a href="&#x6D;&#x61;i&#x6C;&#x74;&#x6F;:&#x61;&#x64;&#x64;&#x72;&#x65;
&#115;&#115;&#64;&#101;&#120;&#x61;&#109;&#x70;&#x6C;e&#x2E;&#99;&#111;
&#109;">&#x61;&#x64;&#x64;&#x72;&#x65;&#115;&#115;&#64;&#101;&#120;&#x61;
&#109;&#x70;&#x6C;e&#x2E;&#99;&#111;&#109;</a>
```

在瀏覽器裡面，這段字串會變成一個可以點擊的「[address@example.com](mailto:address@example.com)」連結。

（這種作法雖然可以混淆不少的機器人，但並無法全部擋下來，不過這樣也比什麼都不做好些。無論如何，公開你的信箱終究會引來廣告信件的。）

### 跳脫字元



Markdown 可以利用反斜線來插入一些在語法中有其它意義的符號，例如：如果你想要用星號加在文字旁邊的方式來做出強調效果（但不用 `<em>` 標籤），你可以在星號的前面加上反斜線：

```text
\*literal asterisks\*
```

Markdown 支援在下面這些符號前面加上反斜線來幫助插入普通的符號：

```text
\   反斜線
`   反引號
*   星號
_   底線
{}  大括號
[]  方括號
()  括號
#   井字號
+   加號
-   減號
.   英文句點
!   驚嘆號
```

## 感謝

感謝 [leafy7382](https://twitter.com/#!/leafy7382) 協助翻譯，[hlb](http://iamhlb.com/)、[Randylien](http://twitter.com/randylien) 幫忙潤稿，[ethantw](https://twitter.com/#!/ethantw) 的[漢字標準格式・CSS Reset](http://ethantw.net/projects/han/)， [WM](http://kidwm.net/) 回報文字錯誤。
Copyright © 2018 Powered by [MWeb](http://www.mweb.im/)    [Official Reseller](https://zh.mweb.im/reseller.html)   host on [Coding.net Pages](https://coding.net/) .

[Back to top](https://zh.mweb.im/markdown-syntax-guide-full-version-zh.html#)