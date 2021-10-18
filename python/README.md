# README #

This README would normally document whatever steps are necessary to get your application up and running.

### What is this repository for? ###

This is a simple python code for parsing in a bench file and creating delay formulas for the output based on the gate element delays using z3. Then constraints can be created and added to the z3 instance in order to find for instance key bits that can satisfy delay constraints. For now one sided (lower bound) constraints seemed to be solvable on the c432 benchmark in less than a fraction of a second. 

### Requirements ###

You will need the `networkx` and the `z3` packages in python which can be installed using `pip`

`pip install networkx z3`