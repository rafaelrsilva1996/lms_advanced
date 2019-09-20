Se for linux executar este comando após clonar repositório
```
$ sudo chown -R $USER:$USER .
```
Construindo a imagem
```
$ sudo docker-compose build
```
Criando e carregando estrutura do banco de dados
```
$ sudo docker-compose run --rm web bash
$ rails db:create
$ rails db:migrate
```
Subindo aplicação (execute este comando em outro terminal)
```
$ sudo docker-compose up
```
Acesse a página localhost

http://localhost:3000
