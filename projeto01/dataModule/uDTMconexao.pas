unit uDTMconexao;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection;

type
  TDTMprincipal = class(TDataModule)
    ConexaoPostgreSQL: TZConnection;
    ConexaoSQLServer: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTMprincipal: TDTMprincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
