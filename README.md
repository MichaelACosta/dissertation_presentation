# Defesa do Mestrado em Computação

## LTMS - Lups Transactional Memory Scheduler: Um escalonador NUMA-Aware para STM.

- Michael Alexandre Costa
- UFPel 2021-1

### Resumo

Memória transacional em Software (STM) é uma alternativa à sincronização utilizando locks e monitores. A STM permite ao programador escrever códigos paralelos de forma mais simples, pois é possível substituir o uso de bloqueios por blocos atômicos. Porém, com o aumento do paralelismo existe um aumento na contenção que em STM se reflete em um maior número de conflitos. Buscando otimizar o desempenho de STM, muitos estudos focam na redução do número de conflitos por meio de escalonadores. Contudo, nas arquiteturas atuais também é importante considerar onde a memória do programa está alocada e como ela é acessada.

Esta dissertação propõe um escalonador NUMA-Aware para STM, intitulado Lups Transactional Memory Scheduler (LTMS), que em tempo de execução coleta dados sobre a aplicação e arquitetura utilizada para otimizar a execução de STM em arquiteturas NUMA.

Para isto o LTMS é dividido em 3 etapas, a primeira fornece um mecanismo de inicialização, com criação de filas que entendam a arquitetura e heurísticas de distribuição de threads, para analisar o impacto que a distribuição de threads possui sobre a aplicação. A segunda etapa apresenta um mecanismo para coletar dados em tempo de execução, nesta etapa são coletados dados sobre as threads e suas transações, os acessos à memória e a arquitetura utilizada. A terceira etapa traz um sistema para migração de threads em tempo de execução, o qual entra em ação após a ocorrência de um conflito, esta etapa busca agrupar threads conflitantes minimizando conflitos futuros e reduzindo o custo de acesso à memória. Para a tomada de decisão desta etapa, foram desenvolvidas duas heurísticas para entender o comportamento da STM em relação ao custo de latência e intensidade de conflitos. Para realização de testes o LTMS foi implementado junto a biblioteca TinySTM e foi utilizado com conjunto de benchmarks STAMP.

Os experimentos foram executados utilizando as diferentes heurísticas de distribuição e migração de threads desenvolvidos e comparados com a biblioteca TinySTM 1.0.5. Os experimentos apresentaram para maioria dos benchmarks menor taxa de abort e melhor tempo de execução.
