Private Sub Worksheet_Change(ByVal Target As Range)
Dim rng As Range, cell As Range
Dim i As Long

Set rng = Intersect(Target, Range("A:C"))
If Not rng Is Nothing Then
    On Error Resume Next
    For Each cell In Target.Columns(1).Cells
        If Application.CountA(Range("C" & cell.Row & ":E" & cell.Row)) < 3 Or _
            Application.Count(Range("C" & cell.Row & ":E" & cell.Row)) < 3 Then GoTo next_row
        Cells(cell.Row, "A").Interior.Color = _
            RGB(Cells(cell.Row, "C").Value, Cells(cell.Row, "D").Value, Cells(cell.Row, "E").Value)
            ' Column C is the Red value
            ' Column D is the Green value
            ' Column E is the Blue value
next_row:
    Next cell
End If
End Sub

