.global _start
.align 2

.data
key:    .asciz  "KEY"       // Chave para a cifra de Vigenère
plaintext:  .asciz  "HELLO"  // Texto original

.text
_start:
    // Criptografia
    ldr x0, =plaintext       // Endereço do texto original
    ldr x1, =key             // Endereço da chave
    bl encrypt_vigenere      // Chamada para função de criptografia

    // Descriptografia
    ldr x0, =plaintext       // Endereço do texto criptografado
    ldr x1, =key             // Endereço da chave
    bl decrypt_vigenere      // Chamada para função de descriptografia

    // Terminar o programa
    mov x8, 93               // Código de saída do programa
    mov x16, 1               // Número do serviço "exit"
    svc 0                    // Chamada do sistema para sair

encrypt_vigenere:
    ldrb w8, [x0], #1        // Carregar um byte do texto original
    ldrb w9, [x1], #1        // Carregar um byte da chave

    cmp w8, #0               // Verificar se chegou ao fim do texto original
    beq done_encrypt         // Se sim, terminar

    add w8, w8, w9           // Adicionar o byte da chave ao byte do texto original
    and w8, w8, #0xFF        // Garantir que o resultado esteja dentro do intervalo de um byte

    strb w8, [x0, #-1]!      // Armazenar o byte criptografado
    b encrypt_vigenere       // Próxima iteração

done_encrypt:
    ret

decrypt_vigenere:
    ldrb w8, [x0], #1        // Carregar um byte do texto criptografado
    ldrb w9, [x1], #1        // Carregar um byte da chave

    cmp w8, #0               // Verificar se chegou ao fim do texto criptografado
    beq done_decrypt         // Se sim, terminar

    sub w8, w8, w9           // Subtrair o byte da chave do byte do texto criptografado
    and w8, w8, #0xFF        // Garantir que o resultado esteja dentro do intervalo de um byte

    strb w8, [x0, #-1]!      // Armazenar o byte descriptografado
    b decrypt_vigenere       // Próxima iteração

done_decrypt:
    ret

.global main
main:
    b _start
