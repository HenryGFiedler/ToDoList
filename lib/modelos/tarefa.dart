class Tarefa {
  String? _nome;
  bool _status = false;
  Tarefa();

  String? get getNome => _nome;
  set setNome(String nome) => _nome = nome;

  bool get getStatus => _status;
  set setStatus(bool status) => _status = status;

  /**Coloca o status da tarefa como concluído */
  void concluir() {
    _status = true;
  }

  /**Mostra o status da tarefa */
  void checarStatus() {
    print(
      '\nTarefa: $_nome\nStatus: ${_status ? "Concluido" : "Pendente"}\n=====',
    );
  }
}
