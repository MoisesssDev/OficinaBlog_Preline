
# OficinaBlog

OficinaBlog é uma aplicação de blog desenvolvida em Ruby on Rails que permite a criação, edição e visualização de artigos. Este projeto também suporta uploads de imagens e edição de texto com o Action Text e o Trix Editor.


## Configuração do Projeto


1. Clone o repositório:
```bash
  git clone https://github.com/MoisesssDev/OficinaBlog_Preline
  cd OficinaBlog_Preline
```
    
2. Instale as dependências do projeto:
```
  bundle install
```

3. Instale as dependências JavaScript:
```
  yarn install
```

4. Compile com ESbuild:
```
  yarn build
```

4. Configure o banco de dados:
```
  bin/rails db:create db:migrate
```

5. Inicie o servidor:
```
  bin/dev
```