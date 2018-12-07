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
