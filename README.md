# Sistema de Pedidos de Venda

## Descrição

Aplicação desktop desenvolvida em Delphi para gerenciamento de pedidos de venda, permitindo a inclusão de clientes, produtos e controle completo dos itens do pedido.

---

## Tecnologias Utilizadas

* Delphi Community Edition 12
* MySQL Community Server 8.0
* FireDAC (conexão com banco de dados)

---

## Pré-requisitos

Antes de executar o sistema, certifique-se de possuir:

* MySQL Server instalado e em execução
* Biblioteca de conexão (DLL):

  * libmariadb.dll ou libmysql.dll

A DLL deve estar na mesma pasta do executável ou configurada no PATH do sistema.

---

## Configuração do Banco de Dados

Os scripts SQL estão disponíveis na pasta do projeto:

* `schema.sql` → criação do banco, tabelas e configuração de privilégios
* `seed.sql` → carga de dados fictícios para teste

### Passos para execução

1. Acesse o MySQL (Workbench, DBeaver ou outro cliente)
2. Execute o arquivo `schema.sql`
3. Execute o arquivo `seed.sql`

---

## Configuração de Acesso (Importante)

Após executar o `schema.sql`, é necessário garantir que o usuário tenha permissão adequada de acesso.

Execute o comando abaixo no MySQL (caso necessário):

```sql
ALTER USER 'seu_usuario'@'localhost' IDENTIFIED WITH mysql_native_password BY 'sua_senha';
FLUSH PRIVILEGES;
```

---

## Configuração da Conexão no Projeto

Antes de compilar o projeto:

1. Acesse a unit `uMySQLConnection`
2. Verifique e ajuste os parâmetros de conexão, se necessário:

* Servidor (Server)
* Porta (Port)
* Usuário (UserName)
* Senha (Password)

Exemplo:

* Caso utilize usuário ou senha diferentes do padrão local, é necessário atualizar esses valores manualmente no código.

---

## Como Executar

1. Compile o projeto no Delphi
2. Certifique-se que:

   * O MySQL está ativo
   * A DLL está disponível
3. Execute o sistema

---

## Funcionalidades

Cliente

* Informar código do cliente
* Carregar automaticamente nome, cidade e UF
* Validação de cliente inexistente

Produtos

* Inserção manual de código, quantidade e valor unitário
* Carregamento automático da descrição

Itens do Pedido

* Adição de produtos em grid
* Permite produtos repetidos
* Exibição de código, descrição, quantidade, valor unitário e valor total

Edição de Itens

* Navegação com teclado (setas)
* ENTER para editar item
* Alteração de quantidade e valor unitário
* Atualização utilizando o mesmo botão de inserção

Exclusão de Itens

* Tecla DEL remove item
* Confirmação antes da exclusão

Totais

* Cálculo automático do valor total do pedido
* Atualização em inserções, edições e exclusões

Gravação

* Persistência em banco de dados:

  * Dados gerais do pedido
  * Itens do pedido
* Uso de transações com commit e rollback

Consulta de Pedidos

* Carregar pedido existente informando número
* Preenchimento automático de cliente e itens

Exclusão de Pedidos

* Remoção completa do pedido e seus itens

---

## Arquitetura

O projeto foi estruturado utilizando conceitos de orientação a objetos:

* Model → entidades e regras de negócio
* Controller → controle de fluxo e transações
* View → interface com o usuário
* Infra → conexão com banco de dados

---

## Estrutura do Projeto

```plaintext
src/
 ├── model/
 ├── controller/
 ├── view/
 ├── infra/
 └── common/
```

---

## Observações

* O sistema depende da DLL de conexão com MySQL
* Certifique-se de que a versão da DLL é compatível (x86/x64) com o executável
* O banco de dados deve estar acessível no momento da execução

---

## Considerações

O sistema foi desenvolvido com foco em:

* Organização e legibilidade do código
* Uso de SQL para manipulação de dados
* Controle de integridade com transações
* Experiência de uso simples e funcional

---
