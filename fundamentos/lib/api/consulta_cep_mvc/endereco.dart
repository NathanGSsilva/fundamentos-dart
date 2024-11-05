// ignore_for_file: unused_import

import 'package:http/http.dart' as http;
import 'dart:convert';

class Endereco {

  String cep;
  String logradouro;
  String complemento;
  String unidade;
  String bairro;
  String cidade;
  String uf;
  String estado;
  String regiao;
  String ibge;
  String gia;
  String ddd;
  String siafi;

  Endereco({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.unidade,
    required this.bairro,
    required this.cidade,
    required this.uf,
    required this.estado,
    required this.regiao,
    required this.ibge,
    required this.gia,
    required this.ddd,
    required this.siafi
  });

  //Método para converter um objeto Usuario em um mapa

  Map<String, dynamic> paraJson(){
    return{
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'unidade': unidade,
      'bairro': bairro,
      'cidade': cidade,
      'uf': uf,
      'estado': estado,
      'regiao': regiao,
      'ibge': ibge,
      'gia': gia,
      'ddd': ddd,
      'siafi': siafi,
    };
  }

  //Método para criar um objeto Usuario a partir de um mapa

  factory Endereco.deJson(Map<String, dynamic> json){
    return Endereco(
      cep: json['cep'],
      logradouro: json['logradouro'],
      complemento: json['complemento'],
      unidade: json['unidade'],
      bairro: json['bairro'],
      cidade: json['localidade'],
      uf: json['uf'],
      estado: json['estado'],
      regiao: json['regiao'],
      ibge: json['ibge'],
      gia: json['gia'],
      ddd: json['ddd'],
      siafi: json['siafi']
    );
  }
}
