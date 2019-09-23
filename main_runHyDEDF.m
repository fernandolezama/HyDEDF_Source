% Author: Fernando Lezama, GECAD/ISEP 2019
%% Description:	Main code to run HyDE-DF (as used in SWEVO2019 paper)
% 
% Please cite the following work when using HyDE-DF
% * Lezama et. al: HyDE-DF: A novel self-adaptive version of differential evolution for numerical optimization. Swarm and evolutionary computation. 2019
% * Lezama et. al: Hybrid-adaptive differential evolution with decay function (HyDE-DF) applied to the 100-digit challenge competition on single objective numerical optimization. In Proceedings of the Genetic and Evolutionary Computation Conference Companion (GECCO '19). 2019 DOI: https://doi.org/10.1145/3319619.3326747
% * Lezama et. al: A New Hybrid-Adaptive Differential Evolution for a Smart Grid Application Under Uncertainty. In IEEE Congress on Evolutionary Computation (CEC '19) (pp. 1-8). IEEE. 2018

clear; clc; close all
addpath('Functions') 

%% Set parameters for HyDE-DF
deParameters.I_itermax= 5e5;
deParameters.I_NP=50;
deParameters.F_weight=0.5;
deParameters.F_CR=0.9;

deParameters.I_bnd_constr = 3; %Using bound constraints /is possible to change direct in DE
% 1 repair to the lower or upper violated bound
% 2 rand value in the allowed range
% 3 bounce back

FUNCanalysis=50;
for j=1:FUNCanalysis

FN=j
%% Catch Function Information
func = callFunction(FN); %get the function struct for [1...50] functions
otherParameters.objfun = func.name; % function to be optimized
otherParameters.dim = func.dim; %dimension of the problem
otherParameters.lowerlimit =  func.lowerlimit; %lower limit of the problem
otherParameters.upperlimit = func.upperlimit; %upper limit of the problem
%lowerlimit =  func.lowerlimit; %lower limit of the problem
%upperlimit = func.upperlimit; %upper limit of the problem

tTotalTime=tic;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Run MH for optimization clear 
noRuns = 30; % Number of trials here
ResDB=struc([]);
    for iRuns=1:noRuns %Use normal for if parfor is not available
    %parfor iRuns=1:noRuns % Use parfor for parallel computing
        tOpt=tic;
        rand('state',sum(noRuns*100*clock))% ensure stochastic indpt trials
           
        [ResDB(iRuns).Fit_and_p, ...
         ResDB(iRuns).sol, ...
         ResDB(iRuns).fitVector] =...
         HyDE_DF(deParameters,otherParameters);

         ResDB(iRuns).tOpt=toc(tOpt); % time of each trial
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    end
tTotalTime=toc(tTotalTime); %Total time

%% Saving the results to the folder
filename=['Results_HyDEDF/funct_'  num2str(FN)];
save(filename)

 
for i=1:noRuns
    Values(i)=  ResDB(i).Fit_and_p;
end
alf=1:3:3*50;
Summary(alf(FN):alf(FN)+2,1)=[mean(Values);std(Values);min(Values) ]; %Format of the table presented in the paper
%% End of MH Optimization
end
save('Results_HyDEDF/TableI','Summary')

