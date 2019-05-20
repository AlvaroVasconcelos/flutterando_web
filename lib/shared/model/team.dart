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

  String getNome() => this._nome;    
  String getFoto() => this._foto;    
  String getCargo() => this._cargo;    
  String getDescricao() => this._descricao;    
}
