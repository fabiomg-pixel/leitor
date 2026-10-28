# Leitor 📖

Estante e leitor de e-books (EPUB e PDF) com companheiro de leitura integrado usando a **API do Google Gemini (Gemini 3.8 Flash)**, com **garantia estrutural anti-spoiler**.

Acesse online via GitHub Pages:  
👉 **[https://fabiomg-pixel.github.io/leitor/](https://fabiomg-pixel.github.io/leitor/)**

---

## Destaques

- **Modelo Padrão Gemini 3.8 Flash**: Motor de última geração da família Gemini 3 com altíssima velocidade, raciocínio avançado, suporte a contexto longo e chamadas nativas de ferramentas (*function calling*).
- **Leitor Completo**: Paginação, temas (claro, sépia, noite, breu), tipografia ajustável, sumário, progresso, destaques e anotações com cores.
- **EPUB & PDF**: Suporte a livros em EPUB e matérias/edições em PDF (renderizado via PDF.js).
- **Sem Spoilers**: O modelo Gemini só recebe o texto do livro até onde você já leu.
- **Suporte a Ferramentas (Function Calling)**: O Gemini pode consultar capítulos específicos, buscar no texto e abrir trechos no leitor dinamicamente.
- **Configuração na Página Inicial**: Adicione ou troque seu token do Google AI Studio logo na tela de entrada ou dentro de qualquer livro.
- **Integração Segura**: Use sua chave de API gratuita do [Google AI Studio](https://aistudio.google.com/app/apikey). A chave é salva apenas no armazenamento local (`localStorage`) do seu navegador — nunca é enviada para terceiros nem gravada em servidores.
- **Interação por Voz**: Dite suas perguntas e ouça as respostas em voz alta usando a Web Speech API.

---

## Como Usar o Gemini

1. Acesse o site no navegador: [https://fabiomg-pixel.github.io/leitor/](https://fabiomg-pixel.github.io/leitor/)
2. Na própria **página de entrada (Estante)**, cole sua chave da API do Gemini obtida no [Google AI Studio](https://aistudio.google.com/app/apikey) e clique em **Salvar chave**.
3. Escolha o modelo desejado (o padrão já é o **Gemini 3.8 Flash**).
4. Abra qualquer livro e converse por texto ou voz sem risco de spoilers!

---

## Executar Localmente

Você não precisa de build ou dependências pesadas, basta um servidor estático local:

```bash
# Com Python 3:
python3 -m http.server 8080

# Ou com Node.js:
npx serve .
```

Abra `http://localhost:8080` no navegador.

---

## Hospedagem em Docker ou Hugging Face Spaces

O repositório inclui um `Dockerfile` pronto com Nginx na porta `7860` (padrão do Hugging Face Spaces):

1. Crie um novo Space no [Hugging Face](https://huggingface.co/spaces) com SDK **Docker**.
2. Conecte ao repositório GitHub `fabiomg-pixel/leitor`.
3. O Space inicializará automaticamente.
