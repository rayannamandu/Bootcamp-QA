#language: pt
Funcionalidade: Login do saucedemo
    Como usuário
    Quero logar no site
    Para fazer compras

Contexto:
    Dado que eu acesse a página de autenticação do saucedemo

        Cenário: Autenticação válida
            Quando eu digitar o usuário "standard_user"
            E a senha "secret_sauce"
            Então deve ser exibida a logo do "Swag Labs"

        Cenário: Usuário inválido
            Quando eu digitar o usuário "standard_angel"
            E a senha "secret_sauce"
            Então deve ser exibida a mensagem de erro "Epic sadface: Username and password do not match any user in this service"

        Cenário: Senha inválida
            Quando eu digitar o usuário "standard_user"
            E a senha "secret_sauceee"
            Então deve ser exibida a mensagem de erro "Epic sadface: Username and password do not match any user in this service"

Esquema do Cenário: Logins inválidos com tabela
Quando eu digitar o <usuario>
E a <senha>
Então deve ser exibida a mensagem <mensagem>
Exemplos:
|usuario | senha | mensagem |
| "standard_angel" | "secret_sauce" | "Epic sadface: Username and password do not match any user in this service" |
| "standard_user" | "secret_sauceee" | "Epic sadface: Username and password do not match any user in this service" |
| "" | "secret_sauceee" | "Epic sadface: Username and password do not match any user in this service" |
| "standard_user" | "" | "Epic sadface: Username and password do not match any user in this service" |