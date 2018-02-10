%% myFFT.m
%% 
%% This m.file loads a trajectory file from the bond-length versus time simulation, calculates the
%% the fast fourier transform of the amplitude i.e the phase/frequency behavior, and the writes 
%% the output into the file 'fftout.txt'. The data in this file can then be plotted in another 
%% environment, such as Origin
%%
%% Requirement: the trajectory data is saved in real-time/bond length amplitude in the file 
%% 'fft_in.txt'
%%
%% (c) Ocaya - Nov 12, 2017
%% 
load -ascii fft_in.txt x y;   % assuming data is in two columns, time and amplitude
n=length(fft_in);
t=fft_in(1:n,1);
y=fft_in(1:n,2);

av = sum(y)/size(y,1);
yy=y-av;         %% this is the approximate average location. I am doing this to increase the  
                 %% height of the FFT plots any other would not change the frequency, but 
                 %% only decrease the height. This is to make the plots easier to see.

plot(t,y)        % show the raw amplitude vs time data

dt=t(2)-t(1);
N=length(t);
fs = 1/dt;   % sampling frequency
df=fs/(N-1);
f=-fs/2:df:fs/2;

ytran = abs(fft(yy)); % compute the FFT transform of the signal amplitudes

plot(f,ytran) % plot the phases versus frequency
f= transpose(f); % put in single column format to save into ASCII file

fft_out = fft_in;  % create an array of similar dimensions to create output text file of (f, fft)
fft_out(1:1:n,1) = f;  % populate it with frequency data in column 1
fft_out(1:1:n,2) = ytran;  % and output FFT data in column 2
save -ascii -double -tabs fftout.txt fft_out;
