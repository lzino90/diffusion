# diffusion
Code and data used in the paper "Collective patterns of social diffusion are shaped by individual inertia and trend-seeking"

INSTRUCTIONS AND SYSTEM REQUIREMENTS:

The code for the simulation is written in MATLAB, using version 2021a and requires no add-ons. All the functions needed are included in the corresponding folders. Hence, to run the code it is sufficient to open the corresponding folder with MATLAB.

The code for the classification is written in Excel, using Office 2016 and requires no add-ons.

The code for the regression is written in STATA and requires no add-ons.

Both MATLAB and Excel code has been tested on a PC with 16GB RAM and CPU 1.9 GHz with OS Windows 10 (64-bit). Maximum run time is approximately 12 hours for the parametrisation and Monte Carlo simulation code

ORGANIZATION:

Each folder named "Fig#" contains all the code used to generate Figure # in the main paper. Figure % (or the panel * of figure %) can be generated by running the file "fig#.m" or "fig%_a.m"

The folder named "additional_figures" contains the code used to generate additional figures (in the SI or in the Response Letter).

The folder "parameter_estimation" contains the code to perform the parameter estimation. The file "SD_estimator_16trials.m" performs the parameter estimation used in the main article; the file "SD_estimator_20trials.m" performs the parameter estimation used in the Supplementary Information as a robustness check; the file "SD_estimator_16trials_coord.m" performs the parameter estimation for a coordination model, used in Figure 3 in the main article; the file "SD_estimator_16trials_noinertia.m" performs the parameter estimation with only coordination and trendseeking terms, used in the Supplementary Information; the file "SD_estimator_16trials_notrend.m" performs the parameter estimation with only coordination and trendseeking terms, used in the Supplementary Information.

The folder "regression" contains the dataset and the STATA code used to conduct the regression analysis on the experimental data.

The folder "data_split_for_trial" contains 20 .xlsx files with the experimental data split for each on of the 20 trials.

The file "data.xlsx" contains the raw experimental data, its pre-processing, and the classification rule to determine explorers and non-explorers

The file "raw_data_figures.zip" contains all the .tex files used to generate the figures in the paper

The file "summary_data.pdf" contains a summary of the experimental data

DEMO

The folder "Demo" contains a sample simulation animation and the script used to generate it. To run it, it is sufficient to open the folder with MATLAB and run "plot_graph_dynamics_example.m". The run tume is of few second on a standard PC.

LICENCE

Our code has no custom licence, just requires a standard MATLAB licence to run.
