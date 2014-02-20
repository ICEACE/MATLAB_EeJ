

for RunNumber = [3694301:3694320]
    
    if isunix
        Pat = '../../runs/';
    else
        Pat = '..\..\runs\';
    end
    
    SimulationStartingDay = 60;
    SimulationDurationInQuarters = 60;
    
    SimulationDay_final = SimulationStartingDay + SimulationDurationInQuarters*3*20;
    
    fprintf('\r Deleting RunNumber: %d',RunNumber)
    
    ii = 0;
    quarter = 0;
    for d = (SimulationStartingDay):(SimulationDay_final)
        
        Filename = ['ICEACE_run', num2str(RunNumber), '_day', num2str(d), '.mat'];
        delete([Pat, Filename])
    end
  
    
end