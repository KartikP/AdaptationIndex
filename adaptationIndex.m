%% Adaptation Index
% A within (-1,1), and is positive for decelerating spike trains and
% negative for accelerating spike trains.

function [A] = adaptationIndex(spikeTimes)

ISI = diff(spikeTimes);

A = 0;
for i=1:length(ISI)-1
    A = A + (ISI(i+1)-ISI(i))/(ISI(i+1)+ISI(i));
end

A = (1/(length(ISI)-1))*A;
