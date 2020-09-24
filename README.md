# diffusion
Code and data used in the paper "Individual inertia and trend-seeking shapecollective patterns of diffusion"

The code is written in MATLAB, using version 2019B and requires no add-ons. 

The code has been tested on a PC with 16GB RAM and CPU 1.9 GHz with OS Windows 10 (64-bit)

Each folder named "Fig#" contains all the code used to generate Figure # in the paper. Figure % (or the panel * of figure %) can be generated by running the file "fig#.m" or "fig%_a.m"

The folder "parameter_estimation" contains the code to perform the parameter estimation. The file "SD_estimator_16trials.m" performs the parameter estimation used in the main article, the file "SD_estimator_20trials.m" performs the parameter estimation used in the Supplementary Information as a robustness check. 

The folder "data_split_for_trial" contains 20 .xlsx files with the experimental data split for each on of the 20 trials.

The file "raw_data.xlsx" contains the full experimental data.

The file "data.xlsx" contains the experimental data, its pre-processing, and the classification rule to determine explorers and non-explorers

The file "raw_data_figures.zip" contains all the .tex files used to generate the figures in the paper

The file "summary_data.pdf" contains a summary of the experimental data
