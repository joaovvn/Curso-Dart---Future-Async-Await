void main() async {
	String nome = "João Victor";
  Future<String> cepFuture = getCepByName("Avenida Oviêdo Teixeira");
  late String cep;

  //cepFuture.then((result) => cep = result); //recuperando os dados future

  cep = await cepFuture;

  print(cep);
}


//serviço externo
Future<String> getCepByName(String name) {
  //simulação de requisição
  return Future.value("49026100");
}