% DFT Symmetry Relations for Real Odd Sequences

N = 256; % Number of points in the sequence

% Real Odd Sequence
x_odd = randn(1, (N-2)/2);
x_odd = [0, x_odd, -fliplr(x_odd)]; % Generating a real odd sequence
X_odd = fft(x_odd); % DFT of the real odd sequence

% Symmetry Check
tolerance = 1e-10; % Tolerance to check for equality within numerical precision

% Real Odd Sequence Symmetry: X(k) = -conj(X(N-k))
odd_symmetry = all(abs(X_odd + conj(X_odd([1, end:-1:2]))) < tolerance);

% Display Result
fprintf('Real Odd Sequence Symmetry: %d\n', ~odd_symmetry); % 
