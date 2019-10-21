# README

## Starter Project Rails 6.0
### Features:
- Rails Admin para sistema de admin
- Devise para autenticação
- Scaffold Api para gerar controllers de Api
- Rolify para definir roles para usuário (por exemplo Admin)

### Como gerar scaffolds com o ultra_scaffold:
Nesse starter project é possivel gerar scaffolds que não são o padrão
do rails, onde apenas o html é gerado e a parte de json dos controllers é feita
no namespace V1 (aqui os controllers herdam de ApiController)

Utilize ``` rails g ultra_scaffold Model atributo1:string atributo2:integer```
para gerar o scaffold com a versão para Api. Além disso o RailsAdmin irá
criar já na rota /admin o gerenciamento do novo Model.
