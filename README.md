# avaliacaoDevOps – Case 5: Companhia ÁguaViva

LAB11 – Projeto DevOps
Dupla: Jefferson Silva e Yago Dias dos Santos

One-page da Companhia ÁguaViva publicada na EC2 
com deploy automatizado.

## Arquitetura
- **GitHub**: versionamento do código
- **Docker**: imagem `nginx:alpine` com a página (ver `Dockerfile`)
- **Docker Hub**: registro da imagem (`latest` + tag com o hash do commit)
- **GitHub Actions** (`.github/workflows/cicd.yml`):
  - **CI**: valida os arquivos, faz o build da imagem, testa o container e publica no Docker Hub
  - **CD**: só roda se o CI passar; acessa a EC2 via SSH, baixa a imagem do Docker Hub e sobe o container na porta 80
