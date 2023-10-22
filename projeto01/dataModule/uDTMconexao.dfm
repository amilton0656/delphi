object DTMprincipal: TDTMprincipal
  OldCreateOrder = False
  Height = 225
  Width = 298
  object ConexaoPostgreSQL: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Connected = True
    SQLHourGlass = True
    HostName = 'amiltonHome'
    Port = 0
    Database = 'delphi'
    User = 'abc'
    Password = '313131'
    Protocol = 'postgresql-7'
    LibraryLocation = 'C:\projetos\projeto01\libpq74.dll'
    Left = 48
    Top = 32
  end
  object ConexaoSQLServer: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Connected = True
    HostName = 'AMILTONHOME'
    Port = 1433
    Database = 'Vendas'
    User = 'delphi'
    Password = '313131'
    Protocol = 'mssql'
    LibraryLocation = 'C:\projetos\projeto01\ntwdblib.dll'
    Left = 192
    Top = 32
  end
end
