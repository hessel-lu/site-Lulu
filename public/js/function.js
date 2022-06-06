//  INICIO DAS FUNCOES DO CADASTRO

function buttonCadastrar() {

    var nomeVar = primeiroNome.value;
    var sobrenomeVar = ultimoNome.value;
    var dtNascimentoVar = dtNascimento.value;
    var cepVar = codigoEnderecoPostal.value;
    var profissaoVar = profissao.value;
    var generoVar = genero.value;
    var emailVar = email.value;
    var senhaVar = senha.value;
    var confirSenhaVar = confirSenha.value;
    var admVar = null

    if (nomeVar == "" || sobrenomeVar == "" || dtNascimentoVar == "" || cepVar == "" || profissaoVar == "" || emailVar == "" || senhaVar == "" || confirSenhaVar == "") {
        alert('   Por favor, preencha os campos em branco 🥺.')
    } else {
        alert('   Obrigado(a) por realizar o cadastro conosoco!\n   Logo entraremos em contato com você 🧡.')
        primeiroNome.value = ''
        ultimoNome.value = ''
        dtNascimento.value = ''
        codigoEnderecoPostal.value = ''
        profissao.value = ''
        genero.value = ''
        email.value = ''
        senha.value = ''
        confirSenha.value = ''

        for (var contagem = 5; contagem > 0; contagem--) {
            spanText.innerHTML += `${contagem}... `;
            spanText2.innerHTML = `${nomeVar}, enviamos um e-mail de boas-vindas 🥳🎉`
        }
    }

    fetch("/usuarios/cadastrar", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            // crie um atributo que recebe o valor recuperado aqui
            // Agora vá para o arquivo routes/usuario.js
            nomeServer:  nomeVar,
            sobrenomeServer: sobrenomeVar,
            dtNascimentoServer: dtNascimentoVar, 
            cepServer:  cepVar,
            profissaoServer: profissaoVar,
            generoServer: generoVar,
            emailServer: emailVar,
            senhaServer: senhaVar,
            confirSenhaServer: confirSenhaVar,
            admServer: admVar,
        })
    }).then(function (resposta) {

        console.log("resposta: ", resposta);

        if (resposta.ok) {
            cardErro.style.display = "block"
            mensagem_erro.innerHTML = "Cadastro realizado com sucesso!";
            window.location = "../login.html";
            limparFormulario();
            finalizarAguardar();
        } else {
            throw ("Houve um erro ao tentar realizar o cadastro!");
        }
    }).catch(function (resposta) {
        console.log(`#ERRO: ${resposta}`);
        finalizarAguardar();
    });

    return false;
}

// FINAL DAS FUNCOES CADASTRO



// INICIO DAS FUNCOES HOME

function buttonCadastro() { 
    alert('  O seu cadastro é muito importante para Lucas Hessel Design, com ele conseguimos te atender melhor e assim entrar em contato.\n  Fique tranquilo(a) que todos os seus dados são guardados de forma confidencial.\n  Os campos obrigatórios do cadastro são todos que contém ( * ).\n  Todxs são bem-vindxs e agradecemos pela sua confiança 🧡.')
}

// FINAL DAS FUNCOES HOME