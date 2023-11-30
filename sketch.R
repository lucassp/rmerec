

##### FLAVIO ##### Instruções para sincronizar com git

git remote add origin https://github.com/lucassp/rmerec.git
git branch -M main
git push -u origin main
git add *
  git commit -m "initial commit"
git push -u origin main


##### LUCAS #####

install.packages("devtools")
install.packages("usethis")
install.packages("testthat")
install.packages("goodpractice")

# Regear a documentação

library(roxygen2)
roxygenise()

# Gerar os arquivos de ajuda (helps)
library(devtools)
devtools::document()

# Gerar arquivo de controle de versão e vigneta
library(usethis)
usethis::use_news_md
usethis::use_vignette

# Gerar arquivos de teste
library(testthat)

# comando para criar o ambiente de testes
usethis::use_testthat()

# comando para rodar os testes
devtools::test()

# comando para testar a cobertura dos testes
devtools::test_coverage()
devtools::test_coverage_active_file()

# tirar o rmerec de execução
detach("package:rmerec", unload = TRUE)



# Biblioteca good practice 	###### OPCIONAL ######
library(goodpractice)
goodpractice::gp()

# add to .Rbuildignore 		###### OPCIONAL ######
usethis::use_build_ignore(c("NEWS.md"))

# testar antes de submeter CRAN
devtools::spell_check()
devtools::check_rhub()
devtools::check_win_devel()


#comando para submeter para o CRAN
devtools::release()
