unit uTelaHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls, Vcl.ExtCtrls,
  uDTMconexao, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmTelaHeranca = class(TForm)
    pgcPrincipal: TPageControl;
    pnlPrincipal: TPanel;
    TabListagem: TTabSheet;
    TabManutencao: TTabSheet;
    Panel1: TPanel;
    mskPesquisar: TMaskEdit;
    btnPesquisar: TBitBtn;
    grdListagem: TDBGrid;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    BitBtn3: TBitBtn;
    btnGravar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnNavegacao: TDBNavigator;
    qryListagem: TZQuery;
    dtsListagem: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaHeranca: TfrmTelaHeranca;

implementation

{$R *.dfm}


procedure TfrmTelaHeranca.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTelaHeranca.FormCreate(Sender: TObject);
begin
  grdListagem.DataSource:= dtsListagem;
  dtsListagem.DataSet:= qryListagem;
  qryListagem.Connection:= DTMprincipal.ConexaoPostgreSQL;
  btnNavegacao.DataSource:= dtsListagem;
end;

procedure TfrmTelaHeranca.ControlarBotoes(btnNovo, btnAlterar, btnCancelar,
          btnGravar, btnApagar: TBitBtn; Navegador: TDBNavigator;
          pgcPrincipal: TPageControl)
begin

end;

end.
