*PyTorch Geometric Temporal* is a temporal (dynamic) extension library for [PyTorch Geometric](https://github.com/rusty1s/pytorch_geometric).

<p align="justify">The library consists of various dynamic and temporal geometric deep learning, embedding, and spatio-temporal regression methods from a variety of published research papers. Moreover, it comes with an easy-to-use dataset loader, train-test splitter and temporal snaphot iterator for dynamic and temporal graphs. The framework naturally provides GPU support. It also comes with a number of benchmark datasets from the epidemological forecasting, sharing economy, energy production and web traffic management domains. Finally, you can also create your own datasets.</p>

*Как установить все необходимые пакеты и запустить тесты:*

Я сделал докер, но проверял его только на wsl, поэтому напишу инструкцию для докера, если не получится, то установим [Miniconda3](https://conda.io/en/latest/miniconda.html)

Если у вас не скачаны git и/или docker, скачайте их:
```sh
sudo apt install git
sudo apt-get install docker docker.io
```
или через pip

```sh
pip install docker
```
Теперь опишу, как запустить докер: 
1. Склонируйте этот репозиторий и перейдите в него
```sh
git clone https://github.com/NikolayGromov/DL_Dev.git
cd DL_Dev
```

2. Соберите докер (все команды с докером нужно выполнять с правами администратора, в Linux, например, нужно добавить ключевое слово *sudo* перед командами)

```sh
docker build -t test .
```

4. Запустите докер

```sh
docker run test
```

Результат должен быть примерно таким
![image](https://github.com/NikolayGromov/DL_Dev/blob/main/test.png)


*Способ с Miniconda:*
Прежде всего, желательно иметь установленную [Miniconda3](https://conda.io/en/latest/miniconda.html) или установить ее под вашу операционную систему с версией Python 3.7 (все библиотеки вроде подходят и для версий до 3.9, но я проверял на версии 3.7).

1. Во избежание проблем с несовместимостями версий Python или PyTorch создадим новое окружение

```sh
conda create --name testenv python=3.7
conda activate testenv
```
где 'testenv' это имя этого окружения.

2. Установить пакеты PyTorch

```sh
conda install pytorch==1.10.1 torchvision==0.11.2 torchaudio==0.10.1 cpuonly -c pytorch
```
3. Установить пакеты PyTorch Geometric Temporal

```sh
pip install torch-scatter -f https://data.pyg.org/whl/torch-1.10.1+cpu.html
pip install torch-sparse -f https://data.pyg.org/whl/torch-1.10.1+cpu.html
pip install torch-geometric
pip install torch-geometric-temporal
```
4. Склонировать этот репозиторий
```sh
conda install -c anaconda git
git clone https://github.com/NikolayGromov/DL_Dev.git
```
5. Перейти в дирректорию с тестами и запустить их
```sh
cd DL_Dev
python test.py
```

Результат должен быть примерно таким
![image](https://github.com/NikolayGromov/DL_Dev/blob/main/test.png)


