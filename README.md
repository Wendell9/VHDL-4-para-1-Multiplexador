# VHDL-4-para-1-Multiplexador-com-Fun-es-L-gicas
Este repositório contém o código VHDL de um multiplexador 4-para-1 com um pino de habilitação (EN). O circuito é implementado no estilo comportamental e demonstra a seleção de diferentes operações lógicas com base em uma entrada de 2 bits.
Funcionalidade do Circuito

O multiplexador seleciona uma das quatro entradas internas, cada uma correspondendo a uma operação lógica diferente, e direciona a saída para o pino Y.

A seleção da função é controlada pelos pinos EN (Habilitação) e S (Seleção).

    EN = '0': O circuito está desabilitado, e a saída Y fica em alta impedância ('Z').

    EN = '1': O circuito está habilitado e a saída Y é definida pelo seletor S, conforme a tabela abaixo:

S	Função Selecionada	Saída Y
"00"	AND Lógico	Y = A and B
"01"	OR Lógico	Y = A or B
"10"	NOT Lógico	Y = not B
"11"	Identidade	Y = A

Conteúdo do Repositório

    MUX_A_B.vhd: O código VHDL principal da arquitetura do multiplexador.

    MUX_A_B_tb.vhd: Um testbench completo para simular e verificar o comportamento do circuito.

Como Simular

    Clone este repositório.

    Abra um software de simulação VHDL (como ModelSim, Vivado, ou Quartus).

    Compile os arquivos MUX_A_B.vhd e MUX_A_B_tb.vhd.

    Inicie a simulação com o testbench (teste_VHDL).

    Visualize as formas de onda para verificar se a saída Y se comporta como esperado para cada combinação de entradas.

Este projeto é ideal para quem está começando a estudar lógica digital e VHDL, servindo como um exemplo prático de um circuito combinacional.

<img width="396" height="286" alt="{92DD17F2-18A7-498A-8B1C-664A7CE586A7}" src="https://github.com/user-attachments/assets/0f8d0663-e682-47f1-89af-a36db298154e" />
