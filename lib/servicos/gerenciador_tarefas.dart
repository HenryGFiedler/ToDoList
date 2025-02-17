import 'dart:io';
import '../modelos/tarefa.dart';

/**Função responsável por adicionar uma tarefa*/
void adicionarTarefa(List<Tarefa> tarefas) {
  Tarefa tarefa = Tarefa();
  String? nomeTarefa;

  print('Qual o nome da sua tarefa?');
  while (true) {
    nomeTarefa = stdin.readLineSync();
    if (nomeTarefa != null && nomeTarefa.trim().isNotEmpty) {
      break;
    }
    print('Nome inválido, tente de novo:');
  }
  tarefa.setNome = nomeTarefa;

  tarefas.add(tarefa);
  print('Tarefa adicionada!\n');
}

/**Função responsável por listar todas as tarefas*/
void listarTarefas(List<Tarefa> tarefas) {
  if (!tarefas.isEmpty) {
    tarefas.forEach((tarefa) => tarefa.checarStatus());
  } else {
    print('Não há tarefas.');
  }
}

/**Função responsável por conlcuir uma tarefa*/
void concluirTarefa(List<Tarefa> tarefas) {
  String? nomeTarefa;

  print('Qual o nome da tarefa que deseja concluir?');
  while (true) {
    nomeTarefa = stdin.readLineSync();
    if (nomeTarefa != null && nomeTarefa.trim().isNotEmpty) {
      break;
    }
    print('Nome não pode estar vazio, tente de novo:');
  }

  try {
    Tarefa tarefaConcluida = tarefas.firstWhere(
      (tarefa) => tarefa.getNome?.toLowerCase() == nomeTarefa?.toLowerCase(),
    );
    if (tarefaConcluida.getStatus != true) {
      tarefaConcluida.concluir();
      print('Tarefa concluída!\n');
    } else {
      print('Tarefa já concluída.\n');
    }
  } catch (erro) {
    print('Tarefa não encontrada.\n');
  }
}

/**Função responsável por remover uma tarefa*/
void removerTarefa(List<Tarefa> tarefas) {
  String? nomeTarefa;

  print('Qual o nome da tarefa que deseja remover?');
  while (true) {
    nomeTarefa = stdin.readLineSync();
    if (nomeTarefa != null && nomeTarefa.trim().isNotEmpty) {
      break;
    }
    print('Nome não pode estar vazio, tente de novo:');
  }

  int tarefasAntes = tarefas.length;

  tarefas.removeWhere(
    (tarefa) => tarefa.getNome?.toLowerCase() == nomeTarefa?.toLowerCase(),
  );

  int tarefasDepois = tarefas.length;

  if (tarefasAntes > tarefasDepois) {
    print('Tarefa removida.\n');
  } else {
    print('Tarefa não encontrada.\n');
  }
}
