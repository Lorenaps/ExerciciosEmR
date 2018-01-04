#gerar números aleatórios porém distribuídos normalmente
x = rnorm(100)
qqnorm(x)
qqline(x)

# Há um cesto com objetos, e seus pessos estão distribuídos normalmente.
#Possui média=8 desvio padrão=2 
#Qual a probabilidade de retirar um objeto com peso < 6?
pnorm(6,8,2)

#Qual a probabilidade de retirar um objeto com peso > 6?
#usar parâmentro lower.tail=F
pnorm(6,8,2, lower.tail = F)
#Outra forma
1 - pnorm(6,8,2)

#Probabilidade do objeto ter um peso < 6 ou > 10? Atenção ao lower tail
pnorm(6,8,2) + pnorm(10,8,2, lower.tail = F)

#Qual a probabilidade de retirar um objeto com peso < 10 e > 8. Lembrar que a probabilidade é cumulativa
pnorm(10,8,2) - pnorm(8,8,2)