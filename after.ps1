docker run -d --name proxpi -p 5000:5000 epicwink/proxpi
pip config --global set global.index-url "http://127.0.0.1:5000/index/"

docker run -d --name verdaccio -p 4873:4873 verdaccio/verdaccio
npm set --global registry http://localhost:4873/
