# Desafio Docker KebDev

#### Build e Exec da aplicação Conversor de Distância.

> **Nota:** substituir o meu ***workspace*** pelo seu.
>
> **Ex.:** ***andersontarj***/conversaodistancia pelo ***seu-workspace***/conversaodistancia

Criando a imagem:

```
docker build -t andersontarj/conversaodistancia:v1 .
```

Criando a imagem **latest**:

```
docker image tag andersontarj/conversaodistancia:v1 andersontarj/conversaodistancia:latest	
```

Executando a imagem criada:

```
docker run --name conversaodistancia -it -d -p 9090:9090 andersontarj/conversaodistancia:v1
```

Para verificar o container em execução, execute o comando:

```
docker container ls
```

Terá uma saída igual a abaixo:

![Diagrama](./imgs/contlist.png)

Após a execução da imagem **andersontarj/conversaodistancia** abra o navegador de sua preferencia e digite <http://localhost:9090>

Se tudo estiver correto você vera no navegador a tela igual a que está abaixo:

![Diagrama](./imgs/convdist.png)
