unit unDM;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Forms, Vcl.Dialogs;

type
  TDM = class(TDataModule)
    zConexao: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function seqProdutos : Integer;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

procedure TDM.DataModuleCreate(Sender: TObject);
var
  pathRaiz : String;
begin

  pathRaiz := ExtractFilePath(Application.ExeName);
  zConexao.LibraryLocation := pathRaiz + 'sqlite3.dll';
  zConexao.Database        := pathRaiz + 'BD\CAD.db';

  try
    zConexao.Connected := True;
  except
    ShowMessage('N�o foi localizado a DLL e ou o banco de dados da aplica��o!' + #13 + 'A aplica��o ser� encerrada!');
    Application.Terminate;
  end;

end;

function TDM.seqProdutos: Integer;
var
  vAuxSeq : TZQuery;
begin

  try

    vAuxSeq            := TZQuery.Create(Self);
    vAuxSeq.Connection := zConexao;
    vAuxSeq.Close;
    vAuxSeq.SQL.Clear;
    vAuxSeq.SQL.Add('SELECT MAX(CODIGO) AS ULTIMO FROM PRODUTOS');
    vAuxSeq.Open;

    if (not vAuxSeq.IsEmpty) and (not vAuxSeq.FieldByName('ULTIMO').IsNull) then
      Result := vAuxSeq.FieldByName('ULTIMO').AsInteger + 1
    else
      Result := 1;

  finally
    FreeAndNil(vAuxSeq);
  end;

end;

end.
