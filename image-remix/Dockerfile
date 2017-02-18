FROM aarch64/node:7.5

RUN git clone --depth=50 https://github.com/ethereum/browser-solidity.git ethereum/browser-solidity &&
  npm install && 
  npm run build && 
  npm run start_node
RUN npm install http-server -g

ENTRYPOINT ["http-server", "index.html"]
EXPOSE 8080
