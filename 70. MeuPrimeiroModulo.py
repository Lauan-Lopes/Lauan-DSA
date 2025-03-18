#Criando um dicionario com precos de manutencao
precos_manutencao = {
    "Troca de Oleo": 50,
    "Filtro de ar": 20,
    "Pastilhas de freio": 80,
    "Bateria": 100,
    "Alinhamento": 60
} 


#criando um dicionario com tempos de manutencao
tempo_manutencao = {
    "Troca de Oleo": 30,
    "Filtro de ar": 15,
    "Pastilhas de freio": 45,
    "Bateria": 60,
    "Alinhamento": 40
} 


#Funcao para calcular o custo de manutencao dos itens do pedido
def calcular_preco_pedido_manutencao(pedido_servico):

    preco_total = 0

    for item, preco in precos_manutencao.items():
        if item in pedido_servico:
            preco_total += preco
    
    return preco_total

#Funcao para calcular o tempo de manutencao dos itens do pedido
pedido_servico = ["Troca de Oleo", "Bateria"]
tempo_total = 0 

def calcular_tempo_pedido_manutencao(pedido_servico):

    tempo_total = 0

    for item, tempo in tempo_manutencao.items():
        if item in pedido_servico:
            tempo_total += tempo

    return tempo_total


# Funcao principal para fazer o pedido de manutencao

def fazer_pedido_manutencao(pedido_servico):

    custo_total = calcular_preco_pedido_manutencao(pedido_servico)
    tempo_total = calcular_tempo_pedido_manutencao(pedido_servico)


    print("Lauan Car Auto Center")
    print("------------------------------------")
    print("Itens de manutencao:")
    for item in pedido_servico:
        print(f"{item} R${precos_manutencao[item]} +- Tempo:{tempo_manutencao[item]} min.")


    print("------------------------------------")
    print(f"Valor total = R$ {custo_total}")
    print(f"Tempo total = {tempo_total} minutos")
