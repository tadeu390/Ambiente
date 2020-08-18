# AMBIENTE

Ambiente para desevolvimento com docker rápido e fácil de utilizar.

## Ambiente node com React

Para subir o ambiente siga os seguintes passos:
```
1 - Execute: make up-node-mongo
```

```
2 - Execute: docker exec -it node-react /bin/bash
```

```
3 - Execute: npx create-react-app ./
```
```
4 - Execute: yarn start
```

Pronto, basta abrir o navegador na URL:
```
http://localhost:9001
```
Assim que carregar irá aparecer o ícone do React.

Se quiser parar o container e removê-lo:
```
1 - Execute: make down-node-mongo
```

Pronto, agora usa-lo como quiser, pode instalar uma aplicação laravel, por exemplo.


## Ambiente NGINX com MYSQL
Para subir o ambiente siga os seguintes passos:
```
1 - Execute: make up-nginx-mysql
```

Se quiser parar o container e removê-lo:
```
1 - Execute: make down-nginx-mysql
```

