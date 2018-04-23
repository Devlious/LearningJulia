using DataFrames
using Plots
using CSV

# First Julia DataScience program for Digimons

file = string("~/github/exercism/julia/datasets/digimon/DigiDB_digimonlist.csv")

df = CSV.read(file)
