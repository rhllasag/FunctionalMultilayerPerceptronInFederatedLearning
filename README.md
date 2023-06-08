# Forecasting Functional Time Series using Federated Averaging 

This project implements a Functional Multilayer Perceptron (FMLP) using Functional Data Analysis (FDA) in a centralized data scenario and a Federated Learning scenario with horizontal data partitioning setting. 
Experiments conducted in the novel maintenance strategy called Predictive Maintenance (PM) can be replicated by executing the files written in Live Code File Format *Matlab R2020+*.

It is assumed the installation of the Parallel Computing Toolbox to execute the present code.

## Predictive Maintenance using Functional Multilayer Perceptron

Predictive Maintenance (PM) is a novel maintenance strategy that uses Condition Monitoring (CM) to predict the Remaining Useful Life (RUL) of industrial machinery. Using RUL estimations, maintenance interventions are performed when needed. Particularly, the code available is related to the RUL prediction of turbofan engines using NASA C-MAPSS datasets (https://www.nasa.gov/intelligent-systems-division). 

Conditional monitoring data C-MAPSS, located in the *data* folder, is composed of four *FD00x* datasets. Each dataset was created after monitoring multiple turbofan engines through 21 sensors and three operating settings. Particularly, the regression problem implemented here is related to predicting the target value (RUL) using just the 21 sensors. More details of how to replicate those experiments in a centralized scenarion can be found in:

- Centralized data scenario: CentralizedData_FMLP.mlx 

NOTE: Data of this repository was pre-processed using the criteria described in [[1]](#1). This reference also mathematically explains the implemented Functional Multilayer Perceptron. 

## Remaining Useful Life in Horizontal Federated Learning Scenarios 
Decentralized data scenarios are common in industrial applications. Companies present difficulties gathering many failure instances in isolated systems (e.g., air fleets measuring aircraft engines) to develop accurate PM applications separately. Therefore, it is assumed that different parties *J* (e.g. multiple aircraft) partially monitored the turbofan engines described in a particular FD00x dataset using the same variables. 
Federated Learning experiments can be replicated by setting the number of parties *J* and selecting the FD00x dataset. It is configured in the following Live Code File:

- Federated Learning: CentralizedData_FMLP.mlx 

NOTE: More details about data partitioning and the Federated Averaging (FedAvg) algorithm can be found in [Pending Reference](README.md)

## Reference
If you use this content in a scientific publication, we would appreciate using the following citation:
```
@InProceedings{LLasagRosero2023,
	author={Llasag Rosero, Ra{\'u}l
	and Silva, Catarina
	and Ribeiro, Bernardete},
	editor={Iliadis, Lazaros
	and Maglogiannis, Ilias
	and Alonso, Serafin
	and Jayne, Chrisina
	and Pimenidis, Elias},
	title={Forecasting Functional Time Series Using Federated Learning},
	booktitle={Engineering Applications of Neural Networks},
	year={2023},
	publisher={Springer Nature Switzerland},
	address={Cham},
	pages={491--504},
	doi={10.1007/978-3-031-34204-2_40},
	isbn={978-3-031-34204-2}
}
```
## Citing Work

<a id="1">[1]</a> 
Llasag Rosero, R., Silva, C., Ribeiro, B. (2023). Forecasting Functional Time Series Using Federated Learning. In: Iliadis, L., Maglogiannis, I., Alonso, S., Jayne, C., Pimenidis, E. (eds) Engineering Applications of Neural Networks. EANN 2023. Communications in Computer and Information Science, vol 1826. Springer, Cham. https://doi.org/10.1007/978-3-031-34204-2_40
