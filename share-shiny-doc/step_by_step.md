## Compartilhando uma dashboard/arquivo .Rmd no browser

Baseado no vídeo do prof Samuel Macêdo em [https://www.youtube.com/watch?v=UI0fp4YV3pw]

### Passo a passo

### 1) Obter o endereço ip da máquina (ipv4)

Abra o **terminal** (cmd/console, 'Alt + Shift + R' no RStudio) e digite
```
ipconfig
```

Na parte que diz "Adaptador Ethernet Conexão local:" veja qual o **Endereço IPv4** e anote/salve essa informação, digamos que seja 127.0.0.1


### 2) Configurar o servidor Shiny

Localize o arquivo referente a sua dashboard na pasta onde foi salvo e obtenha o caminho/endereço, suponha que seja "mydashboards/dashboard1.Rmd"

Lembrando que a maneira de escrever o caminho pode mudar dependendo de que pasta você definiu como seu **Working Directory** pelo comando setwd()

```{R}
my_ip <- "127.0.0.1"
path_file <- "mydashboards/dashboard1.Rmd"

rmarkdown::run(file = path_file, shiny_args = list(host = my_ip, port = 1234))

# para mais informações dessa função
?rmarkdown::run
```

Não é necessário criar os objetos **my_ip** e **path_file**, poderíamos digitar diretamente nos argumentos da função run()

Arbitrariamente escolhi 1234 como porta, devemos usar uma porta que não esteja sendo utilizada, podemos verificar isso abrindo o cmd/Prompt de Comando como administrador e digitando

```
netstat -ab
```

### 3) Acessar a dashboard no browser

No seu navegador digite o endereço no formato "ip/port/file_name.Rmd", no nosso caso é "127.0.0.1:1234/dashboard1.Rmd"

Compartilhe esse endereço com quem precisar acessar a dashboard.

A função run() tem mais alguns argumentos úteis, um deles serve para indicar a pasta onde estão os arquivos (dashboards etc), por padrão é a pasta "raíz" indicada no **path_file**, ou seja, é a pasta "mydashboards".
