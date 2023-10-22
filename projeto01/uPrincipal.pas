unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMconexao, Enter;

type
  TfrmPrincipal = class(TForm)
    MainPrincipal: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuMovimentao: TMenuItem;
    mnuRelatrios: TMenuItem;
    mnuCliente: TMenuItem;
    N1: TMenuItem;
    mnuCategoria: TMenuItem;
    mnuProduto: TMenuItem;
    N2: TMenuItem;
    mnuFechar: TMenuItem;
    mnuVendas: TMenuItem;
    mnuClienteRel: TMenuItem;
    N3: TMenuItem;
    mnuProdutoRel: TMenuItem;
    N4: TMenuItem;
    mnuVendaporData: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuCategoriaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TeclaEnter: TMREnter;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategoria;


procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(TeclaEnter);
  FreeAndNil(DTMprincipal);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  DTMprincipal:= TDTMprincipal.Create(Self);

  with DTMprincipal.ConexaoPostgreSQL do
    begin
      //PostgreSQL
      SQLHourGlass:= true;
      Protocol := 'postgresql-7';
      LibraryLocation := 'C:\projetos\projeto01\libpq74.dll';
      Port := 5432;
      User := 'abc';
      Password := '313131';
      Connected:= true;
      Database := 'delphi';

      //SQL Server
      SQLHourGlass:= true;
      Protocol := 'mssql';
      LibraryLocation := 'C:\projetos\projeto01\ntwdblib.dll';
      Port := 1433;
      User := 'delphi';
      Password := '313131';
      Connected:= true;
      Database := 'Vendas';
    end;

  TeclaEnter:= TMREnter.Create(Self);
  TeclaEnter.FocusEnabled:= true;
  TeclaEnter.FocusColor:= clInfoBk;
end;

procedure TfrmPrincipal.mnuCategoriaClick(Sender: TObject);
begin
  frmCadCategoria:= TfrmCadCategoria.Create(Self);
  frmCadCategoria.ShowModal;
  frmCadCategoria.Release;
end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
