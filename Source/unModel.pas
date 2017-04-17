unit unModel;

interface

uses
  System.DateUtils;

type
  TProduto = Class(TObject)
  private

    FCodigo         : Integer;
    FDescricao      : String;
    FData_Cadastro  : TDate;
    FEstoque_Minimo : Real;
    FEstoque_Maximo : Real;
    FPreco_Custo    : Real;
    FPreco_Venda    : Real;

    function GetCodigo: Integer;
    procedure SetCodigo(const Value: Integer);

    function GetDescricao: String;
    procedure SetDescricao(const Value: String);

    function GetDataCadastro: TDate;
    procedure SetDataCadastro(const Value: TDate);

    function GetEstoque_Minimo: Real;
    procedure SetEstoque_Minimo(const Value: Real);

    function GetEstoque_Maximo: Real;
    procedure SetEstoque_Maximo(const Value: Real);

    function GetPreco_Custo: Real;
    procedure SetPreco_Custo(const Value: Real);

    function GetPreco_Venda: Real;
    procedure SetPreco_Venda(const Value: Real);

  public
    property Codigo         : Integer read GetCodigo         write SetCodigo;
    property Descricao      : String  read GetDescricao      write SetDescricao;
    property Data_Cadastro  : TDate   read GetDataCadastro   write SetDataCadastro;
    property Estoque_Minimo : Real    read GetEstoque_Minimo write SetEstoque_Minimo;
    property Estoque_Maximo : Real    read GetEstoque_Maximo write SetEstoque_Maximo;
    property Preco_Custo    : Real    read GetPreco_Custo    write SetPreco_Custo;
    property Preco_Venda    : Real    read GetPreco_Venda    write SetPreco_Venda;
  end;

implementation

{ TProdutos }

function TProduto.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TProduto.GetDataCadastro: TDate;
begin
  Result := FData_Cadastro;
end;

function TProduto.GetDescricao: String;
begin
  Result := FDescricao;
end;

function TProduto.GetEstoque_Maximo: Real;
begin
  Result := FEstoque_Maximo;
end;

function TProduto.GetEstoque_Minimo: Real;
begin
  Result := FEstoque_Minimo;
end;

function TProduto.GetPreco_Custo: Real;
begin
  Result := FPreco_Custo;
end;

function TProduto.GetPreco_Venda: Real;
begin
  Result := FPreco_Venda;
end;

procedure TProduto.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TProduto.SetDataCadastro(const Value: TDate);
begin
  FData_Cadastro := Value;
end;

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TProduto.SetEstoque_Maximo(const Value: Real);
begin
  FEstoque_Maximo := Value;
end;

procedure TProduto.SetEstoque_Minimo(const Value: Real);
begin
  FEstoque_Minimo := Value;
end;

procedure TProduto.SetPreco_Custo(const Value: Real);
begin
  FPreco_Custo := Value;
end;

procedure TProduto.SetPreco_Venda(const Value: Real);
begin
  FPreco_Venda := Value;
end;

end.
