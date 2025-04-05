## instalando bibliotecas
install.packages("tidyverse")
install.packages("ggplot2")
install.packages("plotly")
# tidyverse é um "universo" de bibliotecas usados para tratar os dados
# ggplot2 eh a biblioteca pra plotar os gráficos
# plotly tbm eh pra plotar gráficos mas ele eh mais interativo <3

# lendo as libs
# seria tipo "ativar" os pacotes. se tu n fizer isso, o pacote não roda; tu pode dar um 
#"library()" ou um "ggplot2:: "
#depende doq tu quer fazer


library(tidyverse)
library(ggplot2)

## vendo se eu ainda sei mexer

dados <- read.csv("/Users/Gamma/Desktop/yas/R/br_inep_ideb_uf.csv")
view(dados)

names(dados)

## uhull

dados_2005 = dados %>%  #ctrl + shift + M
  dplyr::filter(ano == 2005) %>% 
  dplyr::select(ano, ensino, sigla_uf, 
                indicador_rendimento,rede, taxa_aprovacao, nota_saeb_matematica)


dados_2005_BA = dados_2005 %>% 
  dplyr::filter(sigla_uf == "BA" & rede == "estadual")

### oxeeeeeeeeeee

dados_BA = dados %>% 
  dplyr::filter(sigla_uf == "BA" & rede == "estadual")

## SÓ TEM 12 COISOS PRA BAHIA DA REDE ESTADUAL???? QUÊ ISSO IDEB

dados_BA %>% 
  ggplot2::aes(x = "ano", y = "nota_saeb_matematica")+
  geom_line() ########## arrrrrrrrrrrrrrrrrr
