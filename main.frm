VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7845
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10380
   LinkTopic       =   "Form1"
   ScaleHeight     =   7845
   ScaleWidth      =   10380
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
   Begin VB.CommandButton Command1 
      Caption         =   "GO"
      Height          =   855
      Left            =   3240
      TabIndex        =   4
      Top             =   4560
      Width           =   2895
   End
   Begin VB.TextBox Text2 
      Height          =   2415
      Left            =   4440
      TabIndex        =   1
      Text            =   "0"
      Top             =   1920
      Width           =   4215
   End
   Begin VB.TextBox Text1 
      Height          =   2415
      Left            =   720
      TabIndex        =   0
      Text            =   "32"
      Top             =   1920
      Width           =   3375
   End
   Begin VB.Label Label2 
      Caption         =   "C"
      Height          =   615
      Left            =   4560
      TabIndex        =   3
      Top             =   1200
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "F"
      Height          =   375
      Left            =   1080
      TabIndex        =   2
      Top             =   1320
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public flag
Private Sub Command1_Click()

If flag = 1 Then
Text2.Text = Str$((Val(Text1.Text) - 32) / 1.8)

Else
Text1.Text = Str$((Val(Text2.Text) * 1.8) + 32)

End If


End Sub

Private Sub Text1_Change()
flag = 1
button1.Caption = "c=(f-32)/1.8"

End Sub

Private Sub Text2_Change()
button1.Caption = "f=c*1.8+32"
flag = 2
End Sub
