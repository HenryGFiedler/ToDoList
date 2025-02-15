import 'dart:io';
import '../modelos/tarefa.dart';

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

void listarTarefas(List<Tarefa> tarefas) {
  if (!tarefas.isEmpty) {
    tarefas.forEach((tarefa) => tarefa.checarStatus());
  } else {
    print('Não há tarefas.');
  }
}

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
    tarefaConcluida.concluir();
    print("Tarefa concluída!\n");
  } catch (erro) {
    print('Tarefa não encontrada.\n');
  }
}

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
    print("Tarefa removida.\n");
  } else {
    print('Tarefa não encontrada.\n');
  }
}
