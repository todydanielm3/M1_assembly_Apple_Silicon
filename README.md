# Implementação da Cifra de Vigenère em Assembly para Apple M1

Este projeto apresenta uma implementação da Cifra de Vigenère, um método clássico de criptografia de substituição polialfabética, escrita em linguagem Assembly e otimizada para a nova família de processadores Apple M1.

## Sobre a Cifra de Vigenère
A Cifra de Vigenère é um método de criptografia que utiliza uma série de diferentes cifras de César baseadas em letras de uma palavra-chave. É uma forma simples, porém robusta, de codificar mensagens.

## Arquitetura e Compatibilidade
O código foi desenvolvido especificamente para a arquitetura dos processadores Apple M1, tirando proveito de suas características únicas para otimização de desempenho.

## Estrutura do Repositório
- `vigenere_m1.s`: Arquivo fonte principal em Assembly.
- `makefile`: Script para compilação do código.
- `vigenere.o`: Objeto compilado do programa.

## Compilação e Execução
Para compilar e executar o programa, você precisará de um ambiente compatível com a arquitetura M1 da Apple. Siga estas etapas:

1. **Compilação:**
   Utilize o makefile fornecido para compilar o código. No terminal, execute:
   ```
   make
   ```
2. **Execução:**
   Após a compilação, execute o programa compilado com:
   ```
   ./vigenere
   ```

## Dependências
Certifique-se de ter as ferramentas de desenvolvimento apropriadas instaladas para compilação de código Assembly na arquitetura M1.

## Testes
Testes foram realizados para garantir a funcionalidade e eficiência na nova família de processadores da Apple M1.

## Contribuições
Contribuições são bem-vindas! Se você tem sugestões de melhorias ou otimizações, por favor, envie um pull request ou abra uma issue.

## Licença
Este projeto está sob [inserir tipo de licença], veja o arquivo LICENSE para mais detalhes.
