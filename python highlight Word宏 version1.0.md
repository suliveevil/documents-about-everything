# Python highlight Word宏

## Python Keywords



```python
False               class               from                or
None                continue            global              pass
True                def                 if                  raise
and                 del                 import              return
as                  elif                in                  try
assert              else                is                  while
async               except              lambda              with
await               finally             nonlocal            yield
break               for                 not                 
```

## PythonSyntaxHighlight（可用）

```vb
'script to high light code In document

'keyword
Private Function isKeyword(w) As Boolean
    Dim keys As New Collection
    With keys
    .Add "False": .Add "class": .Add "from": .Add "or": .Add "None": .Add "continue"
    .Add "global": .Add "pass": .Add "True": .Add "def": .Add "if": .Add "raise"
    .Add "and": .Add "del": .Add "import": .Add "return": .Add "as": .Add "elif"
    .Add "in": .Add "try": .Add "assert": .Add "else": .Add "is": .Add "while"
    .Add "async": .Add "except": .Add "lambda": .Add "with": .Add "not"
    .Add "await": .Add "finally": .Add "nonlocal": .Add "yield": .Add "break": .Add "for"
    End With
    isKeyword = isSpecial(w, keys)
End Function

'special
Private Function isSpecial(ByVal w As String, ByRef col As Collection) As Boolean
    For Each i In col
        If w = i Then
            isSpecial = True
            Exit Function
        End If
    Next
    isspeical = False
End Function

'operator
Private Function isOperator(w) As Boolean
    Dim ops As New Collection
    With ops
        .Add "+": .Add "-": .Add "*": .Add "/": .Add "%": .Add "**": .Add "//"
        .Add "==": .Add "!=": .Add ">": .Add "<": .Add ">=": .Add "<="
        .Add "=": .Add "+=": .Add "-=": .Add "*=": .Add "/=": .Add "%="
        .Add "**=": .Add "//=": .Add "and": .Add "or": .Add "not": .Add "&"
        .Add "|": .Add "^": .Add "~": .Add "<<": .Add ">>": .Add "in": .Add "not in"
        .Add "is": .Add "is not"
    End With
    isOperator = isSpecial(w, ops)
End Function

'type
Private Function isType(ByVal w As String) As Boolean
    Dim types As New Collection
    With types
        .Add "SELECT": .Add "FROM": .Add "WHERE": .Add "INSERT": .Add "INTO": .Add "VALUES": .Add "ORDER"
        .Add "BY": .Add "LIMIT": .Add "ASC": .Add "DESC": .Add "UPDATE": .Add "DELETE": .Add "COUNT"
        .Add "html": .Add "head": .Add "title": .Add "body": .Add "p": .Add "h1": .Add " h2"
        .Add "h3": .Add "center": .Add "ul": .Add "ol": .Add "li": .Add "a"
        .Add "input": .Add "form": .Add "b"
    End With
    isType = isSpecial(w, types)
End Function

'syntax highlight
Sub SyntaxHighlight()
    Dim wordCount As Integer
    Dim d As Integer
    ' set the style of selection
Selection.Style = "python"
    d = 0
    wordCount = Selection.Words.Count
    Selection.StartOf wdWord
    While d < wordCount
        d = d + Selection.MoveRight(wdWord, 1, wdExtend)
        w = Selection.Text
        If isKeyword(Trim(w)) = True Then
            Selection.Font.Color = wdColorBlue
        ElseIf isType(Trim(w)) = True Then
            Selection.Font.Color = wdColorDarkRed
            Selection.Font.Bold = True
        ElseIf isOperator(Trim(w)) = True Then
            Selection.Font.Color = wdColorBrown
        ElseIf Trim(w) = "//" Then
            'lIne comment
            Selection.MoveEnd wdLine, 1
            commentWords = Selection.Words.Count
            d = d + commentWords
            Selection.Font.Color = wdColorGreen
            Selection.MoveStart wdWord, commentWords
         ElseIf Trim(w) = "/*" Then
            'block comment
            While Selection.Characters.Last <> "/"
                Selection.MoveLeft wdCharacter, 1, wdExtend
                Selection.MoveEndUntil ("*")
                Selection.MoveRight wdCharacter, 2, wdExtend
            Wend
            commentWords = Selection.Words.Count
            d = d + commentWords
            Selection.Font.Color = wdColorGreen
            Selection.MoveStart wdWord, commentWords
        End If
        'move the start of selection to next word
        Selection.MoveStart wdWord
    Wend
    ' prepare For set lIne number
    Selection.MoveLeft wdWord, wordCount, wdExtend
    SetLIneNumber
End Sub
Private Sub SetLIneNumber()
    Dim lines As Integer
    lines = Selection.Paragraphs.Count
    Selection.StartOf wdParagraph
    For l = 1 To lines
        lIneNum = l & " "
        If l < 10 Then
            lIneNum = lIneNum & " "
        End If
        Selection.Text = lIneNum
        Selection.Font.Bold = False
        Selection.Font.Color = wdColorAutomatic
        p = Selection.MoveDown(wdLine, 1, wdMove)
        Selection.StartOf wdLine
    Next
End Sub
Sub PythonSyntaxHighlight()
'
' PythonSyntaxHighlight 宏
'
'

End Sub

```



## Python 语法高亮 Word宏(从c修改，不完善)

```vb
'script to high light code In document

'keyword
Private Function isKeyword(w) As Boolean
    Dim keys As New Collection
    With keys
    .Add "False": .Add "class": .Add "from": .Add "or": .Add "None": .Add "continue"
    .Add "global": .Add "pass": .Add "True": .Add "def": .Add "if": .Add "raise"
    .Add "and": .Add "del": .Add "import": .Add "return": .Add "as": .Add "elif"
    .Add "in": .Add "try": .Add "assert": .Add "else": .Add "is": .Add "while"
    .Add "async": .Add "except": .Add "lambda": .Add "with": .Add "not"
    .Add "await": .Add "finally": .Add "nonlocal": .Add "yield": .Add "break": .Add "for"
    End With
    isKeyword = isSpecial(w, keys)
End Function
Private Function isSpecial(ByVal w As String, ByRef col As Collection) As Boolean
    For Each i In col
        If w = i Then
            isSpecial = True
            Exit Function
        End If
    Next
    isspeical = False
End Function

'operator
Private Function isOperator(w) As Boolean
    Dim ops As New Collection
    With ops
        .Add "+": .Add "-": .Add "*": .Add "/": .Add "%": .Add "**": .Add "//"
        .Add "==": .Add "!=": .Add ">": .Add "<": .Add ">=": .Add "<="
        .Add "=": .Add "+=": .Add "-=": .Add "*=": .Add "/=": .Add "%="
		.Add "**=": .Add "//=" .Add "and": .Add "or": .Add "not": .Add "&":
		.Add "|": .Add "^": .Add "~": .Add "<<": .Add ">>": .Add "in": .Add "not in"
		.Add "is": .Add "is not"
    End With
    isOperator = isSpecial(w, ops)
End Function

'type
Private Function isType(ByVal w As String) As Boolean
    Dim types As New Collection
    With types
        .Add "SELECT": .Add "FROM": .Add "WHERE": .Add "INSERT": .Add "INTO": .Add "VALUES": .Add "ORDER"
        .Add "BY": .Add "LIMIT": .Add "ASC": .Add "DESC": .Add "UPDATE": .Add "DELETE": .Add "COUNT"
        .Add "html": .Add "head": .Add "title": .Add "body": .Add "p": .Add "h1": .Add " h2"
        .Add "h3": .Add "center": .Add "ul": .Add "ol": .Add "li": .Add "a"
        .Add "input": .Add "form": .Add "b"
    End With
    isType = isSpecial(w, types)
End Function

'syntax highlight
Sub SyntaxHighlight()
    Dim wordCount As Integer
    Dim d As Integer
    ' set the style of selection
Selection.Style = "python"
    d = 0
    wordCount = Selection.Words.Count
    Selection.StartOf wdWord
    While d < wordCount
        d = d + Selection.MoveRight(wdWord, 1, wdExtend)
        w = Selection.Text
        If isKeyword(Trim(w)) = True Then
            Selection.Font.Color = wdColorBlue
        ElseIf isType(Trim(w)) = True Then
            Selection.Font.Color = wdColorDarkRed
            Selection.Font.Bold = True
        ElseIf isOperator(Trim(w)) = True Then
            Selection.Font.Color = wdColorBrown
        ElseIf Trim(w) = "//" Then
            'lIne comment
            Selection.MoveEnd wdLine, 1
            commentWords = Selection.Words.Count
            d = d + commentWords
            Selection.Font.Color = wdColorGreen
            Selection.MoveStart wdWord, commentWords
         ElseIf Trim(w) = "/*" Then
            'block comment
            While Selection.Characters.Last <> "/"
                Selection.MoveLeft wdCharacter, 1, wdExtend
                Selection.MoveEndUntil ("*")
                Selection.MoveRight wdCharacter, 2, wdExtend
            Wend
            commentWords = Selection.Words.Count
            d = d + commentWords
            Selection.Font.Color = wdColorGreen
            Selection.MoveStart wdWord, commentWords
        End If
        'move the start of selection to next word
        Selection.MoveStart wdWord
    Wend
    ' prepare For set lIne number
    Selection.MoveLeft wdWord, wordCount, wdExtend
    SetLIneNumber
End Sub
Private Sub SetLIneNumber()
    Dim lines As Integer
    lines = Selection.Paragraphs.Count
    Selection.StartOf wdParagraph
    For l = 1 To lines
        lIneNum = l & " "
        If l < 10 Then
            lIneNum = lIneNum & " "
        End If
        Selection.Text = lIneNum
        Selection.Font.Bold = False
        Selection.Font.Color = wdColorAutomatic
        p = Selection.MoveDown(wdLine, 1, wdMove)
        Selection.StartOf wdLine
    Next 
End Sub
```



## C语言 语法高亮 Word宏

```vb
'script to high light code In document
Private Function isKeyword(w) As Boolean
    Dim keys As New Collection
    With keys
        .Add "if": .Add "else": .Add "elseif": .Add "case": .Add "switch": .Add "break"
        .Add "for": .Add "continue": .Add "do": .Add "while": .Add "foreach": .Add "echo"
        .Add "define": .Add "array": .Add "NULL": .Add "function": .Add "include": .Add "return"
        .Add "global": .Add "as": .Add "die": .Add "header": .Add "this": .Add "empty"
        .Add "isset": .Add "mysql_fetch_assoc": .Add "class": .Add "style"
        .Add "name": .Add "value": .Add "type": .Add "width": .Add "_POST": .Add "_GET"
    End With
    isKeyword = isSpecial(w, keys)
End Function
Private Function isSpecial(ByVal w As String, ByRef col As Collection) As Boolean
    For Each i In col
        If w = i Then
            isSpecial = True
            Exit Function
        End If
    Next
    isspeical = False
End Function
Private Function isOperator(w) As Boolean
    Dim ops As New Collection
    With ops
        .Add "+": .Add "-": .Add "*": .Add "/": .Add "&": .Add "^": .Add ";"
        .Add "%": .Add "#": .Add "!": .Add ":": .Add ",": .Add "."
        .Add "||": .Add "&&": .Add "|": .Add "=": .Add "++": .Add "--"
        .Add "'": .Add """"
    End With
    isOperator = isSpecial(w, ops)
End Function
Private Function isType(ByVal w As String) As Boolean
    Dim types As New Collection
    With types
        .Add "SELECT": .Add "FROM": .Add "WHERE": .Add "INSERT": .Add "INTO": .Add "VALUES": .Add "ORDER"
        .Add "BY": .Add "LIMIT": .Add "ASC": .Add "DESC": .Add "UPDATE": .Add "DELETE": .Add "COUNT"
        .Add "html": .Add "head": .Add "title": .Add "body": .Add "p": .Add "h1": .Add " h2"
        .Add "h3": .Add "center": .Add "ul": .Add "ol": .Add "li": .Add "a"
        .Add "input": .Add "form": .Add "b"
    End With
    isType = isSpecial(w, types)
End Function
Sub SyntaxHighlight()
    Dim wordCount As Integer
    Dim d As Integer
    ' set the style of selection
    Selection.Style = "ccode"
    d = 0
    wordCount = Selection.Words.Count
    Selection.StartOf wdWord
    While d < wordCount
        d = d + Selection.MoveRight(wdWord, 1, wdExtend)
        w = Selection.Text
        If isKeyword(Trim(w)) = True Then
            Selection.Font.Color = wdColorBlue
        ElseIf isType(Trim(w)) = True Then
            Selection.Font.Color = wdColorDarkRed
            Selection.Font.Bold = True
        ElseIf isOperator(Trim(w)) = True Then
            Selection.Font.Color = wdColorBrown
        ElseIf Trim(w) = "//" Then
            'lIne comment
            Selection.MoveEnd wdLine, 1
            commentWords = Selection.Words.Count
            d = d + commentWords
            Selection.Font.Color = wdColorGreen
            Selection.MoveStart wdWord, commentWords
         ElseIf Trim(w) = "/*" Then
            'block comment
            While Selection.Characters.Last <> "/"
                Selection.MoveLeft wdCharacter, 1, wdExtend
                Selection.MoveEndUntil ("*")
                Selection.MoveRight wdCharacter, 2, wdExtend
            Wend
            commentWords = Selection.Words.Count
            d = d + commentWords
            Selection.Font.Color = wdColorGreen
            Selection.MoveStart wdWord, commentWords
        End If
        'move the start of selection to next word
        Selection.MoveStart wdWord
    Wend
    ' prepare For set lIne number
    Selection.MoveLeft wdWord, wordCount, wdExtend
    SetLIneNumber
End Sub
Private Sub SetLIneNumber()
    Dim lines As Integer
    lines = Selection.Paragraphs.Count
    Selection.StartOf wdParagraph
    For l = 1 To lines
        lIneNum = l & " "
        If l < 10 Then
            lIneNum = lIneNum & " "
        End If
        Selection.Text = lIneNum
        Selection.Font.Bold = False
        Selection.Font.Color = wdColorAutomatic
        p = Selection.MoveDown(wdLine, 1, wdMove)
        Selection.StartOf wdLine
    Next 
End Sub
```

