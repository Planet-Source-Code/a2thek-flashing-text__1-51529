VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000012&
   Caption         =   "Flashing Text"
   ClientHeight    =   1020
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3390
   Icon            =   "flashing.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   1020
   ScaleWidth      =   3390
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Interval        =   1
      Left            =   1680
      Top             =   0
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   2520
      Top             =   0
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000012&
      Caption         =   "Flashing Text"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   735
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
Label1.ForeColor = &H800000
Timer2.Enabled = True
Timer1.Enabled = False

End Sub

Private Sub Timer2_Timer()
Label1.ForeColor = &HFF0000
Timer1.Enabled = True
Timer2.Enabled = False

End Sub
