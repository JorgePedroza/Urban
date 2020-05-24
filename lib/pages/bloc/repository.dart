class Repository {
  int _estado =1;

  static Repository _instance = Repository._internal();

  Repository._internal();

  factory Repository() {
    return _instance;
  }

  get() {
    return _estado;
  }

  void estadoInicial() {
    _estado = 1;
  }

  void quitarPublicidad() {
    _estado = 2;
  }

  void agregarVistaTuristica() {
    _estado = 3;
  }
}
