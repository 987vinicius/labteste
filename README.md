# README

# Projeto Laboratório Alliver
**Sistema de Gerenciamento de Exames e Laboratórios**

### Requisitos
- Ruby-2.7.4
- Rails 5.2.0
- Node v17.1.0
- Yarn 1.22.15

#### Configurações

Crie o arquivo `config/database.yml`

Instale as dependências JavaScript:
```

#### Iniciando

Inicie a aplicação:
```
$ bundle install

$ rails db:create

$ rails db:migrate

$ rails s

```
Instruções de uso:
```
O sistema lhe oferece duas opções de Gerenciamento: Exames e Laboratório
 sistema lhe apresenta inicialmente a tela EXAMES cadastrados:
  - com opção de buscar por nome do exame e tipo;
  - lhe apresenta uma listagem de todos os exames cadastrados;
  - lhe dar ações de visualizar, editar ou apagar determinado exame diretamente da view;
  - disponibilidade da opção de cadastro dos mesmos;
  - na opção visualizar, o sistema lhe apresenta todos os dados sobre aquele exame e
    em quais Laboratório eles são disponíveis;
  - na opção editar o sistema lhe oferece a ação modificar dados do exame;
  - na opção apagar o exame simplesmente é deletado dos exames cadastrados;
index de Laboratórios:
  - lhe apresenta uma listagem de todos os Laboratórios cadastrados;
  - lhe dar ações de visualizar, editar ou apagar determinado Laboratório diretamente da view;
  - na opção visualizar, o sistema lhe apresenta todos os dados sobre aquele exame e
    em quais Laboratório eles são disponíveis;
  - na opção editar o sistema lhe oferece a ação modificar dados do Laboratório;
  - na opção apagar o Laboratório simplesmente é deletado dos exames cadastrados;
show de Laboratórios:
  - são apresentados todos os dados daquele laboratório
  - apresento também a relação de exames cadastrados nesse laboratório
menu:
  - apresento a opção de seleção de qual index você deseja ser direcionado
```
