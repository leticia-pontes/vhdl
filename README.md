# VHDL - Projetos e Simulações de Circuitos Lógicos

Este repositório contém códigos VHDL e imagens de simulação de circuitos lógicos.

## Ferramentas Utilizadas

- **Quartus**: Para sintetizar e implementar designs VHDL em FPGAs.
- **ModelSim**: Para simulação de VHDL.
- **GHDL**: Compilador VHDL open-source.
- **GTKWave**: Visualizador de formas de onda para simulações feitas com GHDL.

## Como Adicionar os Arquivos ao Projeto

### No **Quartus/ModelSim**:

1. **Criar um Novo Projeto no Quartus**:
   - Abra o Quartus e crie um novo projeto (`File > New Project Wizard`).
   - Defina um diretório para o projeto.
   - Adicione todos os arquivos `.vhd` ao projeto no passo `Add Files`.

2. **Configurar o Modelo de Simulação no ModelSim**:
   - No Quartus, abra o ModelSim a partir da aba `Tools > Run Simulation Tool > RTL Simulation`.
   - O ModelSim será aberto com o projeto já configurado.
   - Se necessário, adicione os arquivos VHDL manualmente no ModelSim usando o comando `vcom` para compilar cada arquivo:
     ```bash
     vcom nome_do_arquivo.vhd
     ```
   - Para compilar todos os arquivos de uma vez, utilize um script de compilação ou adicione os arquivos diretamente via GUI.

3. **Compilar o Projeto**:
   - No Quartus, compile o projeto usando `Processing > Start Compilation`.

4. **Simular no ModelSim**:
   - No ModelSim, após a compilação bem-sucedida, carregue a simulação com o comando `vsim`:
     ```bash
     vsim work.nome_da_entidade
     ```
   - Execute a simulação:
     ```bash
     run -all
     ```
   - Para visualizar os resultados, você pode usar o **Waveform Viewer** do ModelSim.

---

### No **GHDL/GTKWave**:

1. **Instalar GHDL**:
   - Para Linux (Ubuntu/Debian):
     ```bash
     sudo apt-get install ghdl
     ```
   - Para Windows/Mac, siga as instruções no [site oficial do GHDL](https://ghdl.readthedocs.io/).

2. **Instalar GTKWave**:
   - Para Linux (Ubuntu/Debian):
     ```bash
     sudo apt-get install gtkwave
     ```
   - Para Windows/Mac, siga as instruções no [site oficial do GTKWave](http://gtkwave.sourceforge.net/).

3. **Compilar os Arquivos VHDL com GHDL**:
   - Para compilar os arquivos `.vhd`:
     ```bash
     ghdl -a arquivo.vhd
     ```
   - Para analisar todos os arquivos de uma vez:
     ```bash
     ghdl -a *.vhd
     ```

4. **Simular o Projeto com GHDL**:
   - Para simular a entidade principal:
     ```bash
     ghdl -e nome_da_entidade
     ```
   - Para rodar a simulação:
     ```bash
     ghdl -r nome_da_entidade
     ```

5. **Visualizar a Simulação com GTKWave**:
   - Para gerar o arquivo de formas de onda (`.vcd`):
     ```bash
     ghdl -r nome_da_entidade --vcd=simulacao.vcd
     ```
   - Para abrir o arquivo `.vcd` no GTKWave:
     ```bash
     gtkwave simulacao.vcd
     ```

---

## Como Verificar os Resultados

### No **ModelSim**:
- Após a simulação, você pode visualizar as formas de onda diretamente no **Waveform Viewer** do ModelSim.
  
### No **GTKWave**:
- O GTKWave fornece uma interface gráfica para visualizar as formas de onda geradas pelo GHDL. Você pode adicionar sinais e observar como eles se comportam ao longo do tempo.
