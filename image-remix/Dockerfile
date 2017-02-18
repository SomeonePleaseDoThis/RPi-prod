FROM aarch64/node:6.9.5

RUN git clone https://github.com/ethereum/remix
RUN cd remix && npm install && npm run build && npm run start_node
RUN npm install http-server -g

ENTRYPOINT ["http-server", "index.html"]
EXPOSE 8080
