# Configurando o Git e GitHub no RStudio

#------------------- Passo 1 ---------------------#
# Crie um "Novo Projeto" R no RStudio:
# - Abra o RStudio.
# - Vá para File -> "New Project"
# - Selecione "New Directory" e depois "New Project".
# - Escolha um nome para o seu projeto e um local onde deseja salvá-lo.
# - Clique em "Create Project".

#------------------- Passo 2 ---------------------#
# Certifique-se de que está dentro de um projeto R
# Verifique o diretório de trabalho
getwd()

# Instale e carregue o pacote "usethis"
install.packages("usethis")
library(usethis)

# Configure o Git
usethis::use_git_config(user.name = "Ana Matiussi",
                        user.email = "anamatiussi@gmail.com")

# Conecte o RStudio com o GitHub
usethis::edit_r_environ()      # Comando para criar o arquivo ".Renviron"

# Criando um novo token no GitHub
usethis::create_github_token()
# Após criar o token e copiar, abra o arquivo .Renviron e cole o token criado:
# GITHUB_PAT= SEU_TOKEN
# Adicione o token, pule uma linha e salve o arquivo.
# Reinicie o RStudio para carregar as mudanças no .Renviron
# Pressione CTRL + SHIFT + F10 para reiniciar

# Verifique a configuração
usethis::git_sitrep()

# Inicie o uso do Git dentro do projeto
usethis::use_git()
