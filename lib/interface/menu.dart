import 'dart:io';
import '../modelos/tarefa.dart';
import '../servicos/gerenciador_tarefas.dart';

void menu() {
  bool ligado = true;
  List<Tarefa> tarefas = [];

  do {
    print(
      '1 - Adicionar Tarefa\n2 - Listar Tarefa\n3 - Concluir Tarefa\n4 - Remover Tarefa\n5 - Sair',
    );
    int? opcao = int.tryParse(stdin.readLineSync() ?? '');

    switch (opcao) {
      case 1:
        adicionarTarefa(tarefas);
        break;

      case 2:
        listarTarefas(tarefas);
        break;

      case 3:
        concluirTarefa(tarefas);
        break;

      case 4:
        removerTarefa(tarefas);
        break;

      case 5:
        ligado = false;
        break;
    }
  } while (ligado);
}
