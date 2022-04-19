*PyTorch Geometric Temporal* is a temporal (dynamic) extension library for [PyTorch Geometric](https://github.com/rusty1s/pytorch_geometric).

<p align="justify">The library consists of various dynamic and temporal geometric deep learning, embedding, and spatio-temporal regression methods from a variety of published research papers. Moreover, it comes with an easy-to-use dataset loader, train-test splitter and temporal snaphot iterator for dynamic and temporal graphs. The framework naturally provides GPU support. It also comes with a number of benchmark datasets from the epidemological forecasting, sharing economy, energy production and web traffic management domains. Finally, you can also create your own datasets.</p>

*Как установить все необходимые пакеты и запустить тесты:*

Прежде всего, желательно иметь установленную [Miniconda3](https://conda.io/en/latest/miniconda.html) или установить ее под вашу операционную систему с версией Python 3.7 (все библиотеки вроде подходят и для версий до 3.9, но я проверял на версии 3.7).

1. Во избежание проблем с несовместимостями версий Python или PyTorch создадим новое окружение

```sh
conda create --name testenv python=3.7
conda activate testenv
```
где 'testenv' это имя этого окружения.

2. Установить пакеты PyTorch

```sh
conda install pytorch torchvision torchaudio cpuonly -c pytorch
```
3. Установить пакеты PyTorch Geometric Temporal

```sh
pip install torch-scatter -f https://data.pyg.org/whl/torch-1.10.0+cpu.html
pip install torch-sparse -f https://data.pyg.org/whl/torch-1.10.0+cpu.html
pip install torch-geometric
pip install torch-geometric-temporal
```
