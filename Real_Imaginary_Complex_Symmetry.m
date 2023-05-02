% DFT Symmetry Relations for Real, Imaginary, and Complex Sequences

N = 256; % Number of points in the sequence

% Real Sequence
x_real = randn(1, N); % Generating a random real sequence
X_real = fft(x_real); % DFT of the real sequence

% Imaginary Sequence
x_imag = 1j * randn(1, N); % Generating a random imaginary sequence
X_imag = fft(x_imag); % DFT of the imaginary sequence

% Complex Sequence
x_complex = randn(1, N) + 1j * randn(1, N); % Generating a random complex sequence
X_complex = fft(x_complex); % DFT of the complex sequence

% Symmetry Check
tolerance = 1e-10; % Tolerance to check for equality within numerical precision

% Real Sequence Symmetry: X(k) = conj(X(N-k)), where N is the number of points in the sequence
real_symmetry = all(abs(X_real - conj(X_real([1, end:-1:2]))) < tolerance);

% Imaginary Sequence Symmetry: X(k) = -conj(X(N-k)), where N is the number of points in the sequence
imag_symmetry = all(abs(X_imag + conj(X_imag([1, end:-1:2]))) < tolerance);

% Complex Sequence Symmetry: No specific symmetry relation

% Display Results
fprintf('Real Sequence Symmetry: %d\n', real_symmetry);
fprintf('Imaginary Sequence Symmetry: %d\n', imag_symmetry);
