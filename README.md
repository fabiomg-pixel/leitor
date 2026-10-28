# Leitor 📖

Estante e leitor de e-books (EPUB e PDF) com companheiro de leitura integrado usando a **API do Google Gemini**, com **garantia estrutural anti-spoiler**.

Acesse online via GitHub Pages:  
👉 **[https://fabiomg-pixel.github.io/leitor/](https://fabiomg-pixel.github.io/leitor/)**

---

## Destaques

- **Leitor Completo**: Paginação, temas (claro, sépia, noite, breu), tipografia ajustável, sumário, progresso, destaques e anotações com cores.
- **EPUB & PDF**: Suporte a livros em EPUB e matérias/edições em PDF (renderizado via PDF.js).
- **Sem Spoilers**: O modelo Gemini só recebe o texto do livro até onde você já leu.
- **Suporte a Ferramentas (Function Calling)**: O Gemini pode consultar capítulos específicos, buscar no texto e abrir trechos no leitor dinamicamente.
- **Integração com Google Gemini**: Use sua chave de API gratuita do [Google AI Studio](https://aistudio.google.com/app/apikey). A chave é salva apenas no armazenamento local (`localStorage`) do seu navegador — nunca é enviada para terceiros.
- **Interação por Voz**: Dite suas perguntas e ouça as respostas em voz alta usando a Web Speech API.

---

## Como Usar o Gemini

1. Abra a aplicação (pelo GitHub Pages ou localmente).
2. Toque em qualquer livro para começar a ler.
3. No botão de conversa (ícone de balão de fala ou atalho `Perguntar`):
   - Toque no ícone da chave **🔑** no topo do painel.
   - Cole sua chave da API do Gemini (obtida gratuitamente no [Google AI Studio](https://aistudio.google.com/app/apikey)).
   - Clique em **Salvar**.
4. Pronto! Agora você pode conversar com o livro em tempo real, tirar dúvidas e pedir resumos sem risco de receber revelações sobre partes não lidas.

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

O repositório já inclui um `Dockerfile` pronto que expõe a porta `7860` (padrão do Hugging Face Spaces):

1. Crie um novo Space no [Hugging Face](https://huggingface.co/spaces) com SDK **Docker**.
2. Conecte ao repositório GitHub ou envie os arquivos diretamente.
3. O Space inicializará automaticamente com o Nginx servindo o leitor.
