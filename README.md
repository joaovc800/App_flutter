# 2021-2 - Sexta - Manhã
**Disciplina:** Desenvolvimento de Aplicativos Móveis Hibridos

**Professor**: Thiago Graziani Traue (thiago.traue@uni9.pro.br)

***

## Link das atividades

Utilize seu e-mail institucional para acessar as atividades.


 - Atividade 1: [LINK DA ATIVIDADE](https://forms.gle/79sdnicRfbnipMJS9) - De 01.10 até 03.12, 9h
 - Atividade 2: [LINK DA ATIVIDADE](https://forms.gle/gNvir2tULbpB7MmB8) - De 15.10 até 03.12, 9h
 - Atividade 3: [LINK DA ATIVIDADE](https://forms.gle/pfKuhX12491Earwd6) - De 22.10 até 03.12, 9h
 - Atividade 4: [LINK DA ATIVIDADE](https://forms.gle/J7v6DfAeVSqsntgx6) - De 29.10 até 03.12, 9h


## Preparação do ambiente

A preparação do ambiente é bastante simples, mas requer muita atenção aos detalhes.

### 1º passo - Download do Flutter SDK

Acessar o [site oficial do Flutter](https://flutter.dev/), clicar em "DOCS", "Get Startet" e, sem seguida, selecionar o seu Sistema Operacional.

Baixar e extrair normalmente a versão mais recente da SDK do Flutter ("botão azul").

Assim que terminar a extração, mover a pasta "flutter" (que estava dentro do arquivo comprimido - zip), para um local SEGURO (que você não apagará acidentalmente) como, por exemplo "C:\\flutter".

**Muito importante**: O caminho onde você colocará essa pasta **NÃO PODE** conter espaços e/ou caracteres especiais.

O arquivo "ZIP" original poderá ser apagado depois disso.


### 2º passo - Variáveis do ambiente - Windows

Entre na pasta do "flutter" (a que você extraiu no primeiro passo), e na pasta "bin". Copie o caminho com "Ctrl + C".

Na barra de pesquisa do Windows, digitar "Variáveis de Ambiente". Abrir o "Editar Variáveis de Ambiente do Sistema".

Clicar no botão "Variáveis de Ambiente" na interface que for exibida.

No quadro superior (de cima) selecionar a variável "Path" e, em seguida, clicar no botão "Editar".

Na nova interface que for exibida, clicar em "Novo" e COLAR o caminho do flutter\\bin, que copiamos agora pouco.

Clicar "Ok" em todas telas.

**TESTAR**: Rodar o comando abaixo no terminal:

```
flutter doctor
```

E verifique se o comando está reconhecido. **NÃO SE PREOCUPE COM OS ERROS** que aparecerem no terminal. Vamos corrigir um por um nos passos a seguir.


### 3º passo - Android Studio

Baixe e instale normalmente o Android Studio, [deste link](https://developer.android.com/studio).

Assim que a instalação terminar, abra o Android Studio. Ele apresentará um assistente de configuração.

Clique em "Do not import settings". Clique em "Next" em todas as etapas.

Assim que o processo terminar, clique em "More Actions" (um link azul) e selecione "SDK Manager".

Na tela que abrir, clique na aba "SDK Tools". Marque a opção "Android SDK Command-line Tools (latest)" e clique em OK. Aceite a licença e aguarde o fim da instalação.

Feche o Android Studio.


4ª Passo - Aceite de Licenças Android e correção do Path do AS

 - **no dia 27.08 o professor mostra isso.**




## Ementa básica

O objetivo dessa disciplina é aprendermos a desenvolver aplicativos móveis, ou seja mobile, usando uma única base de código que, neste caso, é o Dart com Flutter.

Desenvolveremos Apps dos mais diversos para aprendermos a tecnoloiga de desenvolvimento móvel, utilizando arquiteutra BaaS (Backend as a Service) - Firebase, criação de rotas, MobX, Animações vetoriais com Rive etc.


## Critrérios de avaliação

Este professor utilizará unica e exclusivamente atividades de múltipla escolha (de 4 a 6 atividades durante o semestre), disponibilizadas neste Git, através do Google Forms e com prazo mínimo de 14 dias para serem realizadas. Todas as atividades são teóricas em relação ao conteúdo.

A média final deste professor é calculada simplesmente pel média das atividades.

Este professor não aplica nenhuma prova durante o semestre.

De qualquer maneira, a média final de cada disciplina de vocês **normalmente** é calculada da seguinte forma:

```
Média Final = (0,4 * Avaliação Integrada) + (0,6 * Nota do Professor)
```

A **avaliação integrada** é uma prova desenvolvida e marcada pela coordenação que ocorrerá durante alguma de suas aulas, próxima ao final do semestre. Nessa são cobrados conceitos de todas as disciplinas do módulo que você está, além de conhecimentos gerais.

Este professor não utiliza a presença como critério de avaliação.


## Bibliografia da disciplina e recomendada

 - Alessandria, S., Kayfitz B., **[Flutter Cookbook](https://learning.oreilly.com/library/view/flutter-cookbook/9781838823382/)**, Ed. Pact Publishing, 2021
 - Schwarzmuller, **[Learn Flutter and Dart to Build iOS and Android Apps](https://learning.oreilly.com/videos/learn-flutter-and/9781789951998/)**, Ed. Pact Publishing, 2021
 - Windmill. E., **[Flutter in Action](https://learning.oreilly.com/library/view/flutter-in-action/9781617296147/)**, 2020
 - Sommerville I., **[Engenharia de Software](https://plataforma.bvirtual.com.br/Acervo/Publicacao/168127)**, 10ª ed., Ed. Pearson, 2019
 - Martin, R. C., **[Clean Architecture: A Craftsman’s Guide to Software Structure and Design](https://learning.oreilly.com/library/view/clean-architecture-a/9780134494272/)**, Ed. Pearson. 2017



## Links extras interessantes

 - [Como emular um MacOS num ambiente Windows](https://www.youtube.com/watch?v=_qnoT7BvFjs) - Vídeo do YouTube - Dica do João
 - [Projetos descontinuados pelo Google](https://killedbygoogle.com/) - Dica do Leonardo
 - [Fundamentos de Lógica de Programação](https://www.ev.org.br/cursos/fundamentos-de-logica-de-programacao) - Fundação Bradesco
 - [Curso de Lógica de Programação](https://www.youtube.com/watch?v=8mei6uVttho&list=PLHz_AreHm4dmSj0MHol_aoNYCSGFqvfXV) - Vídeos do YouTube
 - [Curso em Vídeo do Gustavo Guanabara](https://www.youtube.com/c/CursoemV%C3%ADdeo/playlists) - Playlists do YouTube
 - [HTML5 e CSS3](https://alunos.b7web.com.br/curso/html5-e-css3/o-que-e-html-e-pra-que-serve) - B7Web
 - [Javascript](https://alunos.b7web.com.br/curso/javascript/introducao) - B7Web
 - [Digital Inovation](https://digitalinnovation.one/) - Vários cursos gratuitos
 - [Curso de Git e GitHub](https://www.schoolofnet.com/curso/git/controle-de-versao/git-e-github/) - School of Net
 - [Canal da Rocketseat](https://www.youtube.com/channel/UCSfwM5u0Kce6Cce8_S72olg)
 - [Canal do Flipe Deschamps](https://www.youtube.com/channel/UCU5JicSrEM5A63jkJ2QvGYw)
 - [Site codepen.io](https://codepen.io/trending)
 - [Canal do Código Fonte TV](https://www.youtube.com/user/codigofontetv)
 - [Canal do Fábio Akita](https://www.youtube.com/c/FabioAkita1990/videos)
 - [Technology Radar](https://www.thoughtworks.com/pt/radar)
 - Vídeo: [Mastering Chaos - A Netflix Guide to Microservices](https://www.youtube.com/watch?v=CZ3wIuvmHeM)
 - Vídeo [https://www.youtube.com/watch?v=SLc3cTlypwM](https://www.youtube.com/watch?v=SLc3cTlypwM)
 - [Flutter: tudo sobre o queridinho do google](https://www.zup.com.br/blog/flutter)
 - [Conhecendo o Flutter](https://medium.com/android-dev-moz/flutter-conhecendo-o-flutter-70d31772afa5)
 - [O que é Dart](https://www.treinaweb.com.br/blog/o-que-e-dart)
