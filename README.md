# Documentação das Funções

## `tarefa.dart`

### `Tarefa`
Classe que representa uma tarefa com os seguintes atributos:
- `String nome`: Nome da tarefa.
- `bool concluida`: Indica se a tarefa foi concluída.

### `getNome()`
1. Retorna o nome da tarefa.

### `setNome(String novoNome)`
1. Atualiza o nome da tarefa para o valor passado como parâmetro.

### `getStatus()`
1. Retorna `true` se a tarefa estiver concluída, `false` caso contrário.

### `setStatus(bool novoStatus)`
1. Atualiza o status da tarefa para `true` (concluída) ou `false` (pendente).

### `concluir()`
1. Define o status da tarefa como `true`, indicando que foi concluída.

### `checarStatus()`
1. Retorna uma string informando se a tarefa está pendente ou concluída.

## `gerenciador_tarefas.dart`

### `adicionarTarefa(List<Tarefa> tarefas, String nome)`
1. Cria uma nova instância da classe `Tarefa` com o nome fornecido.
2. Adiciona a nova tarefa à lista de tarefas.

### `listarTarefas(List<Tarefa> tarefas)`
1. Percorre a lista de tarefas.
2. Para cada tarefa, imprime seu nome e status no terminal.

### `concluirTarefa(List<Tarefa> tarefas, String nome)`
1. Percorre a lista de tarefas buscando uma tarefa com o nome fornecido.
2. Se encontrada, chama o método `concluir()` para marcar a tarefa como concluída.
3. Exibe uma mensagem informando se a tarefa foi concluída com sucesso ou não encontrada.

### `removerTarefa(List<Tarefa> tarefas, String nome)`
1. Procura na lista uma tarefa com o nome informado.
2. Se encontrada, remove a tarefa da lista.
3. Exibe uma mensagem informando se a tarefa foi removida ou não encontrada.

## `menu.dart`

### `menu()`
1. Exibe um menu no terminal apresentando opções ao usuário.
2. Aguarda a entrada do usuário para selecionar uma ação.
3. Com base na entrada, chama uma das funções do `gerenciador_tarefas.dart` para adicionar, listar, concluir ou remover uma tarefa.
4. O menu é exibido novamente até que o usuário opte por sair.