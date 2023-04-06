FROM quay.io/hermit/hermit-ser:latest

RUN git clone https://github.com/ANU-SER/HYDRA /root/HYDRA
WORKDIR /root/HYDRA/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
