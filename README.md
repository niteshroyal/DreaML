# Distributional Program Synthesis
* Learns a joint probabilistic relational model in the form of distributional program for a relational database.
* It can make use of background knowledge (if available) written in DC language.
* Performs Stochastic EM if some fields are missing in the relational database. (Experimental)

The code is in beta, if you need help or find a bug please write an [issue](https://github.com/niteshroyal/DistributionalProgramSynthesis/issues) or contact me at niteshroyal (_DOT_) 30 (AT) gmail (_DOT_) com

Installation
============
```
1. Install Yap Prolog following steps here: https://github.com/davidenitti/DC

2. Install python packages: Numpy, Sklearn, Cython

3. Build PyDC executable file and copy to the 'core' folder
   $ cd yapInterface
   $ python setup.py build_ext --inplace
   $ mv yapWrapper.so ../core/
```
   	
Execution 
=========

1. Learning a distributional program from deterministic data. An example of declarative bias in shown in file '../data/FinancialData.pl'

```python
 from core.DCLearner import DCLearner
 
 ## Output DC program
 outputFile = '../data/MyDCRules.pl'
 f = open(outputFile, 'w')

 ## Input Prolog program '../data/FinancialData.pl' contains example of 
 ## declarative bias needed for the deterministic case 
 obj = DCLearner('../data/FinancialData.pl', '', '')

 obj.learnRules()
 translateObj = obj.interface.translator
 for rule in obj.rules:
     rule = translateObj.translate(rule)
     f.write(rule + '\n')
 f.close()
```

2. Learning a distributional program from deterministic/probabilistic data as well as background theory. Two input files are needed for this case.

```python
 from core.DCLearner import DCLearner
 
 ## Output DC program
 outputFile = '../data/MyDCRules.pl'
 f = open(outputFile, 'w')

 ## Input DC program and a helper Prolog program
 obj = DCLearner('../data/FinancialData_Enumerated.pl','../data/FinancialDataDC.pl','')

 obj.learnRules()
 translateObj = obj.interface.translator
 for rule in obj.rules:
     rule = translateObj.translate(rule)
     f.write(rule + '\n')
 f.close()
```


# DreaML interface (py_dreaml_interface)
* Package allows to pass a set of related tables to the DreaML
* The package automatically generates declarative bias
* Calls DreaML to learn DC program
* Query the learned DC Program

Installation
============

1. First install Yap Prolog Wrapper
```
   $ cd yapInterfaceForPython3
   $ python3 setup.py build_ext
   $ sudo python3.7 setup.py install
```


2. Installing py_dreaml_interface
```
   ## From the main folder of DreaML
   $ pip3 install .
```

3. Add environment variables 

```
   $ vim ~/.bashrc
   
   ## Add following lines in the 'bashrc' file
   
   ## Path to Python 2
   export DREAML_PYTHON2_BIN="/usr/bin/python2.7"
   
   ## Path to the main DreaML folder
   export DREAML_PATH="/home/nitesh/eclipse-workspace/DreaML"
   
   ## Path Python 2 lib and path 2 DreaML 
   export PYTHONPATH="/usr/lib/python2.7:/home/nitesh/eclipse-workspace/DreaML"
```

Execution 
=========


1. See an example
```
   $ vim py_dreaml_interface/example.py
```
    







