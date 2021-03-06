unit Caixa_Sangria_Login_00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TCaixa_Sangria_Login00 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Login_Mensagem: TLabel;
    Login_Senha: TEdit;
    Login_Nome: TEdit;
    Login_OK: TButton;
    Tipo_Cancelamento: TEdit;
    procedure Login_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure Login_SenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Login_OKClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Verifica_Senha();
  public
    { Public declarations }
  end;

var
  Caixa_Sangria_Login00: TCaixa_Sangria_Login00;
  Contador  : Integer;

implementation

uses Caixa_Sangria_02, Conexao_BD;

{$R *.dfm}

Procedure TCaixa_Sangria_Login00.Verifica_Senha();
Var
   ValorSenha : String;
   Fiscal     : String;

Begin
     //*** Verifica se o Usu�rio Existe ***
     ConexaoBD.SQl_Usuarios.Close;
     ConexaoBD.SQl_Usuarios.SQL.Clear;
     ConexaoBD.SQl_Usuarios.SQL.Add('Select * from Usuarios Where Usuario_Nome="'+Trim(Login_Nome.Text)+'"');
     ConexaoBD.SQl_Usuarios.Open;

     If ConexaoBD.SQl_Usuarios.RecordCount <= 0 Then
        Begin

        Login_Mensagem.Caption:='Login Recusado, Usu�rio Desconhecido...';
        Contador := Contador + 1;

        If Contador = 4 Then
           Begin
           Caixa_Sangria_Login00.Close;
        End;

        Login_Nome.SetFocus;
        Exit;

        End
     Else
        Begin

        ValorSenha := ConexaoBD.SQl_UsuariosUsuario_Senha.AsString;
        Fiscal     := ConexaoBD.SQl_UsuariosUsuario_Fiscal.AsString;

        If ValorSenha <> Login_Senha.Text Then
           Begin

           Login_Mensagem.Caption:='Login Recusado, Senha Inv�lida...';

           Contador := Contador + 1;

           If Contador = 4 Then
            Begin
              Caixa_Sangria_Login00.Close;
           End;

           Login_Senha.SetFocus;
           Exit;

        End;

        If Trim(Fiscal) <> 'S' Then
          Begin
            Login_Mensagem.Caption:='Op��o permitida somente ao Fiscal ...';

            Contador := Contador + 1;

            If Contador = 4 Then
              Begin
                Caixa_Sangria_Login00.Close;
            End;

            Login_Nome.SetFocus;
            Exit;
        End;

        Application.CreateForm(TCaixa_Sangria02,Caixa_Sangria02);
        Caixa_Sangria_Login00.Visible:= False;
        Caixa_Sangria02.ShowModal;
        Caixa_Sangria02.Destroy;
     End;
     Caixa_Sangria_Login00.Close;
End;

procedure TCaixa_Sangria_Login00.Login_NomeKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #27 Then
      Begin
      Caixa_Sangria_Login00.Close;
    End;

    If Key = #13 Then
      Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    End;
end;

procedure TCaixa_Sangria_Login00.Login_SenhaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #27 Then
      Begin
      Caixa_Sangria_Login00.Close;
    End;

    If Key = #13 Then
      Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    End;
end;

procedure TCaixa_Sangria_Login00.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #27 Then
      Begin
      Caixa_Sangria_Login00.Close;
    End;
end;

procedure TCaixa_Sangria_Login00.Login_OKClick(Sender: TObject);
begin
    Verifica_Senha();
end;

end.
