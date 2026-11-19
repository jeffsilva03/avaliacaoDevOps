FROM nginx:alpine

LABEL projeto="avaliacaoDevOps" \
      case="Case 5 - Companhia AguaViva" \
      autores="Jefferson Silva e Yago Dias dos Santos"

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
  CMD wget -qO- http://localhost/ || exit 1