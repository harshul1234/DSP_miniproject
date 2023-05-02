% DFT Symmetry Relations for Real Even Sequences

N = 256; % Number of points in the sequence

% Real Even Sequence
x_even = randn(1, N/2);
x_even = [x_even, fliplr(x_even)]; % Generating a real even sequence
X_even = fft(x_even); % DFT of the real even sequence

% Symmetry Check
tolerance = 1e-10; % Tolerance to check for equality within numerical precision

% Real Even Sequence Symmetry: X(k) = conj(X(N-k))
even_symmetry = all(abs(X_even - conj(X_even([1, end:-1:2]))) < tolerance);

% Display Result
fprintf('Real Even Sequence Symmetry: %d\n', even_symmetry);
