class TeamModel {
  String _nome;
  String _foto;
  String _cargo;
  String _descricao;

  TeamModel.fromMap(Map<String, dynamic> map)
      : this._nome = map['nome'],
        this._foto = map['foto'],
        this._cargo = map['cargo'],
        this._descricao = map['descricao'];

  Map<String, dynamic> toMap() => {
        'nome': this._nome,
        'foto': this._foto,
        'cargo': this._cargo,
        'descricao': this._descricao
      };

  String get getNome => this._nome;
  String get getFoto => this._foto;
  String get getCargo => this._cargo;
  String get getDescricao => this._descricao;
}
