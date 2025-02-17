# Documentação das Funções

## tarefa.dart

### Tarefa
Classe que representa uma tarefa com os seguintes atributos:
- **String nome**: Nome da tarefa.
- **bool concluida**: Indica se a tarefa foi concluída.

### getNome()
- Retorna o nome da tarefa.

### setNome(String novoNome)
- Atualiza o nome da tarefa para o valor passado como parâmetro.

### getStatus()
- Retorna true se a tarefa estiver concluída, false caso contrário.

### setStatus(bool novoStatus)
- Atualiza o status da tarefa para true (concluída) ou false (pendente).

### concluir()
- Define o status da tarefa como true, indicando que foi concluída.

### checarStatus()
- Retorna uma string informando se a tarefa está pendente ou concluída.

## gerenciador_tarefas.dart

### adicionarTarefa(List<Tarefa> tarefas, String nome)
- Cria uma nova instância da classe Tarefa com o nome fornecido.
- Adiciona a nova tarefa à lista de tarefas.

### listarTarefas(List<Tarefa> tarefas)
- Percorre a lista de tarefas.
- Para cada tarefa, imprime seu nome e status no terminal.

### concluirTarefa(List<Tarefa> tarefas, String nome)
- Percorre a lista de tarefas buscando uma tarefa com o nome fornecido.
- Se encontrada, chama o método concluir() para marcar a tarefa como concluída.
- Exibe uma mensagem informando se a tarefa foi concluída com sucesso ou não encontrada.

### removerTarefa(List<Tarefa> tarefas, String nome)
- Procura na lista uma tarefa com o nome informado.
- Se encontrada, remove a tarefa da lista.
- Exibe uma mensagem informando se a tarefa foi removida ou não encontrada.

## menu.dart

### menu()
- Exibe um menu no terminal apresentando opções ao usuário.
- Aguarda a entrada do usuário para selecionar uma ação.
- Com base na entrada, chama uma das funções do gerenciador_tarefas.dart para adicionar, listar, concluir ou remover uma tarefa.
- O menu é exibido novamente até que o usuário opte por sair.