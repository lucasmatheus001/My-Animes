# Bem-vindo(a) ao My Animes!

<h4 align="center"> 🚧 My Animes Em construção... 🚧 </h4>

### Pré-requisitos 

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas: [Git](https://git-scm.com), [Node.js](https://nodejs.org/en/), [Yarn](https://yarnpkg.com/), [Ruby On Rails](https://guides.rubyonrails.org/getting_started.html) e [PostgreSQL](https://www.postgresql.org/) . Além disto é bom ter um editor para trabalhar com o código como [VSCode](https://code.visualstudio.com/).

## Resumo

Este é uma sistema para gerenciamento de animes , podendo o usuário salvar os animes cadastrados na sua lista de favoritos ou seguindo.

## O que foi utilizado até o momento?

 1. Rails 6
 2. Yarn 1.22.4
 3. Node 16.22.4
 4. PostgreSQL
 5. Bootstrap 5
 6. Devise
 7. Enumerize
 8. Testes(Rspec, simpleCov, FactoryBot, Faker)
 
## Principais funcionalidades

 - [x] Cadastro de usuário (perfil padrão *read*);
 - [x] Login;
 - [x] CRUD de usuários (apenas para *admin*);
 - [x] CRUD de animes (*admin* e *librarian*);
 - [x] Favoritar anime (*read*);
 - [x] DesFavoritar anime (*read*);
 - [x] Seguir anime (*read*);
 - [x] Deixar de seguir anime (*read*);
 - [x] Listar animes (*read*);
 - [x] Listar animes favoritos (*read*);
 - [x] Listar animes seguidos (*read);

## Pendências

 - [x] Documentação geral do sistema (README);
 - [ ] melhorar as seeds
 - [ ] melhorar os testes
 - [ ] regras de negócios
 - [ ] Aplicar corretamente a internacionalização na aplicação;
 - [ ] Implementação do CRUD de usuário;

## Instalando o projeto

Altere as credenciais do banco em `config/database.yml`, em desenvolvimento e test já estão definidas as seguintes configurações:

 - Host: localhost
 - Porta: 5432
 - Usuário: `DATABASE_USER`
 - Senha: `DATABASE_PASSWORD`
 - Databases: *my_animes_development* e *my_animes_test*

Para executar o projeto localmente, execute os seguintes comandos:

    git clone https://github.com/lucasmatheus001/My-Animes
    cd My_Animes
    bundle install
    yarn install
    rails db:create
    rails db:migrate

Serão cadastrados alguns Animes de exemplo e dois usuários com os perfis de Administrador e Otaku. Credencias de acesso:

 - Administrador: admin@admin.com | senha: 12345678
 - Otaku: otaku@user.com" | senha: 12345678

## Executando o projeto
Depois de instalar o projeto, execute os seguintes comandos:

    cd my_animes
    make run

Abra seu navegador e acesse http://localhost:5000/

A seguinte página será exibida:

![Tela de Login da aplicação](https://i.imgur.com/Q4emWQf.png)

Acesse o sistema com um dos usuários abaixo ou se preferir acesse a opção cadastrar e faça o cadastro de um usuário otaku.
- Administrador: admin@admin.com | senha: 12345678
- Otaku: otaku@user.com" | senha: 12345678
 
 Para ter acesso a funcionalidade de favoritar é necessário possuir um perfil de otaku. Realize o cadastro como mostra a figura abaixo. Não é necessário confirmar o e-mail, após o registro o sistema já realize o login com a conta cadastrada.
 
Por fim, a tela inicial do sistema é uma listagem com todos os Animes cadastrados no sistema. Ele também possuí uma opção para listar apenas os animes da sua lista favoritados ou seguidos pelo usuário.



## Executando testes

    
    rails db:migrate RAILS_ENV=test
    rspec 
Será gerado as migration dos models dos testes existentes e em seguida alguns testes serão rodados.
    

